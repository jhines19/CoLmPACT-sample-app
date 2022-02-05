//
//  LeftAlign.swift
//  ColmPACT
//
//  Created by Jaraad Hines on 2/5/22.
//



func leftAlign(text: String, columns: Int){
    var value_index: Int = 0;
    //setting up every value to have an index value
    let arr = text.split(separator: " ")
    for val in arr{
        if let max = arr.max(by: {$1.count > $0.count}) {
            let longest_value = max.count
            let currentValue = arr[value_index]
            let nextValue = arr[value_index + 1]
    //        let modulus_value = currentValue.count % nextValue.count
    //        let dynamic_spacing_int : Double = 3.5
            let dynamic_spacing_int = 5-(columns%5)
            let dynamic_spacing = String(repeating: " ", count: dynamic_spacing_int)
            let tabs = String(repeating: "\t", count: 2)
            print(dynamic_spacing+val+dynamic_spacing, terminator: " ")


    //        if (currentValue.count == longest_value) {
    //            let spacing = String(repeating:"_", count: dynamic_spacing)
    //            //print our words
    //            print(spacing+val, terminator: "")
    //        } else {
    //            let spacing = String(repeating:"_", count: longest_value + 2)
    //            //print our words
    //            print(spacing+val, terminator: "")
    //        }

        //increment value_index with every val iteration
            value_index += 1

        //set up our columns using value index to place new line in desired place, equivalent to making columns
            if (value_index == columns) {
                print("\n")
                value_index = 0;
            }
        }

    }
}


