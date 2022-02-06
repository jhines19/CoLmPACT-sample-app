//
//  LeftAlign.swift
//  ColmPACT
//
//  Created by Jaraad Hines on 2/5/22.
//

func leftAlign(text: String, columns: Int) {
    var value_index: Int = 0;
    let arr = text.split(separator: " ")
    
    //iterate through arr
    for val in arr {
        //get length of longest value
        if let max = arr.max(by: {$1.count > $0.count}) {
            let longest_value = max.count
            
            //core computation:
            //leftAlign spacing for vals and printing vals
            if (val.count < longest_value) {
                let spacing_amount = longest_value - val.count
                let spacing = String(repeating: " ", count: spacing_amount)
                print(val+spacing, terminator: " ")
            } else {
                //longest value spacing
                let spacing = ""
                print(val+spacing, terminator: " ")
            }
            //increment value_index with every val iteration
            value_index += 1
            
            //print new line for columns
            if (value_index == columns) {
                print("\n")
                value_index = 0;
            }
        }
    }
}


