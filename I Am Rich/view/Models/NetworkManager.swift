
import Foundation

class NetWorkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let sesson = URLSession(configuration: .default)
            let task = sesson.dataTask(with: url) { data, response, error in
                if  error == nil {
                   let decoded = JSONDecoder()
                    if let safeData = data {
                        
                        do {
                            let result = try decoded.decode(PostResut.self, from: safeData)
                            DispatchQueue.main.sync {
                                self.posts = result.hits
                            }
                        } catch {
                         print("Fetch post data failed", error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
