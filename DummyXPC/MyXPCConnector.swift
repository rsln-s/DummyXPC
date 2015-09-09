//
//  MyXPCConnector.swift
//  DummyXPC
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Foundation

class MyXPCConnector: NSObject {

    private class func connectionToService() -> NSXPCConnection {
        let result = NSXPCConnection(serviceName: "com.mipt.DummyService")
        result.remoteObjectInterface = NSXPCInterface(withProtocol: DummyServiceProtocol.self)
        return result
    }
    
    var objectProxy: DummyServiceProtocol {
        return self.connection.remoteObjectProxy as! DummyServiceProtocol
    }

    
    struct Singleton {
        static let instance = MyXPCConnector()
    }
    class var sharedInstance: MyXPCConnector { return Singleton.instance }

    private let connection = MyXPCConnector.connectionToService()
    override init() {
        super.init()
        self.connection.resume()
    }
    deinit {
        self.connection.invalidate()
    }
}