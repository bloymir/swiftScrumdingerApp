
import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    
    var body: some View {
        Form{
            Section(header: Text("Información de la reunión")) {
                TextField("Titulo", text: $scrum.title)
                HStack{
                    Slider(value: $scrum.lengthInMinutesAsADouble, in: 5...30, step: 1) {
                            Text("Duración")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutos")
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
