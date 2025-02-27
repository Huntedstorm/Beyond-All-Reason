return {
	cordronecarryair = {
		acceleration = 0.018,
		activatewhenbuilt = true,
		brakerate = 0.01722,
		buildangle = 16384,
		buildcostenergy = 12500,
		buildcostmetal = 1250,
		buildpic = "CORDRONECARRY.DDS",
		buildtime = 20000,
		canfly = true,
		canmove = true,
		canreclaim = false,
		canrepair = false,
		category = "ALL NOTLAND MOBILE NOTSUB NOTSHIP VTOL NOTHOVER EMPABLE",
		collide = true,
		collisionvolumeoffsets = "-1 5 2",
		collisionvolumescales = "48 48 136",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		cruisealt = 100,
		energymake = 25,
		energystorage = 1500,
		energyuse = 25,
		explodeas = "hugeexplosiongeneric",
		footprintx = 6,
		footprintz = 6,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 15,
		idletime = 600,
		losemitheight = 56,
		mass = 10000,
		maxdamage = 3500,
		maxvelocity = 1.15,
		maxwaterdepth = 15,
		movementclass = "BOAT5",
		nochasecategory = "VTOL",
		objectname = "Units/CORDRONECARRYAIR.s3o",
		radardistance = 1500,
		radaremitheight = 56,
		script = "Units/CORDRONECARRYAIR.cob",
		seismicsignature = 0,
		selfdestructas = "hugeexplosiongenericSelfD",
		sightdistance = 700,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 135,
		upright = true,
		customparams = {
			model_author = "Odin",
			normaltex = "unittextures/Cor_normal.dds",
			subfolder = "scavengers/air",
			techlevel = 3,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-0.0550308227539 1.52587890767e-06 4.55026245117",
				collisionvolumescales = "61.8225860596 60.9250030518 154.450805664",
				collisionvolumetype = "Box",
				damage = 9168,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 700,
				object = "Units/cordronecarry_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 4032,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 350,
				object = "Units/arm6X6C.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:radarpulse_t1_slow",
				[2] = "custom:waterwake-large",
				[3] = "custom:bowsplash-huge",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			plasma = {
				areaofeffect = 4,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",--"custom:genericshellexplosion-medium",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "HeavyCannon",
				noselfdamage = true,
				range = 1200,
				reloadtime = 2.5,
				size = 0,
				soundhit = "",--"xplomed2",
				soundhitwet = "",--"splssml",
				soundstart = "",--"cannhvy1",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 800,
				damage = {
					default = 0,
				},
				customparams = {
					carried_unit = "cordrone",     --Name of the unit spawned by this carrier unit.
					-- carried_unit2... 			Currently not implemented, but planned.
					engagementrange = 1200,
					--spawns_surface = "SEA",    -- "LAND" or "SEA". The SEA option has not been tested currently.
					spawnrate = 10, 				--Spawnrate roughly in seconds.
					maxunits = 10,				--Will spawn units until this amount has been reached.
					buildcostenergy = 1000,--650,			--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					buildcostmetal = 40,--29,			--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					controlradius = 1300,			--The spawned units should stay within this radius. Unfinished behavior may cause exceptions. Planned: radius = 0 to disable radius limit.
					decayrate = 9,
					attackformationspread = 200,	--Used to spread out the drones when attacking from a docked state. Distance between each drone when spreading out.
					attackformationoffset = 30,	--Used to spread out the drones when attacking from a docked state. Distance from the carrier when they start moving directly to the target. Given as a percentage of the distance to the target.
					carrierdeaththroe = "release",
					dockingarmor = 0.2,
					dockinghealrate = 36,
					docktohealthreshold = 50,
					enabledocking = true,		--If enabled, docking behavior is used. Currently docking while moving or stopping, and undocking while attacking. Unfinished behavior may cause exceptions.
					dockingHelperSpeed = 5,
					dockingpiecestart = 9,		--First model piece to be used for docking.
					dockingpieceinterval = 1,	--Number of pieces to skip when docking the next unit.
					dockingpieceend = 19,		--Last model piece used for docking. Will loop back to first when exceeded.
					dockingradius = 300,			--The range at which the units snap to the carrier unit when docking.
				}
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "PLASMA",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
