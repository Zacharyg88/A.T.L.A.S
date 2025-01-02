//
//  BuildObjects.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/27/24.
//

import Foundation

struct UniverseObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var planets: [PlanetObject]
}

struct PlanetObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var landmasses: [GeographicalFeature]
}

struct GeographicalFeature {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var geographicalFeatureType: GeographicalFeatureType
    var parentLandmassID: String
    var childLandmassIDs: [String]
    var regions: [RegionObject]
    var pois: [POIObject]
    
}

struct POIObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
}

struct RegionObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var countries: [CountryObject]
    var biomes: [BiomeObject]
    var geographicalFeatures: [GeographicalFeature]
}

struct BiomeObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var geographicalFeatures: [GeographicalFeature]
}

struct CountryObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var settlements: [SettlementObject]
    var naturalFeatures: [NaturalFeatureObject]
    var geographicalFeatures: [GeographicalFeature]
    
}

struct NaturalFeatureObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
}

struct SettlementObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var districts: [DistrictObject]
    var landmarks: [LandmarkObject]
    var structures: [StructureObject]
    var geographicalFeatures: [GeographicalFeature]
}

struct StructureObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
}

struct DistrictObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    var routes: [RouteObject]
}

struct RouteObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
}

struct LandmarkObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
}

enum GeographicalFeatureType {
    // Major Landmasses
    case SuperContinent
    case Continent
    case SubContinent
    case Island
    case Archipelago
    case Peninsula
    case Isthmus
    case FloatingLandmass
    case SubmergedLandmass
    case SubterrainianLandmass
    case ArtificialLandmass
    case ShatteredLandmass
    case ExtraplanarLandmass
    
    // Bodies of Water - Freshwater
    case River
    case Stream
    case Tributary
    case Lake
    case Pond
    case Spring
    case Waterfall
    case Marshland
    case Wetland
    case Swamp
    case Bog
    case Floodplain
    
    // Bodies of Water - Saltwater
    case Ocean
    case Sea
    case Gulf
    case Bay
    case Strait
    case Lagoon
    case Estuary
    case CoralReef
    case KelpForest
    
    // Terrain Features
    case Plateau
    case Basin
    case Valley
    case Plain
    case Grassland
    case Prairie
    case Steppe
    case Savannah
    case Desert
    case Tundra
    case FrozenTundra
    case PolarDesert
    case IceCap
    case Glacier
    case MountainRange
    case Mountain
    case Hill
    case Cliff
    case Canyon
    case Ravine
    case Dune
    case RockyOutcrop
    case Oasis
    case Coastal
    case Cliffside
    
    // Volcanic and Thermal Features
    case Volcano
    case LavaFlow
    case MagmaChamber
    case GeothermalField
    case SulfurPool
    
    // Subterranean Features
    case Cave
    case UndergroundLake
    case SubterraneanRiver
    case FungalForest
    case CrystalCavern
    case LavaCavern
    
    // Fantastical Features
    case FloatingIslands
    case Skylands
    case Shadowland
    case Feywild
    case MysticGrove
    case BlightedWastes
    case CorruptedForest
    case CrystalFields
    case AstralPlains
    case ElementalPlane
    case FirePlane
    case WaterPlane
    case EarthPlane
    case AirPlane
    case Voidlands
    case Abyss
    case CrystalSpire
    case FloatingSpire
    case LeyLineNexus

    // Transitional or Hybrid Features
    case RiparianZone
    case SavannahWetland
    
    // Man-Made Features
    case Dam
    case Canal
    case Bridge
}
