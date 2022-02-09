//
//  LeftAlign.swift
//  ColmPACT
//
//  Created by Jaraad Hines on 2/5/22.
//

import SwiftUI

func leftAlign(text: String, columns: Int) -> String {
    var value_index: Int = 0;
    let arr = text.split(separator: " ")
    var value = ""
    var multilineString = """
    """
    
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
                value = val+spacing+"  "
                multilineString.append(value)
            } else {
                //longest value spacing
                let spacing = String(repeating: "", count: 0)
                value = val+spacing+"  "
                multilineString.append(value)
            }
            //increment value_index with every val iteration
            value_index += 1
            
            //print new line for columns
            if (value_index == columns) {
                value = "\n"
                multilineString.append(value)
                value_index = 0;
            }
        }
    }
    return(multilineString)
}
