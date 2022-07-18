import Foundation
import KindeAuthSwift

struct AuthConfigLoader {
    /// Load Kinde authentication configuration from bundled `config.json`
    static func load() -> Config? {
        do {
            let configFilePath = Bundle.main.path(forResource: "config", ofType: "json")
            let jsonString = try String(contentsOfFile: configFilePath!)
            let jsonData = jsonString.data(using: .utf8)!
            let decoder = JSONDecoder()
            let config = try decoder.decode(Config.self, from: jsonData)
            return config
        } catch {
            return nil
        }
    }
}