//
//  ViewController.swift
//  DummyXPC
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var myTextLabel: NSTextField!

    func funcGenerator () -> (PersonWrapper!) -> (){
        func myFuncToShowStuff(person: PersonWrapper!){
            self.myTextLabel.stringValue = person.name + " Title:" + person.title
            println("Man received")
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

