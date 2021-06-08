//
//  AppDependencies.swift
//  App
//
//  Created by Kaushik Sahu on 17/05/2021.
//  Copyright © 2021 Microsoft. All rights reserved.
//

import UIKit
import Dependencies
import Storage
import Push
import Logger
import Swinject

func setUpDependencies() {
    let container = Dependencies.shared.container
    container.register(StorageModuleProtocol.self) { _ in StorageModule() }
    container.register(PushModuleProtocol.self) { _ in PushModule() }
    container.register(LoggerModuleProtocol.self) { _ in LoggerModuleV3() }
}
 
