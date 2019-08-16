//: Playground - noun: a place where people can play

import UIKit

// var and let

var str = "Hello, playground"

str = "Hi, playground"

let otherStr = "Hi, Zach"

 /// other Str cannot be changed
/// use let instead of var for variables you DO NOT indend to change

//Strings

let name = "zach"

print("hello " + name)

//Interger (a whole number)

var myInt = 8

print (myInt * 2)

print(myInt + 100)

myInt = myInt + 1

myInt = myInt / 5 ///rounds to a whole number doesnt produce decimals

print("myInt has value\(myInt)")

var age = 20

print("My name is \(name)" + " and I am \(age) years old")


//Doubles and Floasts

var a: Double = 8.73

var b: Float = 8.73

var c = 7.12

print(a/c)

//print(a/b) cannot do because you cant do math with two diff types

print (Double(myInt) + a)

// Boolean

let gameOver = false

var gameOverString = String(gameOver)

// double =5.76 and int = 8 and The product of 5.76 and 8 is

var first = 5.76
var second = 8


print("The product of \(first) and \(second) is \(first * Double(second)) ")


// Array

var array = [35, 36, 5, 2]

print(array[0])

print(array.count)

array.append(1)

array.remove(at: 1)

array.sort()

print (array)

//Challenge

var arrayAgain = [3.87, 7.1, 8.9]

arrayAgain.remove(at: 1)

arrayAgain.append(3.87*8.9)

print(arrayAgain)

let mixArray = ["Rob", 35, true] as [Any]

let stringArray = [String]()

//Dictionary

var dictionary = ["computer": "something to play Call of Duty on", "coffee" : "the best drink ever"]

print (dictionary["computer"]!)

print(dictionary.count)

dictionary["pen"] = "writing shit"

dictionary.removeValue(forKey: "computer")
print (dictionary)

var gameCharacters = [String : Double]()

gameCharacters["ghost"] = 8.7

//Challenge wit Dictionary

var menuDict = ["pizza" : 10.99, "ice cream": 4.99, "salad" : 7.99]

print("The total cost of the meal is \(menuDict["pizza"]! + menuDict["salad"]!)")


//if statements


let realAge = 18

//Greater than or equal to if statements

if realAge >= 18 {
    print("You can Play!")
    
    
    
} else {
    print("Your are too young")
    
}

//Check username

let newName = "rob"

if newName == "rob" {
    
    print ("Hi " + newName + "! You can play!")
}else{
    print("Sorry, " + newName + "! You can't play")
}

// 2 If Statements With And

//if newName == "rob" && realAge >=18 {
  //  print("you can play")
    
//} else if newName == "rob" {
  //  print("Sorry Rob, you need to get older")


//2 If statements with Or
if newName == "rob" || newName == "kirsten" {
    print("Welcome " + newName)
    
}

//Booleans with If statments

let isMale = true
if isMale{
    print("You're male!")
}

//Challenge Login System with username/password variables. 1.They are correct 2. They are both wrong 3. username is wrong 4. just password is wrong

let username = "bobby"
let password = "dickhead"

if username == "bobby" && password == "dickhead" {
    
    print("They are correct")
}else{
    print("They are wrong")
}; if username == "bobby" {
    print("Only username is correct")
    
}else {
    print("Username is wrong")
}; if password == "dickhead" {
    print("only password is correct")
}else {
    print("Password is wrong")
}















