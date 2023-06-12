import SwiftUI

struct HackerNew: View {
    @ObservedObject var networkManager = NetWorkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hack New")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct HackerNew_Previews: PreviewProvider {
    static var previews: some View {
        HackerNew()
    }
}
