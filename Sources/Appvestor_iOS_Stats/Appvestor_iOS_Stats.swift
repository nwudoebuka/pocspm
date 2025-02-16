// The Swift Programming Language
// https://docs.swift.org/swift-book
@_exported import AppvestorStatsFramework
import Foundation

@available(iOS 13.0, *)
public actor AppvestorStats {
    public static let shared = AppvestorStats()  // Shared instance
    
    public func initialize(appID: String, accountID: String) {
            setAppId(appID)
            setAccountID(accountID)
            debugPrint("\(APPVESTOR_STATS): Initialized")
    }
    public func initializeFramework() {
       /* let frameworkInstance = AppvestorStatsFramework() */
         debugPrint("Appvestor_iOS_Stats initialized")
     }
    public func setAppId(_ appId: String) {
        KeychainHelper.save(key: "APP_ID", value: appId)
        debugPrint("\(APPVESTOR_STATS): App ID set to \(getAppId() ?? "<not set>")")
    }
    
    public func setAccountID(_ accountID: String) {
        KeychainHelper.save(key: ACCOUNT_ID, value: accountID)
        debugPrint("\(APPVESTOR_STATS): Account ID set to \(getAccountID() ?? "<not set>")")
    }
    
    public func getAppId() -> String? {
        return KeychainHelper.retrieve(key: APP_ID)
    }

    public func getAccountID() -> String? {
        return KeychainHelper.retrieve(key: ACCOUNT_ID)
    }
}
