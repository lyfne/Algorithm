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

// Bubble Sort  -->

func bubbleSort(array: inout Array<Int>) {
    if (array.count < 2) {
        return
    }
    
    var mainOpeartionTimes = 0
    
    //Here ... means <=, ..< means <
    for startIndex in 0...array.count-2 {
        mainOpeartionTimes += 1
        for index in 0...array.count-startIndex-2 {
            mainOpeartionTimes += 1
            if array[index] > array[index+1] {
                swap(array: &array, left: index, right: index+1)
            }
        }
    }
    
    print("BubbleSort Main Operation Times: " + String(mainOpeartionTimes))
    print(array, "\n")
}

// Cocktail Sort, an improvement of Bubble Sort  --> & <--

func cocktailSort(array: inout Array<Int>) {
    if (array.count < 2) {
        return
    }
    
    var mainOpeartionTimes = 0
    var left = 0
    var right = array.count - 1
    
    while left < right {
        for indexL in left...right-1 {
            mainOpeartionTimes += 1
            if array[indexL] > array[indexL+1] {
                swap(array: &array, left: indexL, right: indexL+1)
            }
        }
        right -= 1
        for indexR in stride(from: right, through: left+1, by: -1) {
            mainOpeartionTimes += 1
            if array[indexR] < array[indexR-1] {
                swap(array: &array, left: indexR, right: indexR-1)
            }
        }
        left += 1
    }
    
    print("CocktailSort Main Operation Times: " + String(mainOpeartionTimes))
    print(array, "\n")
}

// Insertion Sort

func insertionSort(array: inout Array<Int>) {
    if (array.count < 2) {
        return
    }
    
    var mainOpeartionTimes = 0
    
    for index in 1...array.count-1 {
        mainOpeartionTimes += 1
        for backIndex in 0...index-1 {
            mainOpeartionTimes += 1
            if array[index]<array[backIndex] {
                let tmp = array[index]
                for i in stride(from: index, through: backIndex+1, by: -1) {  // move data
                    array[i] = array[i-1]
                }
                array[backIndex] = tmp  // insert
                break
            }
        }
    }
    
    print("InsertionSort Main Operation Times: " + String(mainOpeartionTimes))
    print(array, "\n")
}

// Merge Sort, use Divide and Conquer

func mergeSort(array: inout Array<Int>) {
    
}

// Quick Sort

func quickSort(array: inout Array<Int>) {
    
}

// Radix Sort, should compare from right

func radixSort(array: inout Array<Int>) {
    
}
