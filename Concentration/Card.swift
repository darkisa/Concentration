//
//  Card.swift
//  Concentration
//
//  Created by Darko Mijatovic on 12/14/18.
//  Copyright © 2018 Darko Mijatovic. All rights reserved.
//

import Foundation

struct Card: Hashable {
  var isFaceUp = false
  var isMatched = false
  private var identifier: Int
  var hashValue: Int { return identifier }
  static func ==(lhs: Card, rhs: Card) -> Bool {
    return lhs.identifier == rhs.identifier
  }
  
  private static var identifierFactory = 0
  
  private static func getUniqueIdentifier() -> Int {
    identifierFactory += 1
    return identifierFactory
  }
  
  init() {
    self.identifier = Card.getUniqueIdentifier()
  }
}
