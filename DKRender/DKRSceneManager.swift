//
//  DKRSceneManager.swift
//  DrakkenEngine
//
//  Created by Allison Lindner on 03/06/16.
//  Copyright © 2016 Allison Lindner. All rights reserved.
//

import Foundation

public class DKRSceneManager {
	internal var sceneGraphs: [String : DKRSceneGraph]
	internal var currentScene: String?
	
	internal init() {
		sceneGraphs = [:]
	}

	public func addScene(name: String, inout sceneGraph: DKRSceneGraph) {
		sceneGraphs[name] = sceneGraph

		if currentScene == nil {
			currentScene = name
		}
	}

	public func presentScene(name: String) {
		if sceneGraphs[name] != nil {
			currentScene = name
		}
	}
	
	internal func changeSize(width: Float, _ height: Float) {
		if currentScene != nil {
			sceneGraphs[currentScene!]?.changeSize(width, height)
		}
	}
}