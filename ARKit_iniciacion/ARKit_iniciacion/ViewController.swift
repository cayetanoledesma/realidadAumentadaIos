//
//  ViewController.swift
//  ARKit_iniciacion
//
//  Created by estech on 22/3/23.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    
    let configuration = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        //esta dos funciones se meten dentro del array y sirven para ver el origen del mundo o las coordenadas y dinde nos encontramos
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        self.sceneView.session.run(configuration)
        self.dibuja()
        
        self.sceneView.autoenablesDefaultLighting = true
        
    }
    
    func dibuja(){
        let node = SCNNode()
        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        node.position = SCNVector3( 0, 0, -1)
        
        self.sceneView.scene.rootNode.addChildNode(node)
    }


}



