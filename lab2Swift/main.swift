
//Task 1
import Foundation
print("Task 1")
class BankAccount {
    let accountNumber: String
    let accountOwner: String
    var balance: Double
    
    init(accountNumber: String, accountOwner: String, initialBalance: Double) {
        self.accountNumber = accountNumber
        self.accountOwner = accountOwner
        self.balance = initialBalance
    }
    
    func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
            print("Deposit of \(amount) successful.")
        } else {
            print("Invalid deposit amount. Please enter a positive number.")
        }
    }
    
    func withdraw(amount: Double) {
        if amount > 0 {
            if balance >= amount {
                balance -= amount
                print("Withdrawal of \(amount) successful.")
            } else {
                print("Insufficient funds.")
            }
        } else {
            print("Invalid withdrawal amount. Please enter a positive number.")
        }
    }
    
    func getBalance() -> Double {
        return balance
    }
    
    func accountInfo() {
        print("Account Number: \(accountNumber)")
        print("Account Owner: \(accountOwner)")
        print("Balance: \(balance)")
    }
}


let account1 = BankAccount(accountNumber: "123456789", accountOwner: "John Doe", initialBalance: 1000.0)
account1.accountInfo()

account1.deposit(amount: 500.0)
print("Current Balance:", account1.getBalance())

account1.withdraw(amount: 200.0)
print("Current Balance:", account1.getBalance())


print(" ")
print("Task 2")

//Task 2

import Foundation

class Book {
    let title: String
    let author: String
    let year: Int
    let pageCount: Int
    
    init(title: String, author: String, year: Int, pageCount: Int) {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }
    
    func displayInfo() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year: \(year)")
        print("Page Count: \(pageCount)")
    }
}

class Library {
    var books: [Book]
    
    init() {
        self.books = []
    }
    
    func addBook(book: Book) {
        books.append(book)
        print("Book added to the library.")
    }
    
    func removeBook(title: String) {
        if let index = books.firstIndex(where: { $0.title == title }) {
            books.remove(at: index)
            print("Book removed from the library.")
        } else {
            print("Book not found in the library.")
        }
    }
    
    func displayAllBooksInfo() {
        print("Books in the library:")
        for book in books {
            book.displayInfo()
            print("-------------")
        }
    }
}


let book1 = Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: 1925, pageCount: 180)
let book2 = Book(title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960, pageCount: 281)

func libraryExample() {
    let book1 = Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: 1925, pageCount: 180)
    let book2 = Book(title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960, pageCount: 281)

    let library = Library()
    library.addBook(book: book1)
    library.addBook(book: book2)

    library.displayAllBooksInfo()

    library.removeBook(title: "To Kill a Mockingbird")

    library.displayAllBooksInfo()
}


libraryExample()
