//
//  ViewController.swift
//  BirdARGame
//
//  Created by 윤지영 on 26/01/2019.
//  Copyright © 2019 윤지영. All rights reserved.
//

import UIKit
import SpriteKit
import ARKit

class ViewController: UIViewController {
    @IBOutlet var sceneView: ARSKView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let scene = SKScene(fileNamed: "Scene") {
            sceneView.presentScene(scene)
        }
    }

}
