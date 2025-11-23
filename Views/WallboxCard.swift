import SwiftUI

struct WallboxCard: View {
    let power: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Ladeleistung")
                .font(.headline)
            Text("\(Int(power)) W")
                .font(.system(size: 40, weight: .bold))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.orange.opacity(0.2))
        .cornerRadius(16)
        .padding(.horizontal)
    }
}
