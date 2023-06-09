var/list/all_robolimbs = list()
var/list/chargen_robolimbs = list()
var/datum/robolimb/basic_robolimb

/proc/populate_robolimb_list()
	basic_robolimb = new()
	for(var/limb_type in typesof(/datum/robolimb))
		var/datum/robolimb/R = new limb_type()
		all_robolimbs[R.company] = R
		if(!R.unavailable_at_chargen)
			chargen_robolimbs[R.company] = R

/datum/robolimb
	var/company = "Unbranded"                                 // Shown when selecting the limb.
	var/desc = "A generic unbranded robotic prosthesis."      // Seen when examining a limb.
	var/icon = 'resources/icons/mob/human_races/cyberlimbs/robotic.dmi' // Icon base to draw from.
	var/unavailable_at_chargen                                // If set, not available at chargen.
	var/unavailable_at_fab                                    // If set, cannot be fabricated.
	var/can_eat
	var/has_eyes = TRUE
	var/can_feel_pain
	var/skintone
	var/list/species_cannot_use = list(SPECIES_RESOMI)
	var/list/restricted_to = list()
	var/list/applies_to_part = list() //TODO.

/datum/robolimb/bishop
	company = "Bishop"
	desc = "This limb has a white polymer casing with blue holo-displays."
	icon = 'resources/icons/mob/human_races/cyberlimbs/bishop/bishop_main.dmi'
	unavailable_at_fab = 1

/datum/robolimb/bishop/industrial
	company = "Bishop Industrial Frame"
	icon = 'resources/icons/mob/human_races/cyberlimbs/bishop/bishop_ind.dmi'
	has_eyes = FALSE

/datum/robolimb/bishop/alt
	company = "Bishop Alt."
	icon = 'resources/icons/mob/human_races/cyberlimbs/bishop/bishop_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/bishop/alt/monitor
	company = "Bishop Monitor."
	icon = 'resources/icons/mob/human_races/cyberlimbs/bishop/bishop_monitor.dmi'
	restricted_to = list(SPECIES_IPC)
	unavailable_at_fab = 1

/datum/robolimb/hephaestus
	company = "Hephaestus Industries"
	desc = "This limb has a militaristic black and green casing with gold stripes."
	icon = 'resources/icons/mob/human_races/cyberlimbs/hephaestus/hephaestus_main.dmi'
	unavailable_at_fab = 1

/datum/robolimb/hephaestus/industrial
	company = "Hephaestus Industrial Frame"
	icon = 'resources/icons/mob/human_races/cyberlimbs/hephaestus/hephaestus_ind.dmi'

/datum/robolimb/hephaestus/alt
	company = "Hephaestus Alt."
	icon = 'resources/icons/mob/human_races/cyberlimbs/hephaestus/hephaestus_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/hesphiastos/alt/monitor
	company = "Hephaestus Monitor."
	icon = 'resources/icons/mob/human_races/cyberlimbs/hephaestus/hephaestus_monitor.dmi'
	restricted_to = list(SPECIES_IPC)
	can_eat = null
	unavailable_at_fab = 1

/datum/robolimb/zenghu
	company = "Zeng-Hu"
	desc = "This limb has a rubbery fleshtone covering with visible seams."
	icon = 'resources/icons/mob/human_races/cyberlimbs/zenghu/zenghu_main.dmi'
	can_eat = 1
	unavailable_at_fab = 1
	restricted_to = list(SPECIES_HUMAN, SPECIES_IPC, "Grav-Adapted Human", "Space-Adapted Human", "Vat-Grown Human")

/datum/robolimb/zenghu/industrial
	company = "Zeng-Hu Research Frame"
	icon = 'resources/icons/mob/human_races/cyberlimbs/zenghu/zenghu_ind.dmi'

/datum/robolimb/xion
	company = "Xion"
	desc = "This limb has a minimalist black and red casing."
	icon = 'resources/icons/mob/human_races/cyberlimbs/xion/xion_main.dmi'

/datum/robolimb/xion/industrial
	company = "Xion Industrial Frame"
	icon = 'resources/icons/mob/human_races/cyberlimbs/xion/xion_ind.dmi'

/datum/robolimb/xion/alt
	company = "Xion Alt."
	icon = 'resources/icons/mob/human_races/cyberlimbs/xion/xion_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/xion/alt/monitor
	company = "Xion Monitor."
	icon = 'resources/icons/mob/human_races/cyberlimbs/xion/xion_monitor.dmi'
	restricted_to = list(SPECIES_IPC)
	can_eat = null
	unavailable_at_fab = 1

/datum/robolimb/nanotrasen
	company = "NanoTrasen"
	desc = "This limb is made from a cheap polymer."
	icon = 'resources/icons/mob/human_races/cyberlimbs/nanotrasen/nanotrasen_main.dmi'

/datum/robolimb/wardtakahashi
	company = "Ward-Takahashi"
	desc = "This limb features sleek black and white polymers."
	icon = 'resources/icons/mob/human_races/cyberlimbs/wardtakahashi/wardtakahashi_main.dmi'
	can_eat = 1
	unavailable_at_fab = 1

/datum/robolimb/economy
	company = "Ward-Takahashi Econ."
	desc = "A simple robotic limb with retro design. Seems rather stiff."
	icon = 'resources/icons/mob/human_races/cyberlimbs/wardtakahashi/wardtakahashi_economy.dmi'

/datum/robolimb/wardtakahashi/alt
	company = "Ward-Takahashi Alt."
	icon = 'resources/icons/mob/human_races/cyberlimbs/wardtakahashi/wardtakahashi_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/wardtakahashi/alt/monitor
	company = "Ward-Takahashi Monitor."
	icon = 'resources/icons/mob/human_races/cyberlimbs/wardtakahashi/wardtakahashi_monitor.dmi'
	restricted_to = list(SPECIES_IPC)
	can_eat = null
	unavailable_at_fab = 1

/datum/robolimb/morpheus
	company = "Morpheus"
	desc = "This limb is simple and functional; no effort has been made to make it look human."
	icon = 'resources/icons/mob/human_races/cyberlimbs/morpheus/morpheus_main.dmi'
	unavailable_at_fab = 1

/datum/robolimb/mantis
	company = "Morpheus Mantis"
	desc = "This limb has a casing of sleek black metal and repulsive insectile design."
	icon = 'resources/icons/mob/human_races/cyberlimbs/morpheus/morpheus_mantis.dmi'
	unavailable_at_fab = 1
	has_eyes = FALSE

/datum/robolimb/morpheus/monitor
	company = "Morpheus Monitor."
	icon = 'resources/icons/mob/human_races/cyberlimbs/morpheus/morpheus_monitor.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1
	has_eyes = FALSE
	restricted_to = list(SPECIES_IPC)

/datum/robolimb/veymed
	company = "Vey-Med"
	desc = "This high quality limb is nearly indistinguishable from an organic one."
	icon = 'resources/icons/mob/human_races/cyberlimbs/veymed/veymed_main.dmi'
	can_eat = 1
	skintone = 1
	unavailable_at_fab = 1
	restricted_to = list(SPECIES_HUMAN, "Grav-Adapted Human", "Space-Adapted Human", "Vat-Grown Human")

/datum/robolimb/resomi
	company = "Small prosthetic"
	desc = "This prosthetic is small and fit for nonhuman proportions."
	icon = 'resources/icons/mob/human_races/cyberlimbs/resomi/resomi_main.dmi'
	restricted_to = list(SPECIES_RESOMI)
	species_cannot_use = list()
	applies_to_part = list(BP_L_ARM, BP_R_ARM, BP_L_LEG, BP_R_LEG, BP_L_FOOT, BP_R_FOOT, BP_L_HAND, BP_R_HAND)


/datum/robolimb/cenilimisybernetics
	company = "Cenilimi Cybernetics"
	desc = "This prosthetic is created by a Teshari-owned company, for Teshari."
	icon = 'resources/icons/uristmob/species/teshari/cenilimicybernetics/cenilimicybernetics.dmi'
	restricted_to = list(SPECIES_RESOMI)
	species_cannot_use = list()

/datum/robolimb/unbrandedteshari
	company = "Unbranded - Teshari"
	desc = "This prosthetic is small and fit for nonhuman proportions."
	icon = 'resources/icons/uristmob/species/teshari/unbranded/unbranded.dmi'
	restricted_to = list(SPECIES_RESOMI)
	species_cannot_use = list()


/datum/robolimb/grayson
	company = "Grayson"
	desc = "This limb has a sturdy and heavy build to it."
	icon = 'resources/icons/mob/human_races/cyberlimbs/grayson/grayson_main.dmi'

/datum/robolimb/grayson/alt
	company = "Grayson Alt."
	icon = 'resources/icons/mob/human_races/cyberlimbs/grayson/grayson_alt.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1

/datum/robolimb/grayson/alt/monitor
	company = "Grayson Monitor."
	icon = 'resources/icons/mob/human_races/cyberlimbs/grayson/grayson_monitor.dmi'
	applies_to_part = list(BP_HEAD)
	unavailable_at_fab = 1
	restricted_to = list(SPECIES_IPC)
