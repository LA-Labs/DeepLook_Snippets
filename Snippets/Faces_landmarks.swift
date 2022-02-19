//
//  Faces_landmarks.swift
//  LookKit_Demo
//
//  Created by Amir Lahav on 06/04/2021.
//

import UIKit
import DeepLook

func findFacesLandmarks() {
    
    let image = UIImage(named: "angelina")!
    
    // list of face landmarks.
    let faceLandmarks = DeepLook.faceLandmarks(image)
    
    // get image size
    let imageSize =  CGSize(width: image.cgImage!.width,
                            height: image.cgImage!.height)
    
    // convert to UIKit coordinate system.
    let points = faceLandmarks.map({ landmarks in
        landmarks
            .pointsInImage(imageSize: imageSize)
            .map({ point in
                CGPoint(x: point.x,
                        y: imageSize.height - point.y)
            })
    })
    
}
