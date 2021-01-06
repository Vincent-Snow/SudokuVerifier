//
//  PuzzleInput.swift
//  SudokuVerifier
//
//  Created by Vincent Snow on 12/22/20.
//

import Foundation

extension StringProtocol {
    subscript(offset: Int) -> Character { self[index(startIndex, offsetBy: offset)] }
    subscript(range: Range<Int>) -> SubSequence {
        let startIndex = index(self.startIndex, offsetBy: range.lowerBound)
        return self[startIndex..<index(startIndex, offsetBy: range.count)]
    }
    subscript(range: ClosedRange<Int>) -> SubSequence {
        let startIndex = index(self.startIndex, offsetBy: range.lowerBound)
        return self[startIndex..<index(startIndex, offsetBy: range.count)]
    }
    subscript(range: PartialRangeFrom<Int>) -> SubSequence { self[index(startIndex, offsetBy: range.lowerBound)...] }
    subscript(range: PartialRangeThrough<Int>) -> SubSequence { self[...index(startIndex, offsetBy: range.upperBound)] }
    subscript(range: PartialRangeUpTo<Int>) -> SubSequence { self[..<index(startIndex, offsetBy: range.upperBound)] }
}

var sudokuAnswer = "483921657967345821251876493548132976729564138136798245372689514814253769695417382"
var sudokuAnswer1 = "152693847476815932938742561215976483897234615364158729781429356623587194549361278"
var sudokuAnswer2 = "576192834428573916139648572792485163843216795615739428987324651264951387351867249"
var sudokuAnswer3 = "895643271624718953317295864782534196539861427461972538176429385948356712253187649"


