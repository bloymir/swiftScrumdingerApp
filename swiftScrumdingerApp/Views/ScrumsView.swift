
import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack{
            List(scrums){ scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                        
                }.listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Scrums Diarios")
            .toolbar{
                Button(action:{
                    //
                }){
                    Image(systemName: "plus")
                }

            }
        }
        
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
