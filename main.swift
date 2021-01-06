//
//  main.swift
//  SudokuVerifier
//
//  Created by Vincent Snow on 12/22/20.
//

import Foundation

var sudokuInc = 0
var sudokuArray: [[String]] = []
var nineArray: [String] = []

let tester = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
func sudokuVerifier(sudokuAnswer: String) -> Bool {
    var sudokuInc = 0
    var sudokuArray: [[String]] = []
    var nineArray: [String] = []
    var sudokuSolution = false
    if sudokuAnswer.count != 81 {
        print("Not correct length")
        return sudokuSolution
    }
    
    for _ in 1...9 {
        nineArray = []
        let temp = sudokuAnswer.suffix(sudokuAnswer.count-sudokuInc)
        let line = String(temp.prefix(9))
        for i in line {
            nineArray.append(String(i))
        }
        sudokuArray.append(nineArray)
        sudokuInc+=9
    }
    // rows
    for i in sudokuArray {
        if i.sorted() == tester {
            //print(i)
            sudokuSolution = true
        } else {
            print("invalid")
            sudokuSolution = false
            return sudokuSolution
        }
    }

    // columns
    for i in 0...sudokuArray.count-1 {
        nineArray = []
        for j in sudokuArray[i] {
            nineArray.append(j)
        }
        if nineArray.sorted() == tester {
            //print(nineArray)
            sudokuSolution = true
        } else {
            print("invalid")
            sudokuSolution = false
            return sudokuSolution
        }
    }

    //squares
    var row = (0,2)
    for _ in 1...3  {
        var col = (0,2)
        for _ in 1...3 {
            nineArray = []
            
            for i in row.0...row.1 {
                for j in col.0...col.1 {
                    nineArray.append(sudokuArray[i][j])
                }
            }
            if nineArray.sorted() == tester {
            //    print(nineArray)
                sudokuSolution = true
            } else {
                print("invalid")
                sudokuSolution = false
                return sudokuSolution
            }
            col.0+=3
            col.1+=3
        }
        row.0+=3
        row.1+=3
    }
    return sudokuSolution
}

print("Answer: ", sudokuVerifier(sudokuAnswer: sudokuAnswer))
print("Answer 1: ", sudokuVerifier(sudokuAnswer: sudokuAnswer1))
print("Answer 2: ", sudokuVerifier(sudokuAnswer: sudokuAnswer2))
print("Answer 3: ", sudokuVerifier(sudokuAnswer: sudokuAnswer3))

