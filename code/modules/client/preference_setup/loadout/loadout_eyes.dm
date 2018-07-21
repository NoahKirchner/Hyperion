// Eyes
/datum/gear/eyes
	display_name = "eyepatch"
	path = /obj/item/clothing/glasses/eyepatch
	slot = slot_glasses
	sort_category = "Glasses and Eyewear"

/datum/gear/eyes/glasses
	display_name = "glasses, prescription"
	path = /obj/item/clothing/glasses/regular

/datum/gear/eyes/glasses/green
	display_name = "glasses, green"
	path = /obj/item/clothing/glasses/gglasses

/datum/gear/eyes/glasses/prescriptionhipster
	display_name = "glasses, hipster"
	path = /obj/item/clothing/glasses/regular/hipster

/datum/gear/eyes/glasses/monocle
	display_name = "monocle"
	path = /obj/item/clothing/glasses/monocle

/datum/gear/eyes/glasses/goggles
	display_name = "goggles"
	path = /obj/item/clothing/glasses/goggles

/datum/gear/eyes/scanning_goggles
	display_name = "scanning goggles"
	path = /obj/item/clothing/glasses/regular/scanners

/datum/gear/eyes/sciencegoggles
	display_name = "science Goggles"
	path = /obj/item/clothing/glasses/science

/datum/gear/eyes/mesonprescription
	display_name = "meson goggles, prescription"
	path = /obj/item/clothing/glasses/meson/prescription
	allowed_roles = list("Station Engineer","Atmospheric Technician","Chief Engineer","Engineering Apprentice", "Research Director","Scientist")

/datum/gear/eyes/security
	display_name = "security HUD"
	path = /obj/item/clothing/glasses/hud/security
	allowed_roles = list("Security Officer", "Head of Security", "Warden", "Security Cadet", "Detective", "Forensic Technician")

/datum/gear/eyes/medical
	display_name = "medical HUD"
	path = /obj/item/clothing/glasses/hud/health
	allowed_roles = list("Medical Doctor", "Chief Medical Officer", "Chemist", "Paramedic", "Psychiatrist", "Medical Resident")

/datum/gear/eyes/shades
	display_name = "sunglasses, fat"
	path = /obj/item/clothing/glasses/sunglasses/big
	allowed_roles = list("Security Officer", "Head of Security", "Warden", "Captain", "Head of Personnel", "Quartermaster", "Internal Affairs Agent", "Detective", "Forensic Technician")

/datum/gear/eyes/shades/prescriptionsun
	display_name = "sunglasses, presciption"
	path = /obj/item/clothing/glasses/sunglasses/prescription

/datum/gear/eyes/hudpatch
	display_name = "iPatch"
	path = /obj/item/clothing/glasses/eyepatch/hud

/datum/gear/eyes/secpatch
	display_name = "HUDpatch, Security"
	path= /obj/item/clothing/glasses/eyepatch/hud/security
	allowed_roles = list("Security Officer", "Head of Security", "Warden", "Security Cadet", "Detective", "Forensic Technician")
	cost = 2 //snowflake tax

/datum/gear/eyes/medpatch
	display_name = "HUDpatch, Medical"
	path = /obj/item/clothing/glasses/eyepatch/hud/medical
	allowed_roles = list("Medical Doctor", "Chief Medical Officer", "Chemist", "Paramedic", "Psychiatrist", "Medical Resident")
	cost = 2

/datum/gear/eyes/mespatch
	display_name = "HUDpatch, Mesons"
	path = /obj/item/clothing/glasses/eyepatch/hud/meson
	allowed_roles = list("Station Engineer","Atmospheric Technician","Chief Engineer","Engineering Apprentice", "Research Director","Scientist", "Shaft Miner")
	cost = 2

/datum/gear/eyes/matpatch
	display_name = "HUDpatch, Material"
	path = /obj/item/clothing/glasses/eyepatch/hud/material
	allowed_roles = list("Station Engineer","Atmospheric Technician","Chief Engineer","Engineering Apprentice", "Shaft Miner")
	cost = 2

/datum/gear/eyes/scipatch
	display_name = "HUDpatch, Science"
	path = /obj/item/clothing/glasses/eyepatch/hud/science
	cost = 2

/datum/gear/eyes/weldpatch
	display_name = "HUDpatch, Welding"
	path = /obj/item/clothing/glasses/eyepatch/hud/welder
	allowed_roles = list("Station Engineer","Atmospheric Technician","Chief Engineer","Engineering Apprentice","Research Director","Roboticist")
	cost = 2

/datum/gear/eyes/spiffygogs
	display_name = "Orange Goggles"
	path = /obj/item/clothing/glasses/spiffygogs