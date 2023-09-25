
import SwiftUI

struct ContentView: View {
    
    @Binding var scrum: DailyScrum
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(scrum.theme.mainColor)
            VStack {
               
                Circle()
                    .strokeBorder(lineWidth: 24)
                HStack{
                    Text("Orador 1 de 3")
                    Spacer()
                    Button(action:{
                        //
                    }){
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Siguiente orador")

                }
            }
            
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}
