//
//  Post.swift
//  StorageService
//
//  Created by Artyom Prima on 10.10.2022.
//

import Foundation

public struct Post {
    
    public var author: String
    public var description: String
    public var image: String
    public  var likes: Int
    public var views: Int
}

public extension Post {
    static func make() -> [Post] {
        
        [Post(author: "Boris - Balinese cat", description: "Животные короткошерстных пород кошек стройнее и активнее длинношерстных. У большинства кошек по 4 когтя на задних лапах и по 5 на передних. Когти на передних лапах обычно острее, чем на задних.", image: "кот1", likes: 2043, views: 2533),
         Post(author: "Sam - Himalayan cat", description: "Зрение у кошек бинокулярное с углом охвата в 200° (у человека только 180°). По остроте зрение кошки значительно превосходит человеческое.", image: "кот2", likes: 5033, views: 7033),
         Post(author: "Zeus - Japanese Bobtail cat", description: "Окрас очень разнообразен и включает в себя широкий спектр цветов: черный, белый со многими оттенками красного, огненно-рыжего, коричневого и серого. Кошка может быть одноцветной или иметь на основном фоне пятна или штриховку других цветов", image: "кот3", likes: 1223, views: 5043),
         Post(author: "Bender - American Bobtail  cat", description: "У домашней кошки округлая голова, короткая морда, с достаточно широкими челюстями и острыми хищными зубами. Глаза большие, уши прямостоячие.", image: "кот4", likes: 1003, views: 2603)
        ]
        
    }
    
   
}


