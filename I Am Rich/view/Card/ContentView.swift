import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.16, green: 0.50, blue: 0.73).edgesIgnoringSafeArea(.all)
            VStack {
                Image("SteveJob")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Nguyen Phuoc Duc")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(Font.custom("TiltPrism-Regular", size: 40))
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "0389072006", icon: "phone.fill")
                InfoView(text: "duc@gmail.com", icon: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
