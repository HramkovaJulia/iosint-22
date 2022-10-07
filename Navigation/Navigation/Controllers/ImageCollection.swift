//
//  ImageCollection.swift
//  Navigation
//
//  Created by Artyom Prima on 29.09.2022.
//

import Foundation

struct ImageCollection {

    var image: String
}

extension ImageCollection {
    
    static func make() ->[ImageCollection] {
       [ImageCollection(image: "cat1"),
        ImageCollection(image: "cat2"),
        ImageCollection(image: "cat3"),
        ImageCollection(image: "cat4"),
        ImageCollection(image: "cat5"),
        ImageCollection(image: "кот6"),
        ImageCollection(image: "кот7"),
        ImageCollection(image: "кот8"),
        ImageCollection(image: "кот9"),
        ImageCollection(image: "кот10"),
        ImageCollection(image: "кот11"),
        ImageCollection(image: "кот12"),
        ImageCollection(image: "кот13"),
        ImageCollection(image: "кот14"),
        ImageCollection(image: "кот15"),
        ImageCollection(image: "кот16"),
        ImageCollection(image: "кот17"),
        ImageCollection(image: "кот18"),
        ImageCollection(image: "кот19"),
        ImageCollection(image: "кот20"),
       ]
    }
}
