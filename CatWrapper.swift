//
//  CatWrapper.swift
//  DummyXPC
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Foundation

@objc (CatWrapper) public class CatWrapper:NSSecureCoding{
    var name:NSString
    var puffyness:NSString
    
    init(name:NSString, puffyness:NSString){
        self.name = name
        self.puffyness = puffyness
    }
    
    required convenience public init(coder decoder:NSCoder){
        let name = decoder.decodeObjectOfClass(NSString.self, forKey: "name") as! NSString
//        let name = decoder.decodeObjectForKey("name") as! String
        let puffyness = decoder.decodeObjectOfClass(NSString.self, forKey: "puffyness") as! NSString
//        let puffyness = decoder.decodeObjectForKey("puffyness") as! Int
        self.init(name: name, puffyness: puffyness)
    }
    
    public class func supportsSecureCoding() -> Bool {
        return true
    }
    
    public func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.name, forKey: "name")
        aCoder.encodeObject(self.puffyness, forKey: "puffyness")
    }
}