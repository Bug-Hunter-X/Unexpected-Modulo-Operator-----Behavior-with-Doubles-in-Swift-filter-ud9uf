let numbers = [1, 2, 3, 4, 5]

let evenNumbers = numbers.filter { $0 % 2 == 0 }

print(evenNumbers) // Output: [2, 4]

//This works correctly, but if we change the filter condition to check for odd numbers like this:

let oddNumbers = numbers.filter { $0 % 2 != 0 }

print(oddNumbers) // Output: [1, 3, 5]

//This also seems to work correctly.

//The error arises when the array contains a mix of Int and Double values. Consider the following:

let mixedNumbers = [1, 2.5, 3, 4.5, 5]

let evenMixedNumbers = mixedNumbers.filter { $0 % 2 == 0 }

print(evenMixedNumbers) // Output: [2.5, 4.5]

//The filter condition is not working as expected because the modulo operator (%) is not defined for Double types in the same way it is for Int types.  When used on Doubles, the result will always be a fractional value, never exactly 0, even if the Double is conceptually even.