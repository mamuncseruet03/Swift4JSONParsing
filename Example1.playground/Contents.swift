//: Playground - noun: a place where people can play

import Foundation

//Product JSON
let jsonString = """
{
    "id": 2,
    "name": "An ice sculpture",
    "price": 12.50
}
"""

//Product Model
class Product: Codable {
    let id: Int
    let name: String
    let price: Double
}

//Swift 4 Parsing code
 let jsonData = jsonString.data(using: .utf8)!
 if  let product = try? JSONDecoder().decode(Product.self, from: jsonData) {
    dump(product)
}
