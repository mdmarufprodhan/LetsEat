//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Md Maruf Prodhan on 2/7/21.
//

import Foundation

class ExploreDataManager {
    fileprivate var item  : [ExploreItem] = []
    
    
    fileprivate func loadData()->[[String: AnyObject]]{
        guard let path = Bundle.main.path(forResource:"ExploreData", ofType : "plist") , let items  = NSArray(contentsOfFile:path)
        
        else {
            return [[:]]
        }
        
        return items as! [[String: AnyObject]]
    }
    
    func numberOfItems()->Int {
        return item.count
    }
    
    func explore(at index : IndexPath)->ExploreItem {
        return item[index.item]
    }
    
    func fetch(){
        for data in loadData() {
            item.append(ExploreItem(dict:data))
            
        }
    }
    
    
}
