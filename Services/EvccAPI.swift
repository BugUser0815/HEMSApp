import Foundation

class EvccAPI: ObservableObject {
    private let baseUrl: URL
    
    init(ipAddress: String) {
        self.baseUrl = URL(string: "http://\(ipAddress):7070/api/state")!
    }
    
    func fetchState() async throws -> EvccState {
        let (data, _) = try await URLSession.shared.data(from: baseUrl)
        let decoded = try JSONDecoder().decode(EvccState.self, from: data)
        return decoded
    }
}
