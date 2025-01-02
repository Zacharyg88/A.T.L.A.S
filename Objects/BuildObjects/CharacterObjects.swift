//
//  CharacterObjects.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/28/24.
//

import Foundation


struct CharacterObject {
    var id: UUID
    var imageURL: String?
    var name: String?
    var description: String?
    var appearance: String?
    var age: Int?
    var gender: String?
    var species: SpeciesObject?
    var backstory: String?
    var affiliations: [String]? // Factions or groups
    var allies: [UUID]? // References to other characters
    var enemies: [UUID]? // References to other characters
    var romanticInterests: [UUID]? // Reference to another character, if applicable
    var skills: [String]? // List of character's innate skills and proficiencies.
    var abilities: [UUID]? // Reference to documented Abilities
    var strengths: [String]? // Positive traits
    var weaknesses: [String]? // Limitations
    var equipment: [String]? // Weapons, armor, items
    var personalityTraits: [String]? // Courageous, greedy, etc.
    var values: [String]? // Principles or beliefs
    var lawfulRating: Int?
    var moralRating: Int?
    var primaryGoal: String?
    var secondaryGoals: [String]? // Lesser objectives
    var motivations: [String]? // Driving forces
    var currentLocation: String?
    var health: Int? // Could represent current HP or status
    var level: Int? // If relevant
    var quirks: [String]? // Characteristic oddities
    var fears: [String]? // Fears or phobias
    var secrets: [String]? // Things hidden from others
    var quotes: [String]? // Memorable quotes
    var travelPack: [UUID]? //Objects in the characters possession
}


struct AbilityObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var result: String
    var cost: String
}
