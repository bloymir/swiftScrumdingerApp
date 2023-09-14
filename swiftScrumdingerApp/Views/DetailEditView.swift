
import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form{
            title
            asistentes
            
        }
    }
    
    var title: some View {
        Section(header: Text("Información de la reunión")) {
            TextField("Titulo", text: $scrum.title)
            HStack{
                Slider(value: $scrum.lengthInMinutesAsADouble, in: 5...30, step: 1) {
                    Text("Duración")
                }
                .accessibilityValue("\(scrum.lengthInMinutes) minutos")
                Spacer()
                Text("\(scrum.lengthInMinutes) minutos")
                    .accessibilityHidden(true)
            }
            ThemePicker(selection: $scrum.theme)
        }
    }
    
    var asistentes: some View{
        Section(header: Text("Asistentes")) {
            ForEach(scrum.attendees) { atendee in
                Text(atendee.name)
            }.onDelete { index in
                scrum.attendees.remove(atOffsets: index)
            }
            HStack{
                TextField("Nuevo asistente", text: $newAttendeeName)
                Button(action:{
                    withAnimation {
                        let attendee = DailyScrum.Attendee(name: newAttendeeName)
                        scrum.attendees.append(attendee)
                        newAttendeeName = ""
                    }
                }){
                    Image(systemName: "plus.circle.fill")
                        .accessibilityLabel("Agregar asistente")
                }
                .disabled(newAttendeeName.isEmpty ? true : false)
                
            }
            
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
