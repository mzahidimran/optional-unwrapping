//
//  Optional+Unwrapped.swift
//  AppsGenii
//
//  Created by Muhammad Zahid Imran on 9/17/19.
//  Copyright © 2019 Muhammad Zahid Imran. All rights reserved.
//

import Foundation

infix operator ->>

extension Optional {
    
    
    public static func ->> (lhs: Wrapped?, rhs: (Wrapped)->Void) -> Void
    {
        if let lh = lhs {
            rhs(lh)
        }
    }
    
    public static func ->> (lhs: Wrapped?, rhs: inout Wrapped) -> Void
    {
        if let lh = lhs {
            rhs = lh
        }
    }
    
}
