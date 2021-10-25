//Paper Mask
/obj/item/clothing/glasses/paper
	name = "paper mask"
	desc = "A Masquarade Mask made out of paper."
	icon = 'resources/icons/urist/items/papercrafts.dmi'
	item_icons = URIST_ALL_ONMOBS
	icon_override = 'resources/icons/uristmob/glasses.dmi'
	item_state = "paperMask"
	icon_state = "paperMask"

//goggles

/obj/item/clothing/glasses/lgoggles
	icon = 'resources/icons/urist/items/clothes/glasses.dmi'
	item_icons = URIST_ALL_ONMOBS
//	icon_override = 'resources/icons/uristmob/glasses.dmi'
	icon_state = "sandsuit"
	item_state = "sandsuit"
	name = "improvised goggles"
	desc = "A pair of goggles made out of some glass and a leather mask."

/obj/item/clothing/glasses/goggles/attack_self(mob/user as mob)
	var/obj/item/clothing/mask/urist/bandana/leather/S = new /obj/item/clothing/mask/urist/bandana/leather(src.loc)
	user.put_in_hands(S)
	to_chat(user, "<span class='notice'>You pop the glass out of the strip of leather.</span>")
	qdel(src)
