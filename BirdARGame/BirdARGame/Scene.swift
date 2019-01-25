//
//  Scene.swift
//  BirdARGame
//
//  Created by 윤지영 on 26/01/2019.
//  Copyright © 2019 윤지영. All rights reserved.
//

import SpriteKit
import ARKit

class Scene: SKScene {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        guard let sceneView = self.view as? ARSKView else { return }
        
        if let touchLocation = touches.first?.location(in: sceneView) {
            if let hit = sceneView.hitTest(touchLocation, types: .featurePoint).first {
                sceneView.session.add(anchor: ARAnchor(transform: hit.localTransform))
            }
        }
    }

}
