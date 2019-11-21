//
//  Uint16.swift
//  Emulator
//
//  Created by Ronald "Danger" Mannak on 11/20/19.
//  Copyright © 2019 A Puzzle A Day. All rights reserved.
//

import Foundation

extension UInt16 {
    
    /// Returns the high byte (the upper 8 bits) of a 16 bit number
    var highByte: UInt8 { return UInt8((self & 0xFF00) >> 8) }
    
    /// Returns the low byte (the lower 8 bits) of a 16 bit number
    var lowByte: UInt8 { return UInt8(self & 0x00FF) }
}
