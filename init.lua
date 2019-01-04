minetest.register_node("appletech:capple",{
	tiles={"atech_capple.png"},
	groups={snappy=3,choppy=3,oddly_breakable_by_hand=3,flammable=3}
})
minetest.register_node("appletech:2capple",{
	tiles={"atech_2capple.png"},
	groups={snappy=3,choppy=3,oddly_breakable_by_hand=3,flammable=3}
})

minetest.register_tool("appletech:applepick",{
	description="Apple Pickaxe",
	inventory_image ="atech_applepick.png",
	tool_capabilities={
		full_punch_interval=1.2,
		max_drop_level=0,
		groupcaps={
			cracky={times={[3]=1.60*9},uses=10,maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	groups = {flammable = 2},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
	output="appletech:capple",
	recipe={{"default:apple","default:apple","default:apple"},{"default:apple","default:apple","default:apple"},{"default:apple","default:apple","default:apple"}}
})
minetest.register_craft({
	type="shapeless",
	output="appletech:capple 9",
	recipe={"appletech:2capple"}
})
minetest.register_craft({
	type="shapeless",
	output="default:apple 9",
	recipe={"appletech:capple"}
})
minetest.register_craft({
	output="appletech:2capple",
	recipe={{"appletech:capple","appletech:capple","appletech:capple"},{"appletech:capple","appletech:capple","appletech:capple"},{"appletech:capple","appletech:capple","appletech:capple"}}
})
minetest.register_craft({
	output="appletech:applepick",
	recipe={{"appletech:capple","appletech:capple","appletech:capple"},{"","default:apple",""},{"","default:apple",""}}
})

