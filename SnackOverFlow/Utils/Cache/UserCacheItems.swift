//
//  UserCacheItems.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 25.11.2022.
//

import Foundation

protocol UserCacheProtocol {
    func read(key: UserCacheKeys) -> String
    func save(key: UserCacheKeys,value : String)
    func remove(key: UserCacheKeys)
}

struct UserDefaultCache : UserCacheProtocol { }

extension UserCacheProtocol{
    func read(key: UserCacheKeys) -> String{
        guard let value = UserDefaults.standard.object(forKey: key.rawValue) as? String else { return "" }
        return value
    }
    func save(key: UserCacheKeys, value: String){
        UserDefaults.standard.set(key.rawValue, forKey: value)
    }
    
    func remove(key: UserCacheKeys) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}

enum UserCacheKeys : String{
    case onBoard = "onBoard"
}

