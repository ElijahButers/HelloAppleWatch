//
//  InterfaceController.swift
//  HelloAppleWatch WatchKit App Extension
//
//  Created by User on 3/23/16.
//  Copyright © 2016 Razeware. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var button: WKInterfaceButton!
    
    var emoji = EmojiData()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        showFortune()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func showFortune() {
        
        let peopleIndex = emoji.people.count.random()
        let natureIndex = emoji.nature.count.random()
        let objectsIndex = emoji.objects.count.random()
        let placesIndex = emoji.places.count.random()
        let symbolsIndex = emoji.symbols.count.random()
        
        button.setTitle("\(emoji.people[peopleIndex])\(emoji.nature[natureIndex])\(emoji.objects[objectsIndex])\(emoji.places[placesIndex])\(emoji.symbols[symbolsIndex])")
        
    }

    @IBAction func newFortune() {
        
    }
}

