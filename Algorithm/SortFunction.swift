//
//  BubbleSort.swift
//  Algorithm
//
//  Created by 林逸凡 on 2017/3/13.
//  Copyright © 2017年 Ivan.lin. All rights reserved.
//

import Foundation

// Basic Function

func swap( array: inout Array<Int>, left: Int, right: Int) {
    let temp = array[left]
    array[left] = array[right]
    array[right] = temp
}

// Bubble Sort

func bubbleSort(array: inout Array<Int>) {
    if (array.isEmpty) {
        return
    }
    
    for startIndex in 0..<array.count-1 {  //Here ... means <=, ..< means <
        for index in 0..<array.count-startIndex-1 {
            if array[index] > array[index+1] {
                swap(array: &array, left: index, right: index+1)
            }
        }
    }
}

// Quick Sort

func quickSort(array: inout Array<Int>) {
    
}

// Radix Sort

func radixSort(array: inout Array<Int>) {
    
}
