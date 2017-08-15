//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func reverseVowels(s: String) -> String {
    if s == "" { return "" }
    let vowels = ["a","e","i","o","u","A","E","I","O","U"]
    var sVowels = [Character]()
    var reversedStr = ""
    for vChar in s.characters {
        if vowels.contains(String(vChar)) {
            sVowels.append(vChar)
        }
    }
    for char in s.characters {
        if !vowels.contains(String(char)) {
            reversedStr = reversedStr + String(char)
        } else if vowels.contains(String(char)) {
            reversedStr = reversedStr + String(sVowels.removeLast())
        }
    }
    
    return reversedStr
}

reverseVowels(s: "Apple is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. Wikipedia")

let bSort = [5,3,7,-1,6]
