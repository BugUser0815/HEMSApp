import Foundation

struct EvccState: Codable {
    let gridPower: Double
    let homePower: Double
    let pvPower: Double
    let batteryPower: Double?
    let batterySOC: Double?
    let chargePower: Double?
}
