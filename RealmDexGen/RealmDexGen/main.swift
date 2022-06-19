//
//  main.swift
//  RealmPokedexGen
//
//  Created by Brian Corbin on 3/23/22.
//

import Foundation
import RealmSwift

typealias StoredData = [String: [[String: Any]]]

let realmDB = try! Realm()
realmDB.beginWrite()

var storedData: StoredData = [:]

let directoryContents = try! FileManager.default.contentsOfDirectory(atPath: "/Users/briancorbin/Programming/SwiftDexTools/csvToJSON/data/json")
for fileName in directoryContents {
    let url = URL(fileURLWithPath: fileName, relativeTo: URL(fileURLWithPath: "/Users/briancorbin/Programming/SwiftDexTools/csvToJSON/data/json"))
    let data = try! Data(contentsOf: url)
    let json = try! JSONSerialization.jsonObject(with: data) as! [[String: Any]]
    storedData[fileName.replacingOccurrences(of: ".json", with: "")] = json
}

loadLanguages()
loadRegions()
loadGenerations()
loadVersionGroups()
loadContestTypes()
loadMoveDamageClasses()
loadMoveTargets()
loadTypes()
loadMoveEffects()
loadContestEffects()
loadSuperContestEffects()
loadEggGroups()
loadEncounterConditions()
loadEncounterMethods()
loadPokemonShapes()
loadPokemonMoveMethods()
loadPokemonHabitats()
loadGrowthRates()
loadPokemonColors()
loadItemPockets()
loadItemFlingEffects()
loadItemFlags()
loadItemCategories()
loadEvolutionTriggers()
loadGenders()
loadExperience()
loadAbilities()
loadAbilityChangelog()
loadAbilityChangelogProse()
loadAbilityFlavorText()
loadAbilityNames()
loadAbilityProse()
loadGenerationNames()
loadEvolutionTriggerProse()
loadSuperContestEffectProse()
loadItemFlagProse()
loadItemCategoryProse()
loadItemPocketNames()
loadItemFlingEffectProse()
loadPokemonColorNames()
loadGrowthRateProse()
loadPokemonHabitatNames()
loadPokemonShapeProse()
loadPokemonMoveMethodProse()
loadBerryFirmness()
loadMoves()
loadSuperContestCombos()
loadStats()
loadCharacteristics()
loadCharacteristicText()
loadContestCombos()
loadContestEffectProse()
loadContestTypeNames()
loadEggGroupProse()
loadEncounterConditionProse()
loadEncounterConditionValues()
loadEncounterConditionValueProse()
loadEncounterMethodProse()
loadPokemonSpecies()
loadPokemonSpeciesNames()
loadPokemonSpeciesProse()
loadPokemon()
loadPokemonStats()
loadPokemonTypes()
loadPokemonTypesPast()
loadRegionNames()
loadStatNames()
loadLocations()
loadVersions()
loadVersionNames()
loadLocationAreas()
loadEncounterSlots()
loadEncounters()
loadEncounterConditionValueMap()
loadItems()
loadBerries()
loadBerryFirmnessNames()
loadBerryFlavors()
loadEvolutionChains()
loadItemProse()
loadItemNames()
loadItemFlavorText()
loadItemGameIndices()
loadItemFlagMap()
loadTypeEfficacy()
loadTypeEfficacyPast()
loadTypeGameIndices()
loadTypeNames()
loadVersionGroupPokemonMoveMethods()
loadVersionGroupRegions()
loadLocationAreaEncounterRates()
loadLocationAreaProse()
loadLocationGameIndices()
loadLocationNames()
loadMachines()
loadMoveBattleStyles()
loadMoveBattleStyleProse()
loadMoveChangelog()
loadMoveDamageClassProse()
loadMoveEffectChangelog()
loadMoveEffectChangelogProse()
loadMoveEffectProse()
loadMoveFlags()
loadMoveFlagProse()
loadMoveFlagMap()
loadMoveMetaAilments()
loadMoveMetaAilmentNames()
loadMoveMetaCategories()
loadMoveMetaCategoryProse()
loadMoveMetaStatChanges()
loadMoveFlavorText()
loadMoveNames()
loadMoveMeta()
loadMoveTargetProse()
loadPalParkAreas()
loadPalParkAreaNames()
loadPalPark()
loadNatures()
loadNatureNames()
loadNatureBattleStylePreferences()
loadPokeathlonStats()
loadPokeathlonStatNames()
loadNaturePokeathlonStats()
loadPokedexes()
loadPokedexProse()
loadPokedexVersionGroups()
loadPokemonAbilities()
loadPokemonDexNumbers()
loadPokemonEggGroups()
loadPokemonForms()
loadPokemonGameIndices()
loadPokemonFormTypes()
loadPokemonFormPokeathlonStats()
loadPokemonFormNames()
loadPokemonFormGenerations()
loadPokemonItems()
loadPokemonEvolution()
loadPokemonMoves()
loadPokemonSpeciesFlavorText()
loadLanguageNames()

try! realmDB.commitWrite()
