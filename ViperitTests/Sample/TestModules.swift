//
//  TestModules.swift
//  Viperit
//
//  Created by Ferran Abelló on 20/03/2017.
//  Copyright © 2017 Ferran Abelló. All rights reserved.
//

import Viperit

enum TestModules: String, ViperitModule {
    case sample
    case codeModule
    case xibModule
    case swiftUI
    case swiftUIWithEnv
    
    var viewType: ViperitViewType {
        switch self {
        case .swiftUI, .swiftUIWithEnv: return .swiftUI
        case .codeModule: return .code
        case .xibModule: return .nib
        default: return .storyboard
        }
    }
}
