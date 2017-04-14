//
//  ViewController.swift
//  Algorithm
//
//  Created by 林逸凡 on 2017/3/13.
//  Copyright © 2017年 Ivan.lin. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var arraySizeTextField: NSTextField!
    @IBOutlet weak var formatter: NumberFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatter.usesGroupingSeparator = false
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func generateArray(_ sender: NSButton) {
        let size = arraySizeTextField.intValue
        if size <= 0 {
            return
        }
        
        var array = Array<Int>()
        
        for _ in 0..<size {
            let value = arc4random() % UInt32(size)
            array.append(Int(value))
        }
        
        print("Array Count: ", array.count, "\n")
      //  runSort(array: &array)
    }
    
    func runSort(array: inout Array<Int>) {
        var array1 = array
        var array2 = array
        var array3 = array
        var array4 = array
        
        bubbleSort(array: &array1)
        insertionSort(array: &array2)
        cocktailSort(array: &array3)
        quickSort(array: &array4)
    }
}

