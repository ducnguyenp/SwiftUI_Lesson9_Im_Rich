import SwiftUI

struct DiceRole: View {
    @State var leftDiceNumber: Int = 1
    @State var rightDiceNumner: Int = 2

    init() {
        print("Xay lai")
    }

    var body: some View {
        ZStack {
            Image("backgroundDiceRole").resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Text("\(leftDiceNumber)")
                Image("diceeLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumner)
                }
                .padding(.horizontal, 30)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1 ... 6)
                    self.rightDiceNumner = Int.random(in: 1 ... 6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(.red)
                .cornerRadius(20)
            }
        }
    }
}

struct DiceView: View {
    var n: Int

    init(n: Int) {
        self.n = n
        print("Goi lai")
    }
    
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceRole_Previews: PreviewProvider {
    static var previews: some View {
        DiceRole()
    }
}
