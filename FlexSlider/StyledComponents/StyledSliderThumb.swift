//
//  StyledSliderThumb.swift
//  MJRFlexStyleComponents
//
//  Created by Martin Rehder on 10.07.16.
/*
 * Copyright 2016-present Martin Jacob Rehder.
 * http://www.rehsco.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

import UIKit
import StyledLabel
import FlexControls

open class StyledSliderThumb: StyledSliderItem {
    open var snappingBehavior = SnappingThumbBehaviour(item: nil, snapToPoint: CGPoint.zero)
    open var behaviour: StyledSliderThumbBehaviour = .freeform

    // Used internally when relatively sliding
    var tempValue: Double?
    
    // Special triggering of value change events. Should be used in combination with snapping behaviour.
    // Events are only fired once per swipe-touch
    open var triggerEventAbove: Double?
    open var triggerEventBelow: Double?
    
    // Used internally
    open var eventTriggered = false
    
    open var upperLimit = Double.infinity
    open var lowerLimit = -Double.infinity
}
