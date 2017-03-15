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
        
        let array = [3, 4, 7, 1, 10, 6, 2, 19, 5, 34, 78, 45, 23, 42, 109, 984, 234]//, 567, 342, 10924, 2345, 542, 5069, 40987,8745, 4, 3, 56, 987]
        
        var array1 = array
        var array2 = array
        var array3 = array
        
        bubbleSort(array: &array1)
        insertionSort(array: &array2)
        cocktailSort(array: &array3)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

