import Cocoa

//sort filter map

var luckyNumbers = [7,4,38,21,16,15,12,33,31,49]

//This works
//var newList = luckyNumbers.filter {
//    if $0 % 2 != 0 {
//        return true
//    } else {
//        return false
//    }
//}
//
//newList.sort {
//    $0 < $1
//}
//
//for item in newList {
//    if item == 7 {
//        print("7 is a lucky number")
//    } else{
//        print(item)
//    }
//}

func printNums(_ anArr: [Int], filter: () -> [Int], sort: ([Int]) -> [Int], map: ([Int]) -> Void) -> Void{
    var arr = anArr
    arr = filter()
    arr = sort(arr)
    map(arr)
    
}

printNums(luckyNumbers) {
    var newArr = luckyNumbers.filter {
        
        if $0 % 2 != 0 {
            return true
        } else {
            return false
        }

    }
    return newArr
} sort: { filteredArr in
    var sortedArr = filteredArr.sorted {
        $0 < $1
    }
    return sortedArr
} map: { sortedArr in
    for item in sortedArr {
        if item == 7 {
            print("7 is a lucky number")
        } else{
            print(item)
        }
    }
}
