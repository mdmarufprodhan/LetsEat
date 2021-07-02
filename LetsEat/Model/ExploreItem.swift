//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Md Maruf Prodhan on 2/7/21.
//

import Foundation

struct ExploreItem {
    
    var name  : String
    var image : String
    
}

let myExploreitem = ExploreItem(name: "All", image: "all.png")

extension ExploreItem{
    init(dict:[String: AnyObject]) {
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
