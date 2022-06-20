func loadAbilities() {
   for objectJSON in storedData["abilities"]! {
       let realmObject = Ability(value: objectJSON)
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       realmDB.add(realmObject)
   }
}

func loadAbilityChangelog() {
   for objectJSON in storedData["ability_changelog"]! {
       let realmObject = AbilityChangelog(value: objectJSON)
        realmObject.ability = realmDB.object(ofType: Ability.self, forPrimaryKey: objectJSON["abilityId"])
        realmObject.changedInVersionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["changedInVersionGroupId"])
       realmDB.add(realmObject)
   }
}

func loadAbilityChangelogProse() {
   for objectJSON in storedData["ability_changelog_prose"]! {
       let realmObject = AbilityChangelogProse(value: objectJSON)
        realmObject.abilityChangelog = realmDB.object(ofType: AbilityChangelog.self, forPrimaryKey: objectJSON["abilityChangelogId"])
       realmDB.add(realmObject)
   }
}

func loadAbilityFlavorText() {
   for objectJSON in storedData["ability_flavor_text"]! {
       let realmObject = AbilityFlavorText(value: objectJSON)
        realmObject.ability = realmDB.object(ofType: Ability.self, forPrimaryKey: objectJSON["abilityId"])
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
        realmObject.language = realmDB.object(ofType: Language.self, forPrimaryKey: objectJSON["languageId"])
       realmDB.add(realmObject)
   }
}

func loadAbilityNames() {
   for objectJSON in storedData["ability_names"]! {
       let realmObject = AbilityName(value: objectJSON)
        realmObject.ability = realmDB.object(ofType: Ability.self, forPrimaryKey: objectJSON["abilityId"])
       realmDB.add(realmObject)
   }
}

func loadAbilityProse() {
   for objectJSON in storedData["ability_prose"]! {
       let realmObject = AbilityProse(value: objectJSON)
        realmObject.ability = realmDB.object(ofType: Ability.self, forPrimaryKey: objectJSON["abilityId"])
       realmDB.add(realmObject)
   }
}

func loadBerries() {
   for objectJSON in storedData["berries"]! {
       let realmObject = Berry(value: objectJSON)
        realmObject.item = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["itemId"])
        realmObject.firmness = realmDB.object(ofType: BerryFirmness.self, forPrimaryKey: objectJSON["firmnessId"])
        realmObject.naturalGiftType = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["naturalGiftTypeId"])
       realmDB.add(realmObject)
   }
}

func loadBerryFirmness() {
   for objectJSON in storedData["berry_firmness"]! {
       let realmObject = BerryFirmness(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadBerryFirmnessNames() {
   for objectJSON in storedData["berry_firmness_names"]! {
       let realmObject = BerryFirmnessName(value: objectJSON)
        realmObject.berryFirmness = realmDB.object(ofType: BerryFirmness.self, forPrimaryKey: objectJSON["berryFirmnessId"])
       realmDB.add(realmObject)
   }
}

func loadBerryFlavors() {
   for objectJSON in storedData["berry_flavors"]! {
       let realmObject = BerryFlavor(value: objectJSON)
        realmObject.berry = realmDB.object(ofType: Berry.self, forPrimaryKey: objectJSON["berryId"])
        realmObject.contestType = realmDB.object(ofType: ContestType.self, forPrimaryKey: objectJSON["contestTypeId"])
       realmDB.add(realmObject)
   }
}

func loadCharacteristicText() {
   for objectJSON in storedData["characteristic_text"]! {
       let realmObject = CharacteristicText(value: objectJSON)
        realmObject.characteristic = realmDB.object(ofType: Characteristic.self, forPrimaryKey: objectJSON["characteristicId"])
       realmDB.add(realmObject)
   }
}

func loadCharacteristics() {
   for objectJSON in storedData["characteristics"]! {
       let realmObject = Characteristic(value: objectJSON)
        realmObject.stat = realmDB.object(ofType: Stat.self, forPrimaryKey: objectJSON["statId"])
       realmDB.add(realmObject)
   }
}

func loadContestCombos() {
   for objectJSON in storedData["contest_combos"]! {
       let realmObject = ContestCombo(value: objectJSON)
        realmObject.firstMove = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["firstMoveId"])
        realmObject.secondMove = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["secondMoveId"])
       realmDB.add(realmObject)
   }
}

func loadContestEffectProse() {
   for objectJSON in storedData["contest_effect_prose"]! {
       let realmObject = ContestEffectProse(value: objectJSON)
        realmObject.contestEffect = realmDB.object(ofType: ContestEffect.self, forPrimaryKey: objectJSON["contestEffectId"])
       realmDB.add(realmObject)
   }
}

func loadContestEffects() {
   for objectJSON in storedData["contest_effects"]! {
       let realmObject = ContestEffect(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadContestTypeNames() {
   for objectJSON in storedData["contest_type_names"]! {
       let realmObject = ContestTypeName(value: objectJSON)
        realmObject.contestType = realmDB.object(ofType: ContestType.self, forPrimaryKey: objectJSON["contestTypeId"])
       realmDB.add(realmObject)
   }
}

func loadContestTypes() {
   for objectJSON in storedData["contest_types"]! {
       let realmObject = ContestType(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadEggGroupProse() {
   for objectJSON in storedData["egg_group_prose"]! {
       let realmObject = EggGroupProse(value: objectJSON)
        realmObject.eggGroup = realmDB.object(ofType: EggGroup.self, forPrimaryKey: objectJSON["eggGroupId"])
       realmDB.add(realmObject)
   }
}

func loadEggGroups() {
   for objectJSON in storedData["egg_groups"]! {
       let realmObject = EggGroup(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadEncounterConditionProse() {
   for objectJSON in storedData["encounter_condition_prose"]! {
       let realmObject = EncounterConditionProse(value: objectJSON)
        realmObject.encounterCondition = realmDB.object(ofType: EncounterCondition.self, forPrimaryKey: objectJSON["encounterConditionId"])
       realmDB.add(realmObject)
   }
}

func loadEncounterConditionValueMap() {
   for objectJSON in storedData["encounter_condition_value_map"]! {
       let realmObject = EncounterConditionValueMap(value: objectJSON)
        realmObject.encounter = realmDB.object(ofType: Encounter.self, forPrimaryKey: objectJSON["encounterId"])
        realmObject.encounterConditionValue = realmDB.object(ofType: EncounterConditionValue.self, forPrimaryKey: objectJSON["encounterConditionValueId"])
       realmDB.add(realmObject)
   }
}

func loadEncounterConditionValueProse() {
   for objectJSON in storedData["encounter_condition_value_prose"]! {
       let realmObject = EncounterConditionValueProse(value: objectJSON)
        realmObject.encounterConditionValue = realmDB.object(ofType: EncounterConditionValue.self, forPrimaryKey: objectJSON["encounterConditionValueId"])
       realmDB.add(realmObject)
   }
}

func loadEncounterConditionValues() {
   for objectJSON in storedData["encounter_condition_values"]! {
       let realmObject = EncounterConditionValue(value: objectJSON)
        realmObject.encounterCondition = realmDB.object(ofType: EncounterCondition.self, forPrimaryKey: objectJSON["encounterConditionId"])
       realmDB.add(realmObject)
   }
}

func loadEncounterConditions() {
   for objectJSON in storedData["encounter_conditions"]! {
       let realmObject = EncounterCondition(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadEncounterMethodProse() {
   for objectJSON in storedData["encounter_method_prose"]! {
       let realmObject = EncounterMethodProse(value: objectJSON)
        realmObject.encounterMethod = realmDB.object(ofType: EncounterMethod.self, forPrimaryKey: objectJSON["encounterMethodId"])
       realmDB.add(realmObject)
   }
}

func loadEncounterMethods() {
   for objectJSON in storedData["encounter_methods"]! {
       let realmObject = EncounterMethod(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadEncounterSlots() {
   for objectJSON in storedData["encounter_slots"]! {
       let realmObject = EncounterSlot(value: objectJSON)
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
        realmObject.encounterMethod = realmDB.object(ofType: EncounterMethod.self, forPrimaryKey: objectJSON["encounterMethodId"])
       realmDB.add(realmObject)
   }
}

func loadEncounters() {
   for objectJSON in storedData["encounters"]! {
       let realmObject = Encounter(value: objectJSON)
        realmObject.version = realmDB.object(ofType: Version.self, forPrimaryKey: objectJSON["versionId"])
        realmObject.locationArea = realmDB.object(ofType: LocationArea.self, forPrimaryKey: objectJSON["locationAreaId"])
        realmObject.encounterSlot = realmDB.object(ofType: EncounterSlot.self, forPrimaryKey: objectJSON["encounterSlotId"])
        realmObject.pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["pokemonId"])
       realmDB.add(realmObject)
   }
}

func loadEvolutionChains() {
   for objectJSON in storedData["evolution_chains"]! {
       let realmObject = EvolutionChain(value: objectJSON)
        realmObject.babyTriggerItem = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["babyTriggerItemId"] as? Int ?? 0)
       realmDB.add(realmObject)
   }
}

func loadEvolutionTriggerProse() {
   for objectJSON in storedData["evolution_trigger_prose"]! {
       let realmObject = EvolutionTriggerProse(value: objectJSON)
        realmObject.evolutionTrigger = realmDB.object(ofType: EvolutionTrigger.self, forPrimaryKey: objectJSON["evolutionTriggerId"])
       realmDB.add(realmObject)
   }
}

func loadEvolutionTriggers() {
   for objectJSON in storedData["evolution_triggers"]! {
       let realmObject = EvolutionTrigger(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadExperience() {
   for objectJSON in storedData["experience"]! {
       let realmObject = Experience(value: objectJSON)
        realmObject.growthRate = realmDB.object(ofType: GrowthRate.self, forPrimaryKey: objectJSON["growthRateId"])
       realmDB.add(realmObject)
   }
}

func loadGenders() {
   for objectJSON in storedData["genders"]! {
       let realmObject = Gender(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadGenerationNames() {
   for objectJSON in storedData["generation_names"]! {
       let realmObject = GenerationName(value: objectJSON)
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       realmDB.add(realmObject)
   }
}

func loadGenerations() {
   for objectJSON in storedData["generations"]! {
       let realmObject = Generation(value: objectJSON)
        realmObject.mainRegion = realmDB.object(ofType: Region.self, forPrimaryKey: objectJSON["mainRegionId"])
       realmDB.add(realmObject)
   }
}

func loadGrowthRateProse() {
   for objectJSON in storedData["growth_rate_prose"]! {
       let realmObject = GrowthRateProse(value: objectJSON)
        realmObject.growthRate = realmDB.object(ofType: GrowthRate.self, forPrimaryKey: objectJSON["growthRateId"])
       realmDB.add(realmObject)
   }
}

func loadGrowthRates() {
   for objectJSON in storedData["growth_rates"]! {
       let realmObject = GrowthRate(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadItemCategories() {
   for objectJSON in storedData["item_categories"]! {
       let realmObject = ItemCategory(value: objectJSON)
        realmObject.pocket = realmDB.object(ofType: ItemPocket.self, forPrimaryKey: objectJSON["pocketId"])
       realmDB.add(realmObject)
   }
}

func loadItemCategoryProse() {
   for objectJSON in storedData["item_category_prose"]! {
       let realmObject = ItemCategoryProse(value: objectJSON)
        realmObject.itemCategory = realmDB.object(ofType: ItemCategory.self, forPrimaryKey: objectJSON["itemCategoryId"])
       realmDB.add(realmObject)
   }
}

func loadItemFlagMap() {
   for objectJSON in storedData["item_flag_map"]! {
       let realmObject = ItemFlagMap(value: objectJSON)
        realmObject.item = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["itemId"])
        realmObject.itemFlag = realmDB.object(ofType: ItemFlag.self, forPrimaryKey: objectJSON["itemFlagId"])
       realmDB.add(realmObject)
   }
}

func loadItemFlagProse() {
   for objectJSON in storedData["item_flag_prose"]! {
       let realmObject = ItemFlagProse(value: objectJSON)
       realmObject.itemFlag = realmDB.object(ofType: ItemFlag.self, forPrimaryKey: objectJSON["itemFlagId"])
       realmObject.itemFlagProseDescription = objectJSON["description"] as? String ?? ""
       realmDB.add(realmObject)
   }
}

func loadItemFlags() {
   for objectJSON in storedData["item_flags"]! {
       let realmObject = ItemFlag(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadItemFlavorText() {
    for objectJSON in storedData["item_flavor_text"]! {
        let realmObject = ItemFlavorText(value: objectJSON)
        realmObject.item = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["itemId"])
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
        realmDB.add(realmObject)
    }
}

func loadItemFlingEffectProse() {
   for objectJSON in storedData["item_fling_effect_prose"]! {
       let realmObject = ItemFlingEffectProse(value: objectJSON)
        realmObject.itemFlingEffect = realmDB.object(ofType: ItemFlingEffect.self, forPrimaryKey: objectJSON["itemFlingEffectId"])
       realmDB.add(realmObject)
   }
}

func loadItemFlingEffects() {
   for objectJSON in storedData["item_fling_effects"]! {
       let realmObject = ItemFlingEffect(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadItemGameIndices() {
   for objectJSON in storedData["item_game_indices"]! {
       let realmObject = ItemGameIndex(value: objectJSON)
        realmObject.item = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["itemId"])
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       realmDB.add(realmObject)
   }
}

func loadItemNames() {
   for objectJSON in storedData["item_names"]! {
       let realmObject = ItemName(value: objectJSON)
        realmObject.item = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["itemId"])
       realmDB.add(realmObject)
   }
}

func loadItemPocketNames() {
   for objectJSON in storedData["item_pocket_names"]! {
       let realmObject = ItemPocketName(value: objectJSON)
        realmObject.itemPocket = realmDB.object(ofType: ItemPocket.self, forPrimaryKey: objectJSON["itemPocketId"])
       realmDB.add(realmObject)
   }
}

func loadItemPockets() {
   for objectJSON in storedData["item_pockets"]! {
       let realmObject = ItemPocket(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadItemProse() {
   for objectJSON in storedData["item_prose"]! {
       let realmObject = ItemProse(value: objectJSON)
        realmObject.item = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["itemId"])
       realmDB.add(realmObject)
   }
}

func loadItems() {
   for objectJSON in storedData["items"]! {
       let realmObject = Item(value: objectJSON)
        realmObject.category = realmDB.object(ofType: ItemCategory.self, forPrimaryKey: objectJSON["categoryId"])
        realmObject.flingEffect = realmDB.object(ofType: ItemFlingEffect.self, forPrimaryKey: objectJSON["flingEffectId"] as? Int ?? 0)
       realmDB.add(realmObject)
   }
}

func loadLanguageNames() {
   for objectJSON in storedData["language_names"]! {
       let realmObject = LanguageName(value: objectJSON)
       realmObject.language = realmDB.object(ofType: Language.self, forPrimaryKey: objectJSON["languageId"])
       realmObject.localLanguage = realmDB.object(ofType: Language.self, forPrimaryKey: objectJSON["localLanguageId"])
       realmDB.add(realmObject)
   }
}

func loadLanguages() {
   for objectJSON in storedData["languages"]! {
       let realmObject = Language(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadLocationAreaEncounterRates() {
   for objectJSON in storedData["location_area_encounter_rates"]! {
       let realmObject = LocationAreaEncounterRate(value: objectJSON)
        realmObject.locationArea = realmDB.object(ofType: LocationArea.self, forPrimaryKey: objectJSON["locationAreaId"])
        realmObject.encounterMethod = realmDB.object(ofType: EncounterMethod.self, forPrimaryKey: objectJSON["encounterMethodId"])
        realmObject.version = realmDB.object(ofType: Version.self, forPrimaryKey: objectJSON["versionId"])
       realmDB.add(realmObject)
   }
}

func loadLocationAreaProse() {
   for objectJSON in storedData["location_area_prose"]! {
       let realmObject = LocationAreaProse(value: objectJSON)
        realmObject.locationArea = realmDB.object(ofType: LocationArea.self, forPrimaryKey: objectJSON["locationAreaId"])
       realmDB.add(realmObject)
   }
}

func loadLocationAreas() {
   for objectJSON in storedData["location_areas"]! {
       let realmObject = LocationArea(value: objectJSON)
        realmObject.location = realmDB.object(ofType: Location.self, forPrimaryKey: objectJSON["locationId"])
       realmDB.add(realmObject)
   }
}

func loadLocationGameIndices() {
   for objectJSON in storedData["location_game_indices"]! {
       let realmObject = LocationGameIndex(value: objectJSON)
        realmObject.location = realmDB.object(ofType: Location.self, forPrimaryKey: objectJSON["locationId"])
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       realmDB.add(realmObject)
   }
}

func loadLocationNames() {
   for objectJSON in storedData["location_names"]! {
       let realmObject = LocationName(value: objectJSON)
        realmObject.location = realmDB.object(ofType: Location.self, forPrimaryKey: objectJSON["locationId"])
       realmDB.add(realmObject)
   }
}

func loadLocations() {
   for objectJSON in storedData["locations"]! {
       let realmObject = Location(value: objectJSON)
        realmObject.region = realmDB.object(ofType: Region.self, forPrimaryKey: objectJSON["regionId"] as? Int ?? 0)
       realmDB.add(realmObject)
   }
}

func loadMachines() {
   for objectJSON in storedData["machines"]! {
       let realmObject = Machine(value: objectJSON)
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
        realmObject.item = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["itemId"])
        realmObject.move = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["moveId"])
       realmDB.add(realmObject)
   }
}

func loadMoveBattleStyleProse() {
   for objectJSON in storedData["move_battle_style_prose"]! {
       let realmObject = MoveBattleStyleProse(value: objectJSON)
        realmObject.moveBattleStyle = realmDB.object(ofType: MoveBattleStyle.self, forPrimaryKey: objectJSON["moveBattleStyleId"])
       realmDB.add(realmObject)
   }
}

func loadMoveBattleStyles() {
   for objectJSON in storedData["move_battle_styles"]! {
       let realmObject = MoveBattleStyle(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadMoveChangelog() {
   for objectJSON in storedData["move_changelog"]! {
       let realmObject = MoveChangelog(value: objectJSON)
        realmObject.move = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["moveId"] as? Int ?? 0)
        realmObject.changedInVersionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["changedInVersionGroupId"])
        realmObject.type = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["typeId"] as? Int ?? 0)
        realmObject.target = realmDB.object(ofType: MoveTarget.self, forPrimaryKey: objectJSON["targetId"] as? Int ?? 0)
        realmObject.effect = realmDB.object(ofType: MoveEffect.self, forPrimaryKey: objectJSON["effectId"] as? Int ?? 0)
       realmDB.add(realmObject)
   }
}

func loadMoveDamageClassProse() {
   for objectJSON in storedData["move_damage_class_prose"]! {
       let realmObject = MoveDamageClassProse(value: objectJSON)
        realmObject.moveDamageClass = realmDB.object(ofType: MoveDamageClass.self, forPrimaryKey: objectJSON["moveDamageClassId"])
       realmObject.moveProseDescription = objectJSON["description"] as? String ?? ""
       realmDB.add(realmObject)
   }
}

func loadMoveDamageClasses() {
   for objectJSON in storedData["move_damage_classes"]! {
       let realmObject = MoveDamageClass(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadMoveEffectChangelog() {
   for objectJSON in storedData["move_effect_changelog"]! {
       let realmObject = MoveEffectChangelog(value: objectJSON)
        realmObject.effect = realmDB.object(ofType: MoveEffect.self, forPrimaryKey: objectJSON["effectId"])
        realmObject.changedInVersionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["changedInVersionGroupId"])
       realmDB.add(realmObject)
   }
}

func loadMoveEffectChangelogProse() {
   for objectJSON in storedData["move_effect_changelog_prose"]! {
       let realmObject = MoveEffectChangelogProse(value: objectJSON)
        realmObject.moveEffectChangelog = realmDB.object(ofType: MoveEffectChangelog.self, forPrimaryKey: objectJSON["moveEffectChangelogId"])
       realmDB.add(realmObject)
   }
}

func loadMoveEffectProse() {
   for objectJSON in storedData["move_effect_prose"]! {
       let realmObject = MoveEffectProse(value: objectJSON)
        realmObject.moveEffect = realmDB.object(ofType: MoveEffect.self, forPrimaryKey: objectJSON["moveEffectId"])
       realmDB.add(realmObject)
   }
}

func loadMoveEffects() {
   for objectJSON in storedData["move_effects"]! {
       let realmObject = MoveEffect(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadMoveFlagMap() {
   for objectJSON in storedData["move_flag_map"]! {
       let realmObject = MoveFlagMap(value: objectJSON)
        realmObject.move = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["moveId"])
        realmObject.moveFlag = realmDB.object(ofType: MoveFlag.self, forPrimaryKey: objectJSON["moveFlagId"])
       realmDB.add(realmObject)
   }
}

func loadMoveFlagProse() {
   for objectJSON in storedData["move_flag_prose"]! {
       let realmObject = MoveFlagProse(value: objectJSON)
        realmObject.moveFlag = realmDB.object(ofType: MoveFlag.self, forPrimaryKey: objectJSON["moveFlagId"])
       realmObject.moveProseDescription = objectJSON["description"] as? String ?? ""
       realmDB.add(realmObject)
   }
}

func loadMoveFlags() {
   for objectJSON in storedData["move_flags"]! {
       let realmObject = MoveFlag(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadMoveFlavorText() {
    for objectJSON in storedData["move_flavor_text"]! {
        let realmObject = MoveFlavorText(value: objectJSON)
        realmObject.move = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["moveId"])
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
        realmDB.add(realmObject)
    }
}

func loadMoveMeta() {
   for objectJSON in storedData["move_meta"]! {
       let realmObject = MoveMeta(value: objectJSON)
        realmObject.move = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["moveId"])
        realmObject.metaCategory = realmDB.object(ofType: MoveMetaCategory.self, forPrimaryKey: objectJSON["metaCategoryId"])
        realmObject.metaAilment = realmDB.object(ofType: MoveMetaAilment.self, forPrimaryKey: objectJSON["metaAilmentId"])
       realmDB.add(realmObject)
   }
}

func loadMoveMetaAilmentNames() {
   for objectJSON in storedData["move_meta_ailment_names"]! {
       let realmObject = MoveMetaAilmentName(value: objectJSON)
        realmObject.moveMetaAilment = realmDB.object(ofType: MoveMetaAilment.self, forPrimaryKey: objectJSON["moveMetaAilmentId"])
       realmDB.add(realmObject)
   }
}

func loadMoveMetaAilments() {
   for objectJSON in storedData["move_meta_ailments"]! {
       let realmObject = MoveMetaAilment(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadMoveMetaCategories() {
   for objectJSON in storedData["move_meta_categories"]! {
       let realmObject = MoveMetaCategory(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadMoveMetaCategoryProse() {
   for objectJSON in storedData["move_meta_category_prose"]! {
       let realmObject = MoveMetaCategoryProse(value: objectJSON)
        realmObject.moveMetaCategory = realmDB.object(ofType: MoveMetaCategory.self, forPrimaryKey: objectJSON["moveMetaCategoryId"])
       realmObject.moveMetaCategoryProseDescription = objectJSON["description"] as? String ?? ""
       realmDB.add(realmObject)
   }
}

func loadMoveMetaStatChanges() {
   for objectJSON in storedData["move_meta_stat_changes"]! {
       let realmObject = MoveMetaStatChange(value: objectJSON)
        realmObject.move = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["moveId"])
        realmObject.stat = realmDB.object(ofType: Stat.self, forPrimaryKey: objectJSON["statId"])
       realmDB.add(realmObject)
   }
}

func loadMoveNames() {
   for objectJSON in storedData["move_names"]! {
       let realmObject = MoveName(value: objectJSON)
        realmObject.move = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["moveId"])
       realmDB.add(realmObject)
   }
}

func loadMoveTargetProse() {
   for objectJSON in storedData["move_target_prose"]! {
       let realmObject = MoveTargetProse(value: objectJSON)
        realmObject.moveTarget = realmDB.object(ofType: MoveTarget.self, forPrimaryKey: objectJSON["moveTargetId"])
       realmObject.targetDescription = objectJSON["description"] as? String ?? ""
       realmDB.add(realmObject)
   }
}

func loadMoveTargets() {
   for objectJSON in storedData["move_targets"]! {
       let realmObject = MoveTarget(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadMoves() {
   for objectJSON in storedData["moves"]! {
       let realmObject = Move(value: objectJSON)
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
        realmObject.type = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["typeId"])
        realmObject.target = realmDB.object(ofType: MoveTarget.self, forPrimaryKey: objectJSON["targetId"])
        realmObject.damageClass = realmDB.object(ofType: MoveDamageClass.self, forPrimaryKey: objectJSON["damageClassId"])
        realmObject.effect = realmDB.object(ofType: MoveEffect.self, forPrimaryKey: objectJSON["effectId"])
       if let contestTypeId = objectJSON["contestTypeId"] as? Int {
           realmObject.contestType = realmDB.object(ofType: ContestType.self, forPrimaryKey: contestTypeId)
       }
       
       if let contestEffectId = objectJSON["contestEffectId"] as? Int {
           realmObject.contestEffect = realmDB.object(ofType: ContestEffect.self, forPrimaryKey: contestEffectId)
       }
       
       if let superContestEffectId = objectJSON["superContestEffectId"] as? Int {
           realmObject.superContestEffect = realmDB.object(ofType: SuperContestEffect.self, forPrimaryKey: superContestEffectId)
       }
        
       realmDB.add(realmObject)
   }
}

func loadNatureBattleStylePreferences() {
   for objectJSON in storedData["nature_battle_style_preferences"]! {
       let realmObject = NatureBattleStylePreference(value: objectJSON)
        realmObject.nature = realmDB.object(ofType: Nature.self, forPrimaryKey: objectJSON["natureId"])
        realmObject.moveBattleStyle = realmDB.object(ofType: MoveBattleStyle.self, forPrimaryKey: objectJSON["moveBattleStyleId"])
       realmDB.add(realmObject)
   }
}

func loadNatureNames() {
   for objectJSON in storedData["nature_names"]! {
       let realmObject = NatureName(value: objectJSON)
        realmObject.nature = realmDB.object(ofType: Nature.self, forPrimaryKey: objectJSON["natureId"])
       realmDB.add(realmObject)
   }
}

func loadNaturePokeathlonStats() {
   for objectJSON in storedData["nature_pokeathlon_stats"]! {
       let realmObject = NaturePokeathlonStat(value: objectJSON)
        realmObject.nature = realmDB.object(ofType: Nature.self, forPrimaryKey: objectJSON["natureId"])
        realmObject.pokeathlonStat = realmDB.object(ofType: PokeathlonStat.self, forPrimaryKey: objectJSON["pokeathlonStatId"])
       realmDB.add(realmObject)
   }
}

func loadNatures() {
   for objectJSON in storedData["natures"]! {
       let realmObject = Nature(value: objectJSON)
        realmObject.decreasedStat = realmDB.object(ofType: Stat.self, forPrimaryKey: objectJSON["decreasedStatId"])
        realmObject.increasedStat = realmDB.object(ofType: Stat.self, forPrimaryKey: objectJSON["increasedStatId"])
        realmObject.hatesFlavor = realmDB.object(ofType: ContestType.self, forPrimaryKey: objectJSON["hatesFlavorId"])
        realmObject.likesFlavor = realmDB.object(ofType: ContestType.self, forPrimaryKey: objectJSON["likesFlavorId"])
       realmDB.add(realmObject)
   }
}

func loadPalPark() {
   for objectJSON in storedData["pal_park"]! {
       let realmObject = PalParkAreaSpecies(value: objectJSON)
        realmObject.species = realmDB.object(ofType: PokemonSpecies.self, forPrimaryKey: objectJSON["speciesId"])
        realmObject.area = realmDB.object(ofType: PalParkArea.self, forPrimaryKey: objectJSON["areaId"])
       realmDB.add(realmObject)
   }
}

func loadPalParkAreaNames() {
   for objectJSON in storedData["pal_park_area_names"]! {
       let realmObject = PalParkAreaName(value: objectJSON)
        realmObject.palParkArea = realmDB.object(ofType: PalParkArea.self, forPrimaryKey: objectJSON["palParkAreaId"])
       realmDB.add(realmObject)
   }
}

func loadPalParkAreas() {
   for objectJSON in storedData["pal_park_areas"]! {
       let realmObject = PalParkArea(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadPokeathlonStatNames() {
   for objectJSON in storedData["pokeathlon_stat_names"]! {
       let realmObject = PokeathlonStatName(value: objectJSON)
        realmObject.pokeathlonStat = realmDB.object(ofType: PokeathlonStat.self, forPrimaryKey: objectJSON["pokeathlonStatId"])
       realmDB.add(realmObject)
   }
}

func loadPokeathlonStats() {
   for objectJSON in storedData["pokeathlon_stats"]! {
       let realmObject = PokeathlonStat(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadPokedexProse() {
   for objectJSON in storedData["pokedex_prose"]! {
       let realmObject = PokedexProse(value: objectJSON)
        realmObject.pokedex = realmDB.object(ofType: Pokedex.self, forPrimaryKey: objectJSON["pokedexId"])
       realmObject.pokedexProseDescription = objectJSON["description"] as? String ?? ""
       realmDB.add(realmObject)
   }
}

func loadPokedexVersionGroups() {
   for objectJSON in storedData["pokedex_version_groups"]! {
       let realmObject = PokedexVersionGroup(value: objectJSON)
        realmObject.pokedex = realmDB.object(ofType: Pokedex.self, forPrimaryKey: objectJSON["pokedexId"])
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
       realmDB.add(realmObject)
   }
}

func loadPokedexes() {
   for objectJSON in storedData["pokedexes"]! {
       let realmObject = Pokedex(value: objectJSON)
        realmObject.region = realmDB.object(ofType: Region.self, forPrimaryKey: objectJSON["regionId"] as? Int ?? 0)
       realmDB.add(realmObject)
   }
}

func loadPokemon() {
   for objectJSON in storedData["pokemon"]! {
       let realmObject = Pokemon(value: objectJSON)
       realmObject.species = realmDB.object(ofType: PokemonSpecies.self, forPrimaryKey: objectJSON["speciesId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonAbilities() {
   for objectJSON in storedData["pokemon_abilities"]! {
       let realmObject = PokemonAbility(value: objectJSON)
        realmObject.pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["pokemonId"])
        realmObject.ability = realmDB.object(ofType: Ability.self, forPrimaryKey: objectJSON["abilityId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonColorNames() {
   for objectJSON in storedData["pokemon_color_names"]! {
       let realmObject = PokemonColorName(value: objectJSON)
        realmObject.pokemonColor = realmDB.object(ofType: PokemonColor.self, forPrimaryKey: objectJSON["pokemonColorId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonColors() {
   for objectJSON in storedData["pokemon_colors"]! {
       let realmObject = PokemonColor(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadPokemonDexNumbers() {
   for objectJSON in storedData["pokemon_dex_numbers"]! {
       let realmObject = PokemonDexNumber(value: objectJSON)
       
        realmObject.pokedex = realmDB.object(ofType: Pokedex.self, forPrimaryKey: objectJSON["pokedexId"])
       
       var pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["speciesId"])!
       
       // 16 - 25 is alola, check for alola forms
       if realmObject.pokedex!.id >= 16 && realmObject.pokedex!.id <= 25 {
           if let otherPokemon = realmDB.objects(Pokemon.self).filter({ $0.identifier ==  "\(pokemon.identifier)-alola"}).first {
               pokemon = otherPokemon
           }
       }
       
       // 27 - 29 is galar, check for galar forms
       if realmObject.pokedex!.id >= 27 && realmObject.pokedex!.id <= 29 {
           if let otherPokemon = realmDB.objects(Pokemon.self).filter({ $0.identifier ==  "\(pokemon.identifier)-galar"}).first {
               pokemon = otherPokemon
           }
       }
       
       realmObject.pokemon = pokemon
       
       realmDB.add(realmObject)
   }
}

func loadPokemonEggGroups() {
   for objectJSON in storedData["pokemon_egg_groups"]! {
       let realmObject = PokemonEggGroup(value: objectJSON)
        realmObject.species = realmDB.object(ofType: PokemonSpecies.self, forPrimaryKey: objectJSON["speciesId"])
        realmObject.eggGroup = realmDB.object(ofType: EggGroup.self, forPrimaryKey: objectJSON["eggGroupId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonEvolution() {
   for objectJSON in storedData["pokemon_evolution"]! {
       let realmObject = PokemonEvolution(value: objectJSON)
        realmObject.evolvedPokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["evolvedSpeciesId"] as? Int ?? 0)
        realmObject.evolutionTrigger = realmDB.object(ofType: EvolutionTrigger.self, forPrimaryKey: objectJSON["evolutionTriggerId"] as? Int ?? 0)
        realmObject.triggerItem = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["triggerItemId"] as? Int ?? 0)
        realmObject.gender = realmDB.object(ofType: Gender.self, forPrimaryKey: objectJSON["genderId"] as? Int ?? 0)
        realmObject.location = realmDB.object(ofType: Location.self, forPrimaryKey: objectJSON["locationId"] as? Int ?? 0)
        realmObject.heldItem = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["heldItemId"] as? Int ?? 0)
        realmObject.knownMove = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["knownMoveId"] as? Int ?? 0)
        realmObject.knownMoveType = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["knownMoveTypeId"] as? Int ?? 0)
        realmObject.partySpecies = realmDB.object(ofType: PokemonSpecies.self, forPrimaryKey: objectJSON["partySpeciesId"] as? Int ?? 0)
        realmObject.partyType = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["partyTypeId"] as? Int ?? 0)
        realmObject.tradeSpecies = realmDB.object(ofType: PokemonSpecies.self, forPrimaryKey: objectJSON["tradeSpeciesId"] as? Int ?? 0)
       realmDB.add(realmObject)
   }
}

func loadPokemonFormGenerations() {
   for objectJSON in storedData["pokemon_form_generations"]! {
       let realmObject = PokemonFormGeneration(value: objectJSON)
        realmObject.pokemonForm = realmDB.object(ofType: PokemonForm.self, forPrimaryKey: objectJSON["pokemonFormId"])
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonFormNames() {
   for objectJSON in storedData["pokemon_form_names"]! {
       let realmObject = PokemonFormName(value: objectJSON)
        realmObject.pokemonForm = realmDB.object(ofType: PokemonForm.self, forPrimaryKey: objectJSON["pokemonFormId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonFormPokeathlonStats() {
   for objectJSON in storedData["pokemon_form_pokeathlon_stats"]! {
       let realmObject = PokemonFormPokeathlonStat(value: objectJSON)
        realmObject.pokemonForm = realmDB.object(ofType: PokemonForm.self, forPrimaryKey: objectJSON["pokemonFormId"])
        realmObject.pokeathlonStat = realmDB.object(ofType: PokeathlonStat.self, forPrimaryKey: objectJSON["pokeathlonStatId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonFormTypes() {
   for objectJSON in storedData["pokemon_form_types"]! {
       let realmObject = PokemonFormType(value: objectJSON)
        realmObject.pokemonForm = realmDB.object(ofType: PokemonForm.self, forPrimaryKey: objectJSON["pokemonFormId"])
        realmObject.type = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["typeId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonForms() {
   for objectJSON in storedData["pokemon_forms"]! {
       let realmObject = PokemonForm(value: objectJSON)
        realmObject.pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["pokemonId"])
        realmObject.introducedInVersionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["introducedInVersionGroupId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonGameIndices() {
   for objectJSON in storedData["pokemon_game_indices"]! {
       let realmObject = PokemonGameIndex(value: objectJSON)
        realmObject.pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["pokemonId"])
        realmObject.version = realmDB.object(ofType: Version.self, forPrimaryKey: objectJSON["versionId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonHabitatNames() {
   for objectJSON in storedData["pokemon_habitat_names"]! {
       let realmObject = PokemonHabitatName(value: objectJSON)
        realmObject.pokemonHabitat = realmDB.object(ofType: PokemonHabitat.self, forPrimaryKey: objectJSON["pokemonHabitatId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonHabitats() {
   for objectJSON in storedData["pokemon_habitats"]! {
       let realmObject = PokemonHabitat(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadPokemonItems() {
   for objectJSON in storedData["pokemon_items"]! {
       let realmObject = PokemonItem(value: objectJSON)
        realmObject.pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["pokemonId"])
        realmObject.version = realmDB.object(ofType: Version.self, forPrimaryKey: objectJSON["versionId"])
        realmObject.item = realmDB.object(ofType: Item.self, forPrimaryKey: objectJSON["itemId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonMoveMethodProse() {
   for objectJSON in storedData["pokemon_move_method_prose"]! {
       let realmObject = PokemonMoveMethodProse(value: objectJSON)
        realmObject.pokemonMoveMethod = realmDB.object(ofType: PokemonMoveMethod.self, forPrimaryKey: objectJSON["pokemonMoveMethodId"])
       realmObject.pokemonMoveMethodProseDescription = objectJSON["description"] as? String ?? ""
       realmDB.add(realmObject)
   }
}

func loadPokemonMoveMethods() {
   for objectJSON in storedData["pokemon_move_methods"]! {
       let realmObject = PokemonMoveMethod(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadPokemonMoves() {
    for objectJSON in storedData["pokemon_moves"]! {
        let realmObject = PokemonMove(value: objectJSON)
        realmObject.pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["pokemonId"])
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
        realmObject.move = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["moveId"])
        realmObject.pokemonMoveMethod = realmDB.object(ofType: PokemonMoveMethod.self, forPrimaryKey: objectJSON["pokemonMoveMethodId"])
        realmDB.add(realmObject)
    }
}

func loadPokemonShapeProse() {
   for objectJSON in storedData["pokemon_shape_prose"]! {
       let realmObject = PokemonShapeProse(value: objectJSON)
        realmObject.pokemonShape = realmDB.object(ofType: PokemonShape.self, forPrimaryKey: objectJSON["pokemonShapeId"])
       realmObject.pokemonShapeProseDescription = objectJSON["description"] as? String ?? ""
       realmDB.add(realmObject)
   }
}

func loadPokemonShapes() {
   for objectJSON in storedData["pokemon_shapes"]! {
       let realmObject = PokemonShape(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadPokemonSpecies() {
   for objectJSON in storedData["pokemon_species"]! {
       let realmObject = PokemonSpecies(value: objectJSON)
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       realmObject.evolvesFromSpecies = realmDB.object(ofType: PokemonSpecies.self, forPrimaryKey: objectJSON["evolvesFromSpeciesId"] as? Int ?? 0)
       realmObject.evolutionChain = realmDB.object(ofType: EvolutionChain.self, forPrimaryKey: objectJSON["evolutionChainId"] as? Int ?? 0)
        realmObject.color = realmDB.object(ofType: PokemonColor.self, forPrimaryKey: objectJSON["colorId"])
        realmObject.shape = realmDB.object(ofType: PokemonShape.self, forPrimaryKey: objectJSON["shapeId"] as? Int ?? 0)
        realmObject.habitat = realmDB.object(ofType: PokemonHabitat.self, forPrimaryKey: objectJSON["habitatId"] as? Int ?? 0)
        realmObject.growthRate = realmDB.object(ofType: GrowthRate.self, forPrimaryKey: objectJSON["growthRateId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonSpeciesFlavorText() {
    for objectJSON in storedData["pokemon_species_flavor_text"]! {
        let realmObject = PokemonSpeciesFlavorText(value: objectJSON)
        realmObject.species = realmDB.object(ofType: PokemonSpecies.self, forPrimaryKey: objectJSON["speciesId"])
        realmObject.version = realmDB.object(ofType: Version.self, forPrimaryKey: objectJSON["versionId"])
        realmDB.add(realmObject)
    }
}

func loadPokemonSpeciesNames() {
   for objectJSON in storedData["pokemon_species_names"]! {
       let realmObject = PokemonSpeciesName(value: objectJSON)
        realmObject.pokemonSpecies = realmDB.object(ofType: PokemonSpecies.self, forPrimaryKey: objectJSON["pokemonSpeciesId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonSpeciesProse() {
   for objectJSON in storedData["pokemon_species_prose"]! {
       let realmObject = PokemonSpeciesProse(value: objectJSON)
        realmObject.pokemonSpecies = realmDB.object(ofType: PokemonSpecies.self, forPrimaryKey: objectJSON["pokemonSpeciesId"])
       realmObject.formDescription = objectJSON["description"] as? String ?? ""
       realmDB.add(realmObject)
   }
}

func loadPokemonStats() {
   for objectJSON in storedData["pokemon_stats"]! {
       let realmObject = PokemonStat(value: objectJSON)
        realmObject.pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["pokemonId"])
        realmObject.stat = realmDB.object(ofType: Stat.self, forPrimaryKey: objectJSON["statId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonTypes() {
   for objectJSON in storedData["pokemon_types"]! {
       let realmObject = PokemonType(value: objectJSON)
        realmObject.pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["pokemonId"])
        realmObject.type = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["typeId"])
       realmDB.add(realmObject)
   }
}

func loadPokemonTypesPast() {
   for objectJSON in storedData["pokemon_types_past"]! {
       let realmObject = PokemonTypePast(value: objectJSON)
        realmObject.pokemon = realmDB.object(ofType: Pokemon.self, forPrimaryKey: objectJSON["pokemonId"])
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
        realmObject.type = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["typeId"])
       realmDB.add(realmObject)
   }
}

func loadRegionNames() {
   for objectJSON in storedData["region_names"]! {
       let realmObject = RegionName(value: objectJSON)
        realmObject.region = realmDB.object(ofType: Region.self, forPrimaryKey: objectJSON["regionId"])
       realmDB.add(realmObject)
   }
}

func loadRegions() {
   for objectJSON in storedData["regions"]! {
       let realmObject = Region(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadStatNames() {
   for objectJSON in storedData["stat_names"]! {
       let realmObject = StatName(value: objectJSON)
        realmObject.stat = realmDB.object(ofType: Stat.self, forPrimaryKey: objectJSON["statId"])
       realmDB.add(realmObject)
   }
}

func loadStats() {
   for objectJSON in storedData["stats"]! {
       let realmObject = Stat(value: objectJSON)
        realmObject.damageClass = realmDB.object(ofType: MoveDamageClass.self, forPrimaryKey: objectJSON["damageClassId"] as? Int ?? 0)
       realmDB.add(realmObject)
   }
}

func loadSuperContestCombos() {
   for objectJSON in storedData["super_contest_combos"]! {
       let realmObject = SuperContestCombo(value: objectJSON)
        realmObject.firstMove = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["firstMoveId"])
        realmObject.secondMove = realmDB.object(ofType: Move.self, forPrimaryKey: objectJSON["secondMoveId"])
       realmDB.add(realmObject)
   }
}

func loadSuperContestEffectProse() {
   for objectJSON in storedData["super_contest_effect_prose"]! {
       let realmObject = SuperContestEffectProse(value: objectJSON)
        realmObject.superContestEffect = realmDB.object(ofType: SuperContestEffect.self, forPrimaryKey: objectJSON["superContestEffectId"])
       realmDB.add(realmObject)
   }
}

func loadSuperContestEffects() {
   for objectJSON in storedData["super_contest_effects"]! {
       let realmObject = SuperContestEffect(value: objectJSON)
       realmDB.add(realmObject)
   }
}

func loadTypeEfficacy() {
   for objectJSON in storedData["type_efficacy"]! {
       let realmObject = TypeEfficacy(value: objectJSON)
        realmObject.damageType = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["damageTypeId"])
        realmObject.targetType = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["targetTypeId"])
       realmDB.add(realmObject)
   }
}

func loadTypeEfficacyPast() {
   for objectJSON in storedData["type_efficacy_past"]! {
       let realmObject = TypeEfficacyPast(value: objectJSON)
        realmObject.damageType = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["damageTypeId"])
        realmObject.targetType = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["targetTypeId"])
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       realmDB.add(realmObject)
   }
}

func loadTypeGameIndices() {
   for objectJSON in storedData["type_game_indices"]! {
       let realmObject = TypeGameIndex(value: objectJSON)
        realmObject.type = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["typeId"])
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       realmDB.add(realmObject)
   }
}

func loadTypeNames() {
   for objectJSON in storedData["type_names"]! {
       let realmObject = TypeName(value: objectJSON)
        realmObject.type = realmDB.object(ofType: Type.self, forPrimaryKey: objectJSON["typeId"])
       realmDB.add(realmObject)
   }
}

func loadTypes() {
   for objectJSON in storedData["types"]! {
       let realmObject = Type(value: objectJSON)
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       if let damageClassId = objectJSON["damageClassId"] as? Int {
           realmObject.damageClass = realmDB.object(ofType: MoveDamageClass.self, forPrimaryKey: damageClassId)
       }
       realmDB.add(realmObject)
   }
}

func loadVersionGroupPokemonMoveMethods() {
   for objectJSON in storedData["version_group_pokemon_move_methods"]! {
       let realmObject = VersionGroupPokemonMoveMethod(value: objectJSON)
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
        realmObject.pokemonMoveMethod = realmDB.object(ofType: PokemonMoveMethod.self, forPrimaryKey: objectJSON["pokemonMoveMethodId"])
       realmDB.add(realmObject)
   }
}

func loadVersionGroupRegions() {
   for objectJSON in storedData["version_group_regions"]! {
       let realmObject = VersionGroupRegion(value: objectJSON)
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
        realmObject.region = realmDB.object(ofType: Region.self, forPrimaryKey: objectJSON["regionId"])
       realmDB.add(realmObject)
   }
}

func loadVersionGroups() {
   for objectJSON in storedData["version_groups"]! {
       let realmObject = VersionGroup(value: objectJSON)
        realmObject.generation = realmDB.object(ofType: Generation.self, forPrimaryKey: objectJSON["generationId"])
       realmDB.add(realmObject)
   }
}

func loadVersionNames() {
   for objectJSON in storedData["version_names"]! {
       let realmObject = VersionName(value: objectJSON)
        realmObject.version = realmDB.object(ofType: Version.self, forPrimaryKey: objectJSON["versionId"])
       realmDB.add(realmObject)
   }
}

func loadVersions() {
   for objectJSON in storedData["versions"]! {
       let realmObject = Version(value: objectJSON)
        realmObject.versionGroup = realmDB.object(ofType: VersionGroup.self, forPrimaryKey: objectJSON["versionGroupId"])
       realmDB.add(realmObject)
   }
}

