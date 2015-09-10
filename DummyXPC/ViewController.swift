//
//  ViewController.swift
//  DummyXPC
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Cocoa
//import CatWrapperKit

class ViewController: NSViewController {
    
    @IBOutlet weak var myTextLabel: NSTextField!

    func funcGenerator () -> (CatWrapper!) -> (){
        func myFuncToShowStuff(cat: CatWrapper!){
            self.myTextLabel.stringValue = (cat.name as String) + " Title:" + (cat.title as String)
            println("Man received")
            println(cat.name)
        }
        return myFuncToShowStuff
    }
    
    @IBAction func generateButtonPressed(sender: AnyObject) {
        MyXPCConnector.sharedInstance.objectProxy.getACat(funcGenerator())
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

