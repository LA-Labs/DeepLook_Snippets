//
//  Face_Encoding.swift
//  DeepLook_Demo
//
//  Created by Amir Lahav on 19/02/2022.
//

import DeepLook
import UIKit

func faceEncoding() {
    
    let image = UIImage(named: "angelina")!
    
    // For each face in the photo we get face encoding ([Double])
    let faceEncoding = DeepLook.faceEncodings(image)[0]
}
