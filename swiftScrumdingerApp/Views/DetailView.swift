

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    @State private var isPresentingEditView = false
    
    var body: some View {
        List{
            Section(header: Text("Información de la reunión")) {
                NavigationLink(destination: ContentView()) {
                    Label("Iniciar reunión", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack{
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutos")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Tema", systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name)")
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Oradores")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
        .toolbar{
            Button(action:{
                isPresentingEditView.toggle()
            }){
                Text("Editar")
            }

        }
        
        .sheet(isPresented: $isPresentingEditView){
            NavigationStack {
                DetailEditView()
                    .navigationTitle(scrum.title)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button(action:{
                                isPresentingEditView.toggle()
                            }){
                                Text("Cancelar")
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button(action:{
                                isPresentingEditView.toggle()
                            }){
                                Text("Guardar")
                            }

                        }
                    }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
