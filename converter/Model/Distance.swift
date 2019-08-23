//
//  Disnance.swift
//  converter
//
//  Created by Ford Pass on 8/4/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation
import SnapKit

class DWConverter {

    var userValue: Float
    let distanceRatio: Float
    let weightRatio: Float

    
    init() {
        userValue = 0.0
        distanceRatio = 1.609344
        weightRatio = 0.45359237
        
    }
    
    func miles2km () -> Float{
        
        return (userValue * distanceRatio)
    
    }
    
    func km2miles () -> Float {
        return ( userValue / distanceRatio)
    
    }
    
    func lb2kg () -> Float {
        
        return ( userValue / weightRatio)
        
    }
    
    func kg2lb () -> Float{
    
    return (userValue * weightRatio)
    }
    
}
