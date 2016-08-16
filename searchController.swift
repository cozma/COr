//
//  searchController.swift
//  COr
//
//  Created by Yeshiwas, Dagmawi on 8/10/16.
//  Copyright © 2016 Yeshiwas, Dagmawi. All rights reserved.
//

import Cocoa


class searchController: NSViewController {
    
    @IBOutlet weak var searchBox: NSSearchField!
    
    let appDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
    
}

let abbrURL: NSURL = [#FileReference(fileReferenceLiteral: "abbr.json")#]

let data = NSData(contentsOfURL: abbrURL)!


// MARK: Actions

extension searchController {
    
    
    @IBAction func searchTextChange(sender: NSSearchField) {
        
        do {

            let json = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)
            
//            print(json)
            
            for item in json["abbreviations"] as! NSArray  {
                if let abbr = item["abbr"] as? String,
                    def = item["def"] as? String {
                    if abbr == sender.stringValue {

                        print ("\(def)")
                    }
//                    print ("Found Term: \(abbr) Defined as: \(def)")
                }
            }

        } catch {
            print("error serializing JSON: \(error)")
        }
        
//        print("Searching...")
    }
    
    @IBAction func quit(sender: NSButton) {
        NSApplication.sharedApplication().terminate(self)
    }
    
    @IBAction func hide(sender: NSButton) {
        appDelegate.popover.performClose(sender)
    }
    
    @IBAction func help(sender: NSButton) {
        
    }
}