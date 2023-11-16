
import SwiftUI
import RiveRuntime

struct ContentView: View {

    @State var isOpen1 = false

    let button = RiveViewModel(fileName: "menu_button", stateMachineName: "State Machine", autoPlay: false)

    var body: some View {

        VStack {
            Text("Hello, World")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Spacer()

            button.view()
                .mask(Circle())
                .shadow(radius: 10)
                .onTapGesture {
                    button.setInput("isOpen", value: isOpen1)
                    isOpen1.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
