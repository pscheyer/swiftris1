//
//  SquareShape.swift
//  Swiftris1
//
//  Created by Peter Scheyer on 4/27/15.
//  Copyright (c) 2015 Peter Scheyer. All rights reserved.
//

class SquareShape:Shape {
    
/*  | 0*| 1 |
    | 2 | 3 |

* marks the row/column indicator for the shape

*/
    
    //the square shape will not rotate! Though i guess you could make it pinwheel around if you were insufficiently frowny facey about our swiftris.
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0, 0), (1, 0), (0,1), (1, 1)],
            Orientation.OneEighty: [(0, 0), (1, 0), (0,1), (1, 1)],
            Orientation.Ninety: [(0, 0), (1, 0), (0,1), (1, 1)],
            Orientation.TwoSeventy: [(0, 0), (1, 0), (0,1), (1, 1)],
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:   [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:   [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:   [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy:   [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],   
        ]
    }
}
