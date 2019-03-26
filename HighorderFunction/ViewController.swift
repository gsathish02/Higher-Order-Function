//
//  ViewController.swift
//  HighorderFunction
//
//  Created by Sathish Kumar on 3/26/19.
//  Copyright © 2019 Sathish Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let naturalNumbers  = [0,1,2,3,4,5,6,7,8,9]
    
     let states = ["New York", "New Jersey", "Pennsylvania", "Nebraska", "Iowa", "Kansas", "California", "Oregan","Washington"]
    
    let numbers = Array(1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playWithSorting()
        playWithMap()
        playWithFilter()
        playWithReduce()
    }

    func playWithSorting() {
        
        //sorted is used to rearrange the elements in the Array
        
        let ascendingOrder = naturalNumbers.sorted()
        
        print("Natural Numbers == \(naturalNumbers)")
        print("Ascending Order == \(ascendingOrder)")
        
        let descendingOrder = naturalNumbers.sorted
        {
            (a, b) -> Bool in
            return a > b
        }
        
        print("Descending order == \(descendingOrder)")
        
        //Alternate method, inline function
        let descendingOrder1 = naturalNumbers.sorted(by: >)
        print("Descending order1 == \(descendingOrder1)")
        
        let evenFirstSorted = naturalNumbers.sorted
        {
            (a, b) -> Bool in
            return a % 2 == 0
        }
        print("Even Numbers Sorted == \(evenFirstSorted)")
    }
    
    func playWithMap() {
       
        //map is used to apply a function to every individual object.
        let nameCount = states.map{$0.count}
        print("State name count == \(nameCount)")
        
        let sortingAsc = states.sorted() // Sorted Alphabetically
        print("State name sortingAsc == \(sortingAsc)")
        
        let sortingDes = states.sorted(by: >)
        print("State name sortingDes == \(sortingDes)")
        
        let sortbyCount = states.sorted
        {
            (a, b) -> Bool in
            return a.count > b.count
        }
       print("State name sortbyCount == \(sortbyCount)")
        
        let nameUpperCase = states.map{$0.uppercased()}
        print("State name count == \(nameUpperCase)")
        
        let appendExtraString = states.map{"State:" + $0 }
        print("State name count == \(appendExtraString)")
        
    }
    
    func playWithFilter() {
        
        // filter is used to select the explicit item based on condition.
        let evenNum = numbers.filter{$0 % 2 == 0 }
        print("Even Numbers == \(evenNum)")
        
        let getFromState = states.filter { $0.count > 7 }
        print("GetFromState == \(getFromState)")
        
        let getFromState1 = states.filter { $0.count < 5 }
        print("GetFromState1 == \(getFromState1)")
    }
    
    func playWithReduce() {
        
        // reduce is used to combine all element in Array to make one single value.
        let sumOfAllNumbers = numbers.reduce(0, {$0 + $1})
        print("Sum of All Numbers == \(sumOfAllNumbers)")
        
        let longestStatename = states.reduce("", {$0.count > $1.count ? $0 : $1 })
        print("Longest State name == \(longestStatename)")
    }
}

