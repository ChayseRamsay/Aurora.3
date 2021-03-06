/datum/species/human
	name = "Human"
	short_name = "hum"
	name_plural = "Humans"
	language = "Sol Common"
	primitive_form = "Monkey"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite)
	blurb = "Humanity originated in the Sol system, and over the last five centuries has spread \
	colonies across a wide swathe of space. They hold a wide range of forms and creeds.<br/><br/> \
	While the central Sol government maintains control of its far-flung people, powerful corporate \
	interests, rampant cyber and bio-augmentation and secretive factions make life on most human \
	worlds tumultous at best."

	flags = CAN_JOIN | HAS_SKIN_TONE | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR

/datum/species/unathi
	name = "Unathi"
	short_name = "una"
	name_plural = "Unathi"
	icobase = 'icons/mob/human_races/r_lizard.dmi'
	deform = 'icons/mob/human_races/r_def_lizard.dmi'
	language = "Sinta'unathi"
	tail = "sogtail"
	tail_animation = 'icons/mob/species/unathi/tail.dmi'
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp)
	primitive_form = "Stok"
	darksight = 3
	gluttonous = 1
	ethanol_resistance = 0.4

	blurb = "A heavily reptillian species, Unathi (or 'Sinta as they call themselves) hail from the \
	Uuosa-Eso system, which roughly translates to 'burning mother'.<br/><br/>Coming from a harsh, radioactive \
	desert planet, they mostly hold ideals of honesty, virtue, martial combat and bravery above all \
	else, frequently even their own lives. They prefer warmer temperatures than most species and \
	their native tongue is a heavy hissing laungage called Sinta'Unathi."

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	inherent_verbs = list(
	/mob/living/proc/devour
	)


	flags = CAN_JOIN | IS_WHITELISTED | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34AF10"

	reagent_tag = IS_UNATHI
	base_color = "#066000"

	heat_discomfort_level = 295
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 292
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your scales bristle against the cold."
		)

/datum/species/unathi/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/tajaran
	name = "Tajara"
	short_name = "taj"
	name_plural = "Tajaran"
	icobase = 'icons/mob/human_races/r_tajaran.dmi'
	deform = 'icons/mob/human_races/r_def_tajaran.dmi'
	language = "Siik'maas"
	tail = "tajtail"
	tail_animation = 'icons/mob/species/tajaran/tail.dmi'
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp)
	darksight = 8
	slowdown = -1
	brute_mod = 1.2
	ethanol_resistance = 0.8//Gets drunk a little faster

	blurb = "The Tajaran race is a species of feline-like bipeds hailing from the planet of Ahdomai in the \
	S'randarr system. They have been brought up into the space age by the Humans and Skrell, and have been \
	influenced heavily by their long history of Slavemaster rule. They have a structured, clan-influenced way \
	of family and politics. They prefer colder environments, and speak a variety of languages, mostly Siik'Maas, \
	using unique inflections their mouths form."

	cold_level_1 = 200 //Default 260
	cold_level_2 = 140 //Default 200
	cold_level_3 = 80 //Default 120

	heat_level_1 = 330 //Default 360
	heat_level_2 = 380 //Default 400
	heat_level_3 = 800 //Default 1000

	primitive_form = "Farwa"

	flags = CAN_JOIN | IS_WHITELISTED | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#AFA59E"
	base_color = "#333333"

	heat_discomfort_level = 292
	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
		)
	cold_discomfort_level = 275

/datum/species/tajaran/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/skrell
	name = "Skrell"
	short_name = "skr"
	name_plural = "Skrell"
	icobase = 'icons/mob/human_races/r_skrell.dmi'
	deform = 'icons/mob/human_races/r_def_skrell.dmi'
	eyes = "skrell_eyes_s"
	language = "Skrellian"
	primitive_form = "Neaera"
	unarmed_types = list(/datum/unarmed_attack/punch)
	blurb = "An amphibious species, Skrell come from the star system known as Qerr'Vallis, which translates to 'Star of \
	the royals' or 'Light of the Crown'.<br/><br/>Skrell are a highly advanced and logical race who live under the rule \
	of the Qerr'Katish, a caste within their society which keeps the empire of the Skrell running smoothly. Skrell are \
	herbivores on the whole and tend to be co-operative with the other species of the galaxy, although they rarely reveal \
	the secrets of their empire to their allies."

	flags = CAN_JOIN | IS_WHITELISTED | HAS_LIPS | HAS_UNDERWEAR | NO_SLIP | HAS_SKIN_COLOR

	flesh_color = "#8CD7A3"
	blood_color = "#1D2CBF"
	base_color = "#006666"

	reagent_tag = IS_SKRELL
	ethanol_resistance = 0.5//gets drunk faster

/datum/species/diona
	name = "Diona"
	short_name = "dio"
	name_plural = "Dionaea"
	icobase = 'icons/mob/human_races/r_diona.dmi'
	deform = 'icons/mob/human_races/r_def_plant.dmi'
	language = "Ceti Basic"
	default_language = "Rootsong"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/diona)
	//primitive_form = "Nymph"
	slowdown = 7
	rarity_value = 3
	hud_type = /datum/hud_data/diona
	siemens_coefficient = 0.3
	eyes = "blank_eyes"
	show_ssd = "completely quiescent"
	ethanol_resistance = -1//Can't get drunk


	blurb = "Commonly referred to (erroneously) as 'plant people', the Dionaea are a strange space-dwelling collective \
	species hailing from Epsilon Ursae Minoris. Each 'diona' is a cluster of numerous cat-sized organisms called nymphs; \
	there is no effective upper limit to the number that can fuse in gestalt, and reports exist	of the Epsilon Ursae \
	Minoris primary being ringed with a cloud of singing space-station-sized entities.<br/><br/>The Dionaea coexist peacefully with \
	all known species, especially the Skrell. Their communal mind makes them slow to react, and they have difficulty understanding \
	even the simplest concepts of other minds. Their alien physiology allows them survive happily off a diet of nothing but light, \
	water and other radiation."

	has_organ = list(
		"nutrient channel" =   /obj/item/organ/diona/nutrients,
		"neural strata" =      /obj/item/organ/diona/strata,
		"response node" =      /obj/item/organ/diona/node,
		"gas bladder" =        /obj/item/organ/diona/bladder,
		"polyp segment" =      /obj/item/organ/diona/polyp,
		"anchoring ligament" = /obj/item/organ/diona/ligament
		)

	has_limbs = list(
		"chest" =  list("path" = /obj/item/organ/external/diona/chest),
		"groin" =  list("path" = /obj/item/organ/external/diona/groin),
		"head" =   list("path" = /obj/item/organ/external/diona/head),
		"l_arm" =  list("path" = /obj/item/organ/external/diona/arm),
		"r_arm" =  list("path" = /obj/item/organ/external/diona/arm/right),
		"l_leg" =  list("path" = /obj/item/organ/external/diona/leg),
		"r_leg" =  list("path" = /obj/item/organ/external/diona/leg/right),
		"l_hand" = list("path" = /obj/item/organ/external/diona/hand),
		"r_hand" = list("path" = /obj/item/organ/external/diona/hand/right),
		"l_foot" = list("path" = /obj/item/organ/external/diona/foot),
		"r_foot" = list("path" = /obj/item/organ/external/diona/foot/right)
		)

	//inherent_verbs = list()

	warning_low_pressure = 50
	hazard_low_pressure = -1

	cold_level_1 = 273
	cold_level_2 = 223
	cold_level_3 = 173

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	body_temperature = T0C + 15		//make the plant people have a bit lower body temperature, why not

	flags = CAN_JOIN | IS_WHITELISTED | NO_BREATHE | NO_SCAN | IS_PLANT | NO_BLOOD | NO_PAIN | NO_SLIP

	blood_color = "#97dd7c"
	flesh_color = "#907E4A"

	reagent_tag = IS_DIONA

/datum/species/diona/can_understand(var/mob/other)
	var/mob/living/carbon/alien/diona/D = other
	if(istype(D))
		return 1
	return 0

/datum/species/diona/get_random_name(var/gender)
	var/datum/language/species_language = all_languages[default_language]
	return species_language.get_random_name()

/datum/species/diona/equip_survival_gear(var/mob/living/carbon/human/H)
	if(H.backbag == 1)
		H.equip_to_slot_or_del(new /obj/item/device/flashlight/flare(H), slot_r_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/device/flashlight/flare(H.back), slot_in_backpack)

/datum/species/diona/handle_post_spawn(var/mob/living/carbon/human/H)
	H.gender = NEUTER
	return ..()

/datum/species/diona/handle_death(var/mob/living/carbon/human/H, var/gibbed = 0)
	if (!gibbed)
		H.diona_split_into_nymphs(0)

/datum/species/machine
	name = "Machine"
	short_name = "ipc"
	name_plural = "machines"

	icobase = 'icons/mob/human_races/r_machine.dmi'
	deform = 'icons/mob/human_races/r_machine.dmi'
	language = "Tradeband"
	unarmed_types = list(/datum/unarmed_attack/punch)
	rarity_value = 2
	ethanol_resistance = -1//Can't get drunk

	eyes = "blank_eyes"
	brute_mod = 0.5
	burn_mod = 1
	show_ssd = "flashing a 'system offline' glyph on their monitor"

	warning_low_pressure = 50
	hazard_low_pressure = 0

	cold_level_1 = 50
	cold_level_2 = -1
	cold_level_3 = -1

	heat_level_1 = 500		//gives them about 25 seconds in space before taking damage
	heat_level_2 = 1000
	heat_level_3 = 2000

	synth_temp_gain = 10 //this should cause IPCs to stabilize at ~80 C in a 20 C environment.

	flags = CAN_JOIN | IS_WHITELISTED | NO_BREATHE | NO_SCAN | NO_BLOOD | NO_PAIN | IS_SYNTHETIC | NO_POISON

	blood_color = "#1F181F"
	flesh_color = "#575757"

	has_organ = list() //TODO: Positronic brain.

/datum/species/machine/equip_survival_gear(var/mob/living/carbon/human/H)

/datum/species/machine/handle_death(var/mob/living/carbon/human/H)
	..()
	if(flags & IS_SYNTHETIC)
		H.h_style = ""
		spawn(100)
			if(H) H.update_hair()

/datum/species/bug
	name = "Vaurca"
	short_name = "vau"
	name_plural = "Vaurcae"
	language = "Hivenet"
	icobase = 'icons/mob/human_races/r_vaurca.dmi'
	deform = 'icons/mob/human_races/r_vaurca.dmi'
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp)
	rarity_value = 2
	slowdown = 0	//may become a bonus if vaurca gain more legs.
	darksight = 8 //USELESS
	eyes = "vaurca_eyes" //makes it so that eye colour is not changed when skin colour is.
	brute_mod = 0.5 //note to self: remove is_synthetic checks for brmod and burnmod
	burn_mod = 1.5 //2x was a bit too much. we'll see how this goes.
	tox_mod = 3 //they're not used to all our weird human bacteria.
	warning_low_pressure = 50
	hazard_low_pressure = 0
	ethanol_resistance = 2
	siemens_coefficient = 1 //setting it to 0 would be redundant due to LordLag's snowflake checks, plus batons/tasers use siemens now too.
	breath_type = "oxygen"
	poison_type = "null" //a species that breathes plasma shouldn't be poisoned by it.
	blurb = "Vaurca are a bipedal insectoid species from the first moon of Sedantis I. \
	 They have a complex caste system consisting of the lower slave caste called The Bound and the higher, free-thinking caste of the Unbound. \
	 The majority of Vaurca present in human-space belong to the former caste of Bound, and almost all Vaurca working on NanoTrasen Stations are similarly Bound. \
	 Although tolerated on Nanotrasen stations and in Tau Ceti, they are often discriminated against and are unwelcome in most human-owned \
	 sectors in the Sol Alliance. All Vaurca present in human space are colonists at the end of a 2,000 year journey, and all contact with \
	 their homeworld has been lost. All Vaurca legally present in Tau Ceti belong either to the Zo'ra hive, or the K'lax hive."

	cold_level_1 = 50
	cold_level_2 = -1
	cold_level_3 = -1

	heat_level_1 = 330 //Default 360
	heat_level_2 = 380 //Default 400
	heat_level_3 = 600 //Default 1000
	flags = CAN_JOIN | NO_SCAN | HAS_SKIN_COLOR | IS_WHITELISTED | NO_SLIP
	blood_color = "#E6E600" // dark yellow
	flesh_color = "#E6E600"
	base_color = "#575757"

	inherent_verbs = list(
		/mob/living/carbon/human/proc/bugbite, //weaker version of gut.
		)


	has_organ = list(
		"neural socket" =  /obj/item/organ/vaurca/neuralsocket,
		"lungs" =    /obj/item/organ/lungs,
		"filtration bit" =     /obj/item/organ/vaurca/filtrationbit,
		"heart" =    /obj/item/organ/heart,
		"second heart" =    /obj/item/organ/heart,
		"liver" =    /obj/item/organ/liver,
		"kidneys" =  /obj/item/organ/kidneys,
		"brain" =    /obj/item/organ/brain,
		"eyes" =     /obj/item/organ/eyes,

)

/datum/species/bug/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/bug/handle_post_spawn(var/mob/living/carbon/human/H)
	H.gender = NEUTER
	return ..()
