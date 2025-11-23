import SwiftUI

struct DashboardView: View {
    @StateObject var vm = DashboardViewModel(ip: "192.168.178.50")
    
    var body: some View {
        NavigationView {
            ScrollView {
                if let s = vm.state {
                    SolarCard(power: s.pvPower)
                    GridCard(power: s.gridPower)
                    
                    if let soc = s.batterySOC {
                        BatteryCard(soc: soc, power: s.batteryPower ?? 0)
                    }
                    
                    if let charge = s.chargePower {
                        WallboxCard(power: charge)
                    }
                } else {
                    ProgressView("Lade Daten…")
                }
            }
            .navigationTitle("HEMS Dashboard")
            .refreshable {
                await vm.refresh()
            }
        }
    }
}
