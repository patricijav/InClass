import UIKit

// OOP Object Oriented Programming

// Blog
let postTitle = "OOP"
let postText = "OOP OOP OOP"
let postAuthor = "AM"

let postTitle2 = "Classes"
let postText2 = "Classes OOP"
let postAuthor2 = postAuthor

// You can define classes with smaller letter, but you shouldn't, you should use big letters
class Post {
    var postTitle = ""
    var postText = ""
    var postAuthor = ""
    // we can also var email: String?, but we will need to check if it has String or not
}

let firstPost = Post()

firstPost.postTitle = "This is my first post"
firstPost.postText = "Text here"
firstPost.postAuthor = "AA"

let secondPost = firstPost

secondPost.postTitle = "2"
secondPost.postText = "New post"



firstPost === secondPost  // Is it using the same memory?



class Comment {
    var like = ""
    var author = ""
    
    var numberOfComments = 0
    
    func addComment() {
        numberOfComments += 1
    }
}

let firstComment = Comment()

firstComment.addComment()
firstComment.addComment()
firstComment.addComment()


class Human {
    //var name = "" // This is fine
    //var age = 0 // This is fine
    var myName: String = ""
    var myAge: Int = 0
    
    // init(){}
    
    init(name: String, age: Int) {
        self.myName = name
        self.myAge = age
    }
}

let person = Human(name: "Tod", age: 22)
person.myAge

// let newPerson = Human() // Not mandatory, because there is default values and empty init, if there weren't this couldn't be possible

// INHERITANCE

class Parent {
    var myName: String = ""
    var myAge: Int = 0
    
    init(name: String, age: Int) {
        self.myName = name
        self.myAge = age
    }
    
    func walk() {
        print("can walk")
    }
}

let dad = Parent(name: "Sam", age: 40)

dad.myName
dad.walk()

class Child: Parent {
    func feeding() {
        if myAge <= 2 {
            print("need a help")
        } else {
            print("can eat independently")
        }
    }
    
    func educating() {
        if myAge <= 4 {
            print("kinder age")
        } else {
            print("ready to go to school")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 2)
littleBoy.walk()

class Figure {
    func draw() {}
}

class Circle: Figure {
    override func draw() {
        print("Draw the circle")
    }
}

class Rectangle: Figure {
    override func draw() {
        print("Draw the Rectangle")
    }
}

let rectangle = Rectangle()

rectangle.draw()

// No default values needed for structs; they always create a new place in memory, and don't need initializers
