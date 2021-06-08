//
//  V1.swift
//  Logger
//
//  Created by Kaushik Sahu on 07/06/21.
//

import Foundation
import Dependencies

public class LoggerModuleV2: LoggerModule {
    
    public override func writeLogs(log: String) {
        print("[Logger - v2] : \(log)")
    }
}

extension LoggerModuleV2 {
    override func getLoggerIdentity() -> String {
        return "CocoaLumberjack"
    }
}
