
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
            HStack{
                VStack (alignment: .leading){
                    Text("Segundos Transcurridos")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack (alignment: .trailing){
                    Text("Segundos Restantes")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
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

            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
