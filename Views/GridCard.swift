import SwiftUI

struct GridCard: View {
    let power: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Netzbezug")
                .font(.headline)
            Text("\(Int(power)) W")
                .font(.system(size: 40, weight: .bold))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.blue.opacity(0.2))
        .cornerRadius(16)
        .padding(.horizontal)
    }
}
