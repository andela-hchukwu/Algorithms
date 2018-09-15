import UIKit

// Linear search runs at O(n). It compares the object we are looking for with each object in the array and so the time it takes is proportional to the array length. In the worst case, we need to look at all the elements in the array.

func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}

func linearSearch1<T: Equatable>(_ array: [T], _ object: T) -> Array<T>.Index? {
    return array.index { $0 == object }
}

let array = [5, 2, 4, 7]
linearSearch1(array, 7)     // This will return 1

