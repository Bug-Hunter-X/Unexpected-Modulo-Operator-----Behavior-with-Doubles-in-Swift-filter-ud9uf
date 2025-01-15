let mixedNumbers = [1, 2.5, 3, 4.5, 5]

let evenMixedNumbers = mixedNumbers.filter { number in
    if let intNumber = number as? Int {
        return intNumber % 2 == 0
    } else {
        return false
    }
}

print(evenMixedNumbers) // Output: [2, 4]

//Alternative using a where clause

let evenMixedNumbers2 = mixedNumbers.compactMap{ $0 as? Int }.filter { $0 % 2 == 0 }

print(evenMixedNumbers2) // Output: [2, 4]