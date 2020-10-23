import UIKit

var content = ""
//for _ in 1...10 {
//    for _ in 1...10 {
//        content = content + "🍭"
//    }
//    content = content + "\n"
//}
//print(content)
var number = 10
//for i in 1...number {
//    for _ in 1...i {
//        content = content + "🍭"
//    }
//    content = content + "\n"
//}
//print(content)
//for i in (1 ... number) {
//    let starCount  = 2*i - 1
//    let spaceCount = number - i
//
//    let spaceInFront = String(repeating: "🥝", count: spaceCount)
//    let stars = String(repeating: "🍎", count: starCount)
//    content += spaceInFront+stars
//    content += "\n"
//}
//print(content)
//for i in 1...number {
//    let lollipopCount = (2*i) - 1
//    let spaceCount = number - i
//    let s1 = String(repeating: "  ", count: spaceCount)
//    let s2 = String(repeating: "🍭", count: lollipopCount)
//    content = content + "\(s1 + s2)"
//    content = content + "\n"
//}
//print(content)

//if height>2, height%2 != 0 {
for i in 1 ... number*2 - 1 {
        var lollipopCount = 0
        var spaceCount = 0
        if i < number + 1 {
            lollipopCount  = (2*i) - 1
            spaceCount = number - i
        } else {
            lollipopCount  = 2*(2*number - i) - 1
            spaceCount = i - number
        }
        let spaceInFront = String(repeating: "🥝", count: spaceCount);
        let stars = String(repeating: "🍭", count: lollipopCount);
        content += spaceInFront+stars
        content += "\n"
    }
//}
print(content)
