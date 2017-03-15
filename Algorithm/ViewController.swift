//
//  ViewController.swift
//  Algorithm
//
//  Created by 林逸凡 on 2017/3/13.
//  Copyright © 2017年 Ivan.lin. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var array = [3, 4, 7, 1, 10, 6, 2, 19, 5, 34, 78, 45, 23, 42, 109, 984, 234, 567, 342, 10924]
        bubbleSort(array: &array)
        print(array)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

