//
//  Z80A.swift
//  Emulator
//
//  Created by Ronald "Danger" Mannak on 11/20/19.
//  Copyright © 2019 A Puzzle A Day. All rights reserved.
//

import Foundation

/**
 Z80A Registers
 
 Sources:
 http://www.z80.info/z80arki.htm
 https://en.wikipedia.org/wiki/Zilog_Z80
 
 */
class Z80A {
    
    /*** Main Registers ***/
    
    /// Accumulator Register
    var a: UInt8 = 0
    
    /// Flags Register
    var f: UInt8 = 0
    
    // BC Register Pair
    var bc: UInt16 { return b <<| c }
    var b: UInt8 = 0
    var c: UInt8 = 0
    
    // DE Register Pair
    var de: UInt16 { return d <<| e }
    var d: UInt8 = 0
    var e: UInt8 = 0
    
    // HL Register Pair
    var hl: UInt16 { return h <<| l }
    var h: UInt8 = 0
    var l: UInt8 = 0
    
    // WZ Register Pair
    var wz: UInt16 { return w <<| z }
    var w: UInt8 = 0
    var z: UInt8 = 0
    
    
    /*** Alternate Registers ***/
    
    /// Alternate Accumulator Register
    fileprivate var aAlternate: UInt8 = 0
    
    /// Alternate Flags Register
    fileprivate var fAlternate: UInt8 = 0
    
    // Alternate BC Register Pair
    fileprivate var bcAlternate: UInt16 { return b <<| c }
    fileprivate var bAlternate: UInt8 = 0
    fileprivate var cAlternate: UInt8 = 0
    
    // Alternate DE Register Pair
    fileprivate var deAlternate: UInt16 { return d <<| e }
    fileprivate var dAlternate: UInt8 = 0
    fileprivate var eAlternate: UInt8 = 0
    
    // Alternate HL Register Pair
    fileprivate var hlAlternate: UInt16 { return h <<| l }
    fileprivate var hAlternate: UInt8 = 0
    fileprivate var lAlternate: UInt8 = 0
    
    // Alternate WZ Register Pair
    fileprivate var wzAlternate: UInt16 { return w <<| z }
    fileprivate var wAlternate: UInt8 = 0
    fileprivate var zAlternate: UInt8 = 0
    
    
    /*** Index Registers ***/
    
    /// Index X Register
    var ix: UInt16 = 0
    
    /// Index Y Register
    var iy: UInt16 = 0
    
    /// Stack Pointer Register
    var sp: UInt16 = 0
    
    
    /*** Other Registers ***/
    
    // Interrupt Vector Register
    var i: UInt8 = 0
    
    // Refresh Counter Register
    var r: UInt8 = 0
    
    
    /*** Program Counter ***/
    
    /// Program Counter Register
    var pc: UInt16 = 0
}

/*** Flags ***/
extension Z80A {
    
    /// Negative / Sign Flag
    var fS: Bool { return f[bit: 7]  }
    
    /// Zero Flag
    var fZ: Bool { return f[bit: 6] }
    
    /// Adjust / Auxiliary Carry Flag
    var fH: Bool { return f[bit: 4] }
    
    /// Parity Flag
    var fP: Bool { return f[bit: 3] }
    
    /// Overflow Flag (shared with Parity Flag)
    var fV: Bool { return f[bit: 3] }
    
    ///
    var fN: Bool { return f[bit: 1]}
    
    /// Carry Flag
    var fC: Bool { return f[bit: 0]}
    
}


