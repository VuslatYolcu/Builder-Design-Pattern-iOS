import UIKit

struct Hamburger {
    
    let meat: Meat
    let sauce: Sauces
    let toppings: Toppings
}

enum Meat: String {
    case beef
    case chicken
    case tofu
}

// Optionset allows for multiple choices
struct Sauces: OptionSet {
    let rawValue: Int
    
    init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    static let mayonnaise = Sauces(rawValue: 1 << 0)
    static let mustard = Sauces(rawValue: 1 << 1)
    static let ketchup = Sauces(rawValue: 1 << 2)
}

struct Toppings: OptionSet {
    let rawValue: Int
    
    init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    static let cheese = Sauces(rawValue: 1 << 0)
    static let lettuce = Sauces(rawValue: 1 << 1)
    static let pickles = Sauces(rawValue: 1 << 2)
}
