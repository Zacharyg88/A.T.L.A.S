//
//  CreatureObject.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/28/24.
//

import Foundation


struct CreatureObject {
    var id: UUID
    var imageURL: String
    var name: String
    var species: SpeciesObject
    var description: String
    var height: String
    var weight: String
    var abilities: [UUID]
    var location: String
    var health: String
    var gender: String
}


struct SpeciesObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var habitat: String
    var rarity: Rarity
    var skills: [String]
    var abilities: [UUID]
    var strengths: [String]
    var weaknesses: [String]
    
}
