
import SwiftUI

struct InfoView: View {
    let text: String
    let icon: String
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: icon).foregroundColor(.green)
                Text(text)
            })
            .padding(.horizontal, 20)
            .padding(.bottom, 20)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Helloo", icon: "phone.fill").previewLayout(.sizeThatFits)
    }
}
