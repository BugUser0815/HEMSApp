import SwiftUI

struct SolarCard: View {
    let power: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("PV-Produktion")
                .font(.headline)
            Text("\(Int(power)) W")
                .font(.system(size: 40, weight: .bold))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.yellow.opacity(0.2))
        .cornerRadius(16)
        .padding(.horizontal)
    }
}
