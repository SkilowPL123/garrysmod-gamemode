ITEM.name = "Mosin-Nagant M38"
ITEM.description = "Standardowy radziecki karabin piechoty z czasów II wojny światowej. Przez pewien czas, w wyniku interwencji niemieckiej, wyprodukowano zbyt mało karabinów, aby zaopatrzyć całą armię."
ITEM.model = "models/weapons/arccw/w_waw_mosin.mdl"
ITEM.class = "arccw_waw_mosin"
ITEM.weaponCategory = "primary"
ITEM.width = 5
ITEM.rarity = 4
ITEM.height = 2
ITEM.iconCam = {
	ang	= Angle(-0.020070368424058, 270.40155029297, 0),
	fov	= 7.2253324508038,
	pos	= Vector(0, 200, -1)
}
ITEM.Attack = 16
ITEM.DistanceSkillMod = {
	[1] = 5,
	[2] = 5,
	[3] = 4,
	[4] = 3
}
ITEM.Info = {
	Type = nil,
	Skill = "guns",
	Distance = {
		[1] = 5,
		[2] = 5,
		[3] = 4,
		[4] = 3
	},
	Dmg = {
		Attack = nil,
		AP = ITEM.Attack,
		Limb = 150,
		Shock = {180, 1900},
		Blood = {290, 650},
		Bleed = 85
	}
}


