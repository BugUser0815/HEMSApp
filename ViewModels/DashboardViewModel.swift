import Foundation
import SwiftUI

@MainActor
class DashboardViewModel: ObservableObject {
    @Published var state: EvccState?
    @Published var isLoading = false
    
    private let api: EvccAPI
    
    init(ip: String) {
        self.api = EvccAPI(ipAddress: ip)
        Task { await refresh() }
    }
    
    func refresh() async {
        isLoading = true
        do {
            let newState = try await api.fetchState()
            self.state = newState
        } catch {
            print("Error: \(error)")
        }
        isLoading = false
    }
}
