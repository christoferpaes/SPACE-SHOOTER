//
//  GameViewController.swift
//  SpaceShooter
//
//  Created by Christofer Patrick Paes on 4/21/19.
//  Copyright © 2019 Christofer Patrick Paes RSC. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit



class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = TitleScene(fileNamed: "TitleScene") {
            
     let skView = self.view as! SKView
            
            
            skView.ignoresSiblingOrder = true
            scene.scaleMode = .aspectFill
            skView.presentScene(scene)
                }
            }
        }


    //override var shouldAutorotate: Bool {
 //       return true
  //  }

    //override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
       // if UIDevice.current.userInterfaceIdiom == .phone {
            //return .allButUpsideDown
      //  } //else {
    //        return .all
      //  }
   // }

  //  override var prefersStatusBarHidden: Bool {
 //       return true
 //   }

