//
//  Compare_faces.swift
//  DeepLook_Demo
//
//  Created by Amir Lahav on 19/02/2022.
//

import DeepLook
import UIKit

func compareFaces() {
    
    // load 2 images to compare.
    let known_image = UIImage(named: "angelina.jpg")!
    let unknown_image = UIImage(named: "unknown.jpg")!

    // encode faces in both images.
    let angelina_encoding = DeepLook.faceEncodings(known_image)[0] // array of encoding faces.
    let unknown_encoding = DeepLook.faceEncodings(unknown_image) // array of encoding faces.

    // return result for each faces in the source image.
    // threshold default is set to 0.6.
    let result = DeepLook.compareFaces(unknown_encoding,
                                       faceToCompare: angelina_encoding) // [Bool]
}
