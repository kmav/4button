//
//  NetworkManager.swift
//  4-button
//
//  Created by Konstantinos M on 04/04/2019.
//  Copyright © 2019 Nikatec. All rights reserved.
//

import Foundation
import Reachability

final class NetworkManager {
    
    static let shared = NetworkManager()
    var reachability: Reachability?
    
    static var isConnected: Bool {
        if self.shared.reachability != nil {
            self.shared.reachability = Reachability()
        }
        
        return self.shared.reachability?.connection != .none
    }
    
    func start() {
        reachability = Reachability()
    }
    
}
