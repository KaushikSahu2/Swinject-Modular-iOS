//
//  PushModule.swift
//  Push
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Dependencies
import Swinject

public class PushModule: PushModuleProtocol {

    public init() {}
    
    public func pushService() -> String {
        print("[Push] : Fetching Push service = <\(getPushIdentity())>")
        return getPushIdentity()
    }
    
    public func registerForPushNotification() {
        let deviceToken = "1234567890"
        print("-----------------------------------------------------------------------------")
        print("[Push] : registering Device for push notification to <\(getPushIdentity())>")
        let storageModule = Dependencies.shared.storageModule
        if storageModule.getData() != deviceToken {
            storageModule.saveData(data: deviceToken)
        }
        print("-----------------------------------------------------------------------------")
    }
    
    public func unregisterForPushNotification() {
        let deviceToken = "1234567890"
        print("-----------------------------------------------------------------------------")
        print("[Push] : unregistering Device for push notification to <\(getPushIdentity())>")
        let storageModule = Dependencies.shared.storageModule
        storageModule.removeData(data: deviceToken)
        print("-----------------------------------------------------------------------------")
    }
    
    public func pushNotificationReceived() {
        let samplePushData = "ABCD"
        print("-----------------------------------------------------------------------------")
        print("[Push] : Push notification received from <\(getPushIdentity())>")
        let storageModule = Dependencies.shared.storageModule
        storageModule.saveData(data: samplePushData)
        print("-----------------------------------------------------------------------------")
    }
}

extension PushModule {
    private func getPushIdentity() -> String {
        return "APNS"
    }
}
