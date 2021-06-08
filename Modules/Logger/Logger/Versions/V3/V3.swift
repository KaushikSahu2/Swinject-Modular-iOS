//
//  V2.swift
//  Logger
//
//  Created by Kaushik Sahu on 07/06/21.
//

import Foundation
import Dependencies

public class LoggerModuleV3: LoggerModule {
    
    public override func writeLogs(log: String) {
        print("[Logger - v3] : \(log)")
    }
    
    public func sendLogs() {
        print("[Logger - v3] : sending logs to server using <\(getLoggerIdentity())>")
    }
}

extension LoggerModuleV3 {
    override func getLoggerIdentity() -> String {
        return "FSLog"
    }
}
