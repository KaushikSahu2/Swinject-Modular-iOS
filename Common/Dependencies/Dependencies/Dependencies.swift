//
//  Dependencies.swift
//  Dependencies
//
//  Created by Kaushik Sahu on 17/05/2021.
//  Copyright © 2021 Microsoft. All rights reserved.
//

import Swinject

public final class Dependencies {
    public static let shared = Dependencies()
    public let container = Container()
}
