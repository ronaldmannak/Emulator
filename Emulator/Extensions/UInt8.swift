//
//  UInt8.swift
//  Emulator
//
//  Created by Ronald "Danger" Mannak on 11/20/19.
//  Copyright © 2019 A Puzzle A Day. All rights reserved.
//

import Foundation

infix operator <<|
func <<| (lhs: UInt8, rhs: UInt8) -> UInt16 { return (UInt16(lhs) << 8) | UInt16(rhs) }

