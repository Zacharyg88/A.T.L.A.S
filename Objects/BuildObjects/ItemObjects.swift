//
//  ItemObjects.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/28/24.
//

import Foundation


class ItemObject {
    var id: UUID = UUID()
    var imageURL: String = ""
    var name: String = ""
    var description: String = UUID().uuidString
    var itemType: ItemType?
    var rarity: RarityObject?
    var weight: Float = 0.0
    var value: Float = 0.0
    var isMagic: Bool = false
}

struct Rarity {
    let title: String
    let description: String
}

enum RarityObject: CaseIterable {
    case Common
    case Interest
    case Uncommon
    case Rare
    case Epic
    case Wonder
    case Legendary
    case Mythic
    case Ancient
    case Transcendent
    
    var details: Rarity? {
        switch self {
        case .Common:
            return Rarity(title: "Common", description: "Basic, everyday items with no special properties.")
        case .Interest:
            return Rarity(title: "Interest", description: "Semi-regularly found items which spark interest but are otherwise largely commonplace.")
        case .Uncommon:
            return Rarity(title: "Uncommon", description: "Slightly better quality or mildly enhanced items.")
        case .Rare:
            return Rarity(title: "Rare", description: "High-quality items with notable value or effects.")
        case .Epic:
            return Rarity(title: "Epic", description: "Exceptionally powerful or rare, often with magical properties.")
        case .Wonder:
            return Rarity(title: "Wonder", description: "Spectacular or famous items, often well known by others.")
        case .Legendary:
            return Rarity(title: "Legendary", description: "Unique, story-worthy items with significant lore and power.")
        case .Mythic:
            return Rarity(title: "Mythic", description: "Extremely rare and mystical items, often tied to myths or gods.")
        case .Ancient:
            return Rarity(title: "Ancient", description: "Items from lost civilizations, often holding forgotten power.")
        case .Transcendent:
            return Rarity(title: "Transcendent", description: "Reality-defying items beyond mortal comprehension, possibly from other planes of existence.")
        }
    }
}


enum ItemType {
    // Weapons
    case Sword
    case Dagger
    case Axe
    case Mace
    case Hammer
    case Spear
    case Lance
    case Halberd
    case Bow
    case Crossbow
    case Sling
    case MartialStaff
    case Whip
    case Flail
    case Firearm
    case Cannon
    case SiegeWeapon
    case Ammunition
    case Shield
    case Explosive
    
    // Armor and Clothing
    case Helmet
    case Breastplate
    case Gauntlets
    case Greaves
    case Boots
    case Cloak
    case Robe
    case Tunic
    case Belt
    case Gloves
    case Mask
    case Hood
    case Bracers
    case Pauldrons
    case Chainmail
    case PlateArmor
    case LeatherArmor
    case ScaleArmor
    case RingmailArmor
    
    // Tools and Utilities
    case Pickaxe
    case Shovel
    case Rope
    case Lantern
    case Torch
    case Lockpick
    case Compass
    case Map
    case Spyglass
    case Hourglass
    case Key
    case WritingUtensil
    case Book
    case Journal
    case MusicalInstrument
    case PotionKit
    case FishingRod
    case Trap
    case Tent
    case CookingPot
    case AlchemySet
    case SmithingTools
    case ArtisanTools
    
    // Magical and Mystical Items
    case Amulet
    case Ring
    case Talisman
    case Charm
    case Totem
    case Orb
    case MagicCrystal
    case RuneStone
    case Grimoire
    case Scroll
    case Wand
    case MagicStaff
    case Spellbook
    case Potion
    case Elixir
    case Artifact
    case Relic
    case EnchantedWeapon
    case EnchantedArmor
    
    // Consumables
    case Food
    case Drink
    case Herb
    case Medicine
    case Poison
    case Ration
    case Alcohol
    case Tea
    case Spice
    case Tonic
    
    // Resources and Materials
    case Ore
    case Ingot
    case Gemstone
    case Crystal
    case Fabric
    case Leather
    case Wood
    case Stone
    case Clay
    case Bone
    case Feather
    case Hide
    case Scale
    case Shell
    case Parchment
    case Ink
    
    // Valuables and Currency
    case Coin
    case Gem
    case Pearl
    case Jewelry
    case Crown
    case Scepter
    case TreasureChest
    case ArtPiece
    case Sculpture
    case Painting
    
    // Vehicles and Transport
    case Boat
    case Ship
    case Cart
    case Wagon
    case Carriage
    case Saddle
    case Harness
    case Balloon
    case Airship
    
    // Containers and Storage
    case Satchel
    case Backpack
    case Chest
    case Crate
    case Barrel
    case Bag
    case Box
    case Jar
    case Bottle
    case Flask
    case Vial
    
    // Miscellaneous and Unique
    case Banner
    case Flag
    case Seal
    case CoinPurse
    case PuzzleBox
    case Idol
    case Statue
    case Tome
    case Token
    case Letter
    case ScrollCase
    case Lock
    case Custom
}




