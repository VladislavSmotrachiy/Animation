//
//  ModelAnimation.swift
//  Animation
//
//  Created by ErrorV9 on 28.04.2021.
//

import Foundation

struct Animation {
    
    let perset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var discription: String {
        """
            Perset: \(perset)
            Curve: \(curve)
            Force:\(String(format: "%.02f", force))
            Duration:\(String(format: "%.02f", duration))
            Daley:\(String(format: "%.02f", delay))
        """
    }
}

extension Animation {
    
    static func getAnimation() -> [Animation] {
        var animations: [Animation] = []
    
        let perset = DataManager.shared.perset.shuffled()
        let curve = DataManager.shared.cure.shuffled()
        
        for index in 0...10 {
            let animation = Animation(
                perset: perset[index].rawValue,
                curve: curve[index].rawValue,
                force: .random(in: 0.5..<1.25),
                duration: .random(in: 0.5..<0.9),
                delay: .random(in: 0.2..<1.0)
            )
            animations.append(animation)
        }
        return animations
    }
}
