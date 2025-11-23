import SwiftUI

struct BatteryCard: View {
    let soc: Double
    let power: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Batterie")
                .font(.headline)
            Text("SOC: \(Int(soc))%")
                .font(.subheadline)
            Text("\(Int(power)) W")
                .font(.system(size: 40, weight: .bold))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.green.opacity(0.2))
        .cornerRadius(16)
        .padding(.horizontal)
    }
}
