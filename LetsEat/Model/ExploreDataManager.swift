//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Md Maruf Prodhan on 2/7/21.
//

import Foundation

class ExploreDataManager {
    fileprivate func loadData()->[[String: AnyObject]]{
        guard let path = Bundle.main.path(forResource:"ExploreData", ofType : "plist") , let items  = NSArray(contentsOfFile:path)
        
        else {
            return [[:]]
        }
        
        return items as! [[String: AnyObject]]
    }
    
    func fetch(){
        for data in loadData() {
            print(data)
        }
    }
    
}
