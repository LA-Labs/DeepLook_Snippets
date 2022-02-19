//
//  Detect_object.swift
//  DeepLook_Demo
//
//  Created by Amir Lahav on 19/02/2022.
//

import DeepLook
import UIKit

func detectObjects() {
    
    let image = UIImage(named: "angelina")!
    
    // Create Object Detection request (Action).
    // Sky, flower, water etc.
    let objectDetecting = Actions.objectDetecting
    
    // Start detecting
    Detector.analyze(objectDetecting,
                     sourceImage: image) { result in
        switch result {
        case .success(let output):
            // Tags
            let tags = output
                .flatMap { $0.tags }
        case .failure(let error):
            print(error)
        }
    }
}
