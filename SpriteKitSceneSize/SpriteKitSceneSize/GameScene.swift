//
//  GameScene.swift
//  SpriteKitSceneSize
//
//  Created by Tom Kier on 9/25/16.
//
//  Copyright 2016 Endless Wave Software LLC
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        let backgroundImage = SKSpriteNode(imageNamed: "background")
        backgroundImage.position = CGPoint(x:self.frame.midX, y:self.frame.midY)
        self.addChild(backgroundImage)

        let score = SKLabelNode(fontNamed:"HelveticaNeue-Bold")
        score.text = "Score: 10,000"
        score.fontColor = UIColor.red
        score.fontSize = 45
        score.horizontalAlignmentMode = .left
        score.verticalAlignmentMode = .top
        score.zPosition = 10
        score.position = positionFromTop(CGPoint(x: 30.0, y: 25.0))
        self.addChild(score)

        let pauseButton = SKSpriteNode(imageNamed: "pause")
        pauseButton.zPosition = 10
        pauseButton.position = positionFromBottom(CGPoint(x: 1055.0, y: 45.0))
        self.addChild(pauseButton)
    }
       
    override func update(_ currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
