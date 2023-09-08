

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List{
            Section(header: Text("Información de la reunión")) {
                Label("Iniciar reunión", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(scrum.theme.accentColor)
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
