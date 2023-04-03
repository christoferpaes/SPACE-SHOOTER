//
//  TitleScene.swift
//  SpaceShooter
//
//  Created by Valentina Carfagno on 4/22/19.
//  Copyright © 2019 RSC. All rights reserved.
//

import Foundation
import SpriteKit



class TitleScene: SKScene {
    var btnPlay : UIButton!
    
    
    
    
    var gameTitle1 : UILabel!
    var gameTitle2 : UILabel!
    var backgroundImage : UIImageView!
    
    
    var textColorAll = UIColor(red: 0.90, green: 0.97, blue: 0.97, alpha: 1.0)
    
   
    
    override func didMove(to view: SKView) {
        setUpText()}
    
        func setUpText()
            {
            backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width:view!.frame.size.width, height:view!.frame.size.height))
            backgroundImage.image = UIImage(named: "Starfield.png")
            self.view?.addSubview(backgroundImage)
            btnPlay = UIButton(frame: CGRect(x: 100, y: 100, width: 500, height: 125))
            btnPlay.center = CGPoint(x: view!.frame.size.width/2, y: view!.frame.size.height - 150)
            btnPlay.titleLabel?.font = UIFont(name: "Copperplate", size: 150)
                btnPlay.setTitle("Play", for: UIControl.State.normal)
                btnPlay.addTarget(self, action: (#selector(TitleScene.playTheGame)), for: UIControl.Event.touchUpInside)
            self.view?.addSubview(btnPlay)
                gameTitle1 = UILabel(frame: CGRect(x: 0, y: 0, width: view!.frame.width, height: 300))
                gameTitle1!.textColor = textColorAll
                gameTitle1!.font = UIFont(name: "Copperplate", size: 110)
                gameTitle1!.textAlignment = NSTextAlignment.center
                gameTitle1!.text = "SPACE"
                
                
                self.view?.addSubview(gameTitle1)
                
                
                gameTitle2 = UILabel(frame: CGRect(x: 0, y: 100, width: view!.frame.width, height:300))
                
                gameTitle2!.textColor = textColorAll
                gameTitle2!.font = UIFont(name: "Copperplate", size: 110)
                gameTitle2!.textAlignment = NSTextAlignment.center
                gameTitle2!.text = "SHOOTER"
                self.view?.addSubview(gameTitle2)
                
                
                
                
        }
        @objc func playTheGame() {
            
            self.view?.presentScene(GameScene(), transition: SKTransition.crossFade(withDuration: 1.0))
            backgroundImage.removeFromSuperview()
            btnPlay.removeFromSuperview()
            gameTitle1.removeFromSuperview()
            gameTitle2.removeFromSuperview()
            if let scene = GameScene(fileNamed: "GameScene") {
                
                let skView = self.view! as SKView
                skView.ignoresSiblingOrder = true
                
                scene.scaleMode = . aspectFill
                skView.presentScene(scene)
            }
        }
    }
    
    
    

