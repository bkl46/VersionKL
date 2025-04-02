import Foundation

class InstagramAccessService {
    private let userDefaults = UserDefaults.standard
    private let accessKey = "instagram_access_enabled"
    
    var isInstagramAccessEnabled: Bool {
        get {
            return userDefaults.bool(forKey: accessKey)
        }
    }
    
    func toggleInstagramAccess(isEnabled: Bool) {
        userDefaults.set(isEnabled, forKey: accessKey)
        userDefaults.synchronize()
        
        // In a real implementation, this would integrate with iOS Screen Time API
        // or other system-level restrictions
        NotificationCenter.default.post(
            name: .instagramAccessChanged,
            object: nil,
            userInfo: ["isEnabled": isEnabled]
        )
    }
}

extension Notification.Name {
    static let instagramAccessChanged = Notification.Name("instagramAccessChanged")
} 