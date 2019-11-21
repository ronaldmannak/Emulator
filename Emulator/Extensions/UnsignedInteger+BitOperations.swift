//
//  UnsignedInteger+BitOperations.swift
//  Emulator
//
//  Created by Ronald "Danger" Mannak on 11/20/19.
//  Copyright © 2019 A Puzzle A Day. All rights reserved.
//

import Foundation

internal extension UnsignedInteger where Self: FixedWidthInteger {

    private func get(bit: Int) -> Bool {
        
        precondition(0 <= bit && bit < Self.bitWidth)
        
        let mask = Self(1 << bit)
        
        return (self & mask) != 0
    }
    
    private mutating func set(bit: Int, _ value: Bool) {
        
        precondition(0 <= bit && bit < Self.bitWidth)
        
        let mask = Self(1 << bit)
        
        if value {
            self |= mask
        } else {
            self &= ~mask
        }
    }
    
    subscript(bit bit: Int) -> Bool {
        
        get { return get(bit: bit) }
        
        set(value) { set(bit: bit, value) }
    }
}
