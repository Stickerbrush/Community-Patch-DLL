-- RANGED UNITS

-- Assorted necessary promotions
	INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
VALUES
	('UNIT_BAZOOKA', 'PROMOTION_ANTI_TANK'),
	('UNIT_ROCKET_ARTILLERY', 'PROMOTION_ANTI_TANK'),
	('UNIT_SUBMARINE', 'PROMOTION_BIG_CITY_PENALTY'),
	('UNIT_NUCLEAR_SUBMARINE', 'PROMOTION_BIG_CITY_PENALTY'),
	('UNIT_CARTHAGINIAN_QUINQUEREME', 'PROMOTION_RECON_EXPERIENCE'),
	('UNIT_ARCHER', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_BARBARIAN_ARCHER', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_MAYAN_ATLATLIST', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_BABYLONIAN_BOWMAN', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_INCAN_SLINGER', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_CHARIOT_ARCHER', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_EGYPTIAN_WARCHARIOT', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_HUN_HORSE_ARCHER', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_INDIAN_WARELEPHANT', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_CHINESE_CHUKONU', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_ARABIAN_CAMELARCHER', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_MONGOLIAN_KESHIK', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_MOUNTED_BOWMAN', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_CUIRASSIER', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_COMPOSITE_BOWMAN', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_CROSSBOWMAN', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_GATLINGGUN', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_MACHINE_GUN', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_BAZOOKA', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_SIAMESE_WARELEPHANT', 'PROMOTION_FEARED_ELEPHANT'),
	('UNIT_SCOUT', 'PROMOTION_RECON_EXPERIENCE'),
	('UNIT_SHOSHONE_PATHFINDER', 'PROMOTION_RECON_EXPERIENCE'),
	('UNIT_JAPANESE_SAMURAI', 'PROMOTION_GAIN_EXPERIENCE'),
	('UNIT_ROMAN_LEGION', 'PROMOTION_COVER_1'),
	('UNIT_GUIDED_MISSILE', 'PROMOTION_HEAVY_PAYLOAD'),
	('UNIT_MARINE', 'PROMOTION_KNOCKOUT_I'),
	('UNIT_PARATROOPER', 'PROMOTION_KNOCKOUT_II'),
	('UNIT_AMERICAN_MINUTEMAN', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_OTTOMAN_JANISSARY', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_MUSKETMAN', 'PROMOTION_NAVAL_MISFIRE'),
	('UNIT_AMERICAN_MINUTEMAN', 'PROMOTION_ONLY_DEFENSIVE'),
	('UNIT_OTTOMAN_JANISSARY', 'PROMOTION_ONLY_DEFENSIVE'),
	('UNIT_MUSKETMAN', 'PROMOTION_ONLY_DEFENSIVE');

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType)SELECT 'UNIT_ROCKET_ARTILLERY' , 'PROMOTION_COVER_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType)SELECT 'UNIT_ARTILLERY' , 'PROMOTION_COVER_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_CANNON' , 'PROMOTION_COVER_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_TREBUCHET' , 'PROMOTION_COVER_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_CATAPULT' , 'PROMOTION_COVER_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_KOREAN_HWACHA' , 'PROMOTION_COVER_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_KOREAN_HWACHA' , 'PROMOTION_BLITZ' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


	-- Prereq Techs 
	UPDATE Units SET PrereqTech = 'TECH_TRAPPING' WHERE Type = 'UNIT_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_TRAPPING' WHERE Type = 'UNIT_INCAN_SLINGER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_MATHEMATICS' WHERE Type = 'UNIT_ROMAN_BALLISTA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_MATHEMATICS' WHERE Type = 'UNIT_MAYAN_ATLATLIST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ENGINEERING' WHERE Type = 'UNIT_COMPOSITE_BOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ENGINEERING' WHERE Type = 'UNIT_BABYLONIAN_BOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_MACHINERY' WHERE Type = 'UNIT_ENGLISH_LONGBOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_MUSKETMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_AMERICAN_MINUTEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ADVANCED_BALLISTICS' WHERE Type = 'UNIT_ROCKET_ARTILLERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_DYNAMITE' WHERE Type = 'UNIT_GATLINGGUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_CANNON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


	-- Obsolete Techs
	UPDATE Units SET ObsoleteTech = 'TECH_ENGINEERING' WHERE Type = 'UNIT_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_MACHINERY' WHERE Type = 'UNIT_INCAN_SLINGER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_CROSSBOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_INDUSTRIALIZATION' WHERE Type = 'UNIT_ENGLISH_LONGBOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_DYNAMITE' WHERE Type = 'UNIT_CHINESE_CHUKONU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_KOREAN_HWACHA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_BABYLONIAN_BOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_RIFLING' WHERE Type = 'UNIT_MAYAN_ATLATLIST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_PHYSICS' WHERE Type = 'UNIT_ROMAN_BALLISTA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_ADVANCED_BALLISTICS' WHERE Type = 'UNIT_ARTILLERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_TREBUCHET' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_DYNAMITE'WHERE Type = 'UNIT_KOREAN_HWACHA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_DYNAMITE' WHERE Type = 'UNIT_MUSKETMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_BALLISTICS' WHERE Type = 'UNIT_AMERICAN_MINUTEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_BALLISTICS' WHERE Type = 'UNIT_OTTOMAN_JANISSARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- AI
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_AMERICAN_MINUTEMAN';
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_OTTOMAN_JANISSARY';
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_MUSKETMAN';

	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_AMERICAN_MINUTEMAN', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_OTTOMAN_JANISSARY', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_MUSKETMAN', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_AMERICAN_MINUTEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_OTTOMAN_JANISSARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_MUSKETMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Musketman now ranged (Tercio Melee) - UUs splitting down middle
	UPDATE Units SET Range = '2' WHERE Type = 'UNIT_AMERICAN_MINUTEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '2' WHERE Type = 'UNIT_MUSKETMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '2' WHERE Type = 'UNIT_OTTOMAN_JANISSARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_AMERICAN_MINUTEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_MUSKETMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_OTTOMAN_JANISSARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Unit_FreePromotions SET PromotionType = 'PROMOTION_ACCURACY_1' WHERE UnitType = 'UNIT_AMERICAN_MINUTEMAN' AND PromotionType = 'PROMOTION_DRILL_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Upgrades	
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_GATLINGGUN' WHERE Type = 'UNIT_MUSKETMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_GATLINGGUN' WHERE UnitType = 'UNIT_MUSKETMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_MUSKETMAN' WHERE Type = 'UNIT_CROSSBOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_MUSKETMAN' WHERE UnitType = 'UNIT_CROSSBOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET IgnoreBuildingDefense = '1' WHERE Type = 'UNIT_GATLINGGUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	-- Gatling Gun, Machine Gun, Bazooka - make Range 2 (instead of 1) to help AI

	UPDATE Units SET Range = '2' WHERE Type = 'UNIT_GATLINGGUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '2' WHERE Type = 'UNIT_MACHINE_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '2' WHERE Type = 'UNIT_BAZOOKA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Promotions for Gatilng/Machine/Bazooka to offset range increase

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_GATLINGGUN' , 'PROMOTION_MODERN_RANGED_PENALTY_I' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MACHINE_GUN' , 'PROMOTION_MODERN_RANGED_PENALTY_I' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_BAZOOKA' , 'PROMOTION_MODERN_RANGED_PENALTY_II' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Make Rocket Artillery cost oil, not aluminum:
	UPDATE Unit_ResourceQuantityRequirements SET ResourceType = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ROCKET_ARTILLERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Catapults, Trebuchets, and Artillery should cost Iron
	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_CATAPULT', 'RESOURCE_IRON', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_TREBUCHET', 'RESOURCE_IRON', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_CANNON', 'RESOURCE_IRON', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_ARTILLERY', 'RESOURCE_IRON', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


	
