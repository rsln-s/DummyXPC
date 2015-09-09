//
//  CatWrapper.swift
//  DummyXPC
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Foundation

@objc (CatWrapper) class CatWrapper:NSSecureCoding{
    var name:String
    var puffyness:Int
    
    init(name:String, puffyness:Int){
        self.name = name
        self.puffyness = puffyness
    }
    
    required convenience init(coder decoder:NSCoder){
//        let name = decoder.decodeObjectOfClass(String.self, forKey: "name")
        let name = decoder.decodeObjectForKey("name") as! String
//        let puffyness = decoder.decodeObjectOfClass(Int.self, forKey: "puffyness")
        let puffyness = decoder.decodeObjectForKey("puffyness") as! Int
        self.init(name: name, puffyness: puffyness)
    }
    
    class func supportsSecureCoding() -> Bool {
        return true
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.name, forKey: "name")
        aCoder.encodeObject(self.puffyness, forKey: "puffyness")
    }
}