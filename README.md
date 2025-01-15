# Unexpected Modulo Operator (%) Behavior with Doubles in Swift filter

This repository demonstrates an unexpected behavior of the modulo operator (%) when used with Double values within Swift's `filter` function.  The modulo operator, when applied to Doubles, produces a fractional value, even in cases where an integer modulo would yield 0.  This leads to incorrect filtering results when arrays contain a mix of integer and floating-point numbers.

The `bug.swift` file shows the problematic code. The `bugSolution.swift` file offers a solution to correctly filter the mixed number array.

## Problem Description

When filtering an array containing both integers and doubles using the modulo operator to find even or odd numbers, the results are unexpected.  Doubles always produce a non-zero remainder, even when conceptually even, due to floating-point precision issues. This leads to the filter function incorrectly including seemingly 'even' doubles in the results.

## Solution

The solution uses type checking to ensure that the modulo operation is performed only on integers. This resolves the issue and provides accurate filtering results.