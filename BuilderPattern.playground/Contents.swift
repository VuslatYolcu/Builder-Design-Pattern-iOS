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

class HamburgerBuilder {
    
    private (set) var meat: Meat = .beef
    private (set) var sauces: Sauces = []
    private (set) var toppings: Toppings = []
    
    func setMeat(_ meat: Meat) {
        self.meat = meat
    }
    
    func addSauces(_ sauce: Sauces) {
        sauces.insert(sauce)
    }
    
    func addTopings(_ topping: Toppings) {
        toppings.insert(topping)
    }
    
    func removeSauces(_ sauce: Sauces) {
        sauces.remove(sauce)
    }
    
    func removeToppings(_ topping: Toppings) {
        toppings.remove(topping)
    }
    
    func build() -> Hamburger {
        return Hamburger(meat: meat, sauce: sauces, toppings: toppings)
    }
}
