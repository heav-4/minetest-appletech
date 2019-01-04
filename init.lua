minetest.register_node("appletech:capple",{
	tiles={"atech_capple.png"},
	groups={snappy=3,choppy=3,oddly_breakable_by_hand=3,flammable=3}
})
minetest.register_node("appletech:2capple",{
	tiles={"atech_2capple.png"},
	groups={snappy=3,choppy=3,oddly_breakable_by_hand=3,flammable=3}
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
