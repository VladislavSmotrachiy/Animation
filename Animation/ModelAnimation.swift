//
//  ModelAnimation.swift
//  Animation
//
//  Created by ErrorV9 on 28.04.2021.
//

import Spring

struct Animation {
    
    let perset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension Animation {
    
    static func getAnimation() -> [Animation] {
        var animations: [Animation] = []
    
        let perset = Spring.AnimationPreset.allCases.shuffled()
        let curve = Spring.AnimationCurve.allCases.shuffled()
        
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
