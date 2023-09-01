import Foundation

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department: CustomStringConvertible {
    let name: String
    var people: [Person] = []

    init(name: String) {
        self.name = name
    }

    mutating func add(_ person: Person) {
        people.append(person)
    }

    var description: String { "Department: \(name)" }
}

var department = Department(name: "Engineering")
department.add(Person(name: "Eva", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Saleh", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Amit", age: 50, yearsOfExperience: 20))

print(department)

