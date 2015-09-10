//
//  CatWrapper.swift
//  DummyXPC
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Foundation

@objc (CatWrapper) public class CatWrapper:NSSecureCoding{
    public var name:NSString
    public var title:NSString
    
    public init(name:NSString, title:NSString){
        self.name = name
        self.title = title
    }
    
    required convenience public init(coder decoder:NSCoder){
        let name = decoder.decodeObjectOfClass(NSString.self, forKey: "name") as! NSString
//        let name = decoder.decodeObjectForKey("name") as! String
        let title = decoder.decodeObjectOfClass(NSString.self, forKey: "title") as! NSString
//        let puffyness = decoder.decodeObjectForKey("puffyness") as! Int
        self.init(name: name, title: title)
    }
    
    public class func supportsSecureCoding() -> Bool {
        return true
    }
    
    public func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.name, forKey: "name")
        aCoder.encodeObject(self.title, forKey: "title")
    }
}