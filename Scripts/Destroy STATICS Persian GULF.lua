BASE:I("Checking in  for statics")


function DestroyStatic()
    local function destroyStaticIfAlive(staticName)
        local static = STATIC:FindByName(staticName, false)
        if static and static:IsAlive() then
            static:Destroy(true)
            
        end
    end


	if zones.khasabdefence and zones.khasabdefence.active == false then
		for _, staticName in ipairs({"Static M92 Camouflage 07-1", "Static M92 Camouflage 07-2"}) do
			destroyStaticIfAlive(staticName)
		end
	end

    if zones.fueldepo and zones.fueldepo.active == false then
        for _, staticName in ipairs({"Static Refueler ATZ-10-6", "Static Oil derrick-2", "Static FARP Tent-19", "Static FARP Tent-20", "Static Pump station-5",
		"Static Pump station-4", "Static Refueler ATZ-10-4", "Static Refueler ATZ-10-5", "Static Fuel tank-4", "Static Fuel tank-5", 
		"Static Fuel tank-6", "Static Command Center-10"}) do
            destroyStaticIfAlive(staticName)
        end
    end

    if zones.insurgentcamp and zones.insurgentcamp.active == false then
        for _, staticName in ipairs({"Static M92 Camouflage 05-1", "Static M92 Sandbag 13-3", "Static M92 Sandbag 13-2", "Static Road outpost-2", 
		"Static M92 Sandbag 04-2", "Static Pump station-4", "Static M92 Sandbag 04-1"}) do
            destroyStaticIfAlive(staticName)
        end
    end

	
	if zones.convoy and zones.convoy.active == false then
        for _, staticName in ipairs({"convoy1", "convoy2", "convoy3", "convoy4", "Static Road outpost-1"}) do
            destroyStaticIfAlive(staticName)
        end
    end

	if zones.tankfactory and zones.tankfactory.active == false then
        for _, staticName in ipairs({"Factory2", "Factorybuildning"}) do
            destroyStaticIfAlive(staticName)
        end
    end
end

DestroyStatic()

BASE:I("zone check completed")

