//
//  SnapKit
//
//  Copyright (c) 2011-Present SnapKit Team - https://github.com/SnapKit
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension Constraint {
    
    @available(*, deprecated, renamed:"activate()")
    public func install() {
        self.activate()
    }

    @available(*, deprecated, renamed:"deactivate()")
    public func uninstall() {
        self.deactivate()
    }
    
    @available(*, deprecated, renamed:"update(offset:)")
    public func updateOffset(amount: ConstraintOffsetTarget) -> Void { self.update(offset: amount) }

    @available(*, deprecated, renamed:"update(inset:)")
    public func updateInsets(amount: ConstraintInsetTarget) -> Void { self.update(inset: amount) }

    @available(*, deprecated, renamed:"update(priority:)")
    public func updatePriority(amount: ConstraintPriorityTarget) -> Void { self.update(priority: amount) }

    @available(*, deprecated, message:"Use update(priority: ConstraintPriorityTarget) instead.")
    public func updatePriorityRequired() -> Void {}

    @available(*, deprecated, message:"Use update(priority: ConstraintPriorityTarget) instead.")
    public func updatePriorityHigh() -> Void { fatalError("Must be implemented by Concrete subclass.") }

    @available(*, deprecated, message:"Use update(priority: ConstraintPriorityTarget) instead.")
    public func updatePriorityMedium() -> Void { fatalError("Must be implemented by Concrete subclass.") }

    @available(*, deprecated, message:"Use update(priority: ConstraintPriorityTarget) instead.")
    public func updatePriorityLow() -> Void { fatalError("Must be implemented by Concrete subclass.") }
}
