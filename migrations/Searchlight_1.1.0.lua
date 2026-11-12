-- Historical Optics unlock, also valid when the fork is added to an existing world.
-- Optics became Lamp; preserve all unrelated recipe and research state.
for _,force in pairs(game.forces) do
 local technology=force.technologies["lamp"] or force.technologies["optics"]
 local recipe=force.recipes["hnt-search-light"]
 if technology and technology.researched and recipe then recipe.enabled=true end
end
