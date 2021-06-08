//
//  Storage.swift
//  Dependencies
//
//  Created by Kaushik Sahu on 31/05/21.
//  Copyright © 2021 Microsoft. All rights reserved.
//

import Foundation
import Swinject

public protocol StorageModuleProtocol {
    func getStoreLocation() -> String
    func saveData(data: String)
    func getData() -> String
    func removeData(data: String)
}

extension Dependencies {
    public var storageModule: StorageModuleProtocol {
        return Dependencies.shared.container.resolve(StorageModuleProtocol.self)!
    }
}
