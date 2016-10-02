//
//  SKScene+Extensions.swift
//  SpriteKitSceneSize
//
//  Created by Tom Kier on 9/27/16.
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

extension SKScene {
 
    //
    // Given a point where the y property is a distance from the top of the view, 
    // returns a point in the scene coordinate system for that location.
    //
    func positionFromTop(_ pt: CGPoint) -> CGPoint {
        
        var result = pt
        result.y = viewTop() - result.y
        return result
    }
    
    //
    // Given a point where the y property is a distance from the bottom of the view,
    // returns a point in the scene coordinate system for that location.
    //
    func positionFromBottom(_ pt: CGPoint) -> CGPoint {
        
        var result = pt
        result.y += viewBottom()
        return result
    }
    
    //
    // Returns the y position of the view's top edge in the scene coordinate system
    //
    func viewTop() -> CGFloat {
        
        return convertPoint(fromView: CGPoint.zero).y
    }
    
    //
    // Returns the y position of the view's bottom edge in the scene coordinate system
    //
    func viewBottom() -> CGFloat {
        
        guard let view = view else { return 0.0 }
        
        return convertPoint(fromView: CGPoint(x: 0.0, y: view.bounds.size.height)).y
    }

}
