//
//  DataManger.swift
//  Animation
//
//  Created by ErrorV9 on 29.04.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let perset = Spring.AnimationPreset.allCases
    let cure = Spring.AnimationCurve.allCases
    
    
   private init() {}
    
}


