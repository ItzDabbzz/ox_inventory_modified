--[[

# Places to setup

## 24/7
- vec3(2665.22, 3286.36, 75.22) - Sandy Highway By YouTool
- vec3(2566.98, 382.44, 108.13)

]] --

return {
	-- General = {
	-- 	name = 'Shop',
	-- 	blip = {
	-- 		id = 59, colour = 69, scale = 0.8
	-- 	},
	-- 	inventory = {
	-- 		-- Beverages

	-- 		-- Fast Food

	-- 		-- Snacks & Sides
	-- 		{ name = 'nachos_a',                   price = 10 },
	-- 		{ name = 'peanuts',                    price = 10 },
	-- 		{ name = 'pretzels',                   price = 10 },

	-- 		-- Sweets & Pastries

	-- 		-- Candy & Chocolate
	-- 		{ name = 'snikkel_candy',              price = 10 },
	-- 		{ name = 'twerks_candy',               price = 10 },
	-- 		{ name = 'bzzz_sugary_candy_a',        price = 10 },
	-- 		{ name = 'bzzz_sugary_bar_snackbar_a', price = 10 },
	-- 		{ name = 'bzzz_sugary_bar_marte_a',    price = 10 },
	-- 		{ name = 'bzzz_sugary_chocothrone_a',  price = 10 },
	-- 	},
	-- 	locations = {
	-- 		vec3(25.7, -1347.3, 29.49),
	-- 		vec3(-3038.71, 585.9, 7.9),
	-- 		vec3(-3241.47, 1001.14, 12.83),
	-- 		vec3(1728.66, 6414.16, 35.03),
	-- 		vec3(1697.99, 4924.4, 42.06),
	-- 		vec3(1961.48, 3739.96, 32.34),
	-- 		vec3(547.79, 2671.79, 42.15),
	-- 		vec3(2679.25, 3280.12, 55.24),
	-- 		vec3(2557.94, 382.05, 108.62),
	-- 		vec3(373.55, 325.56, 103.56),
	-- 	},
	-- 	targets = {
	-- 		{ loc = vec3(25.06, -1347.32, 29.5),   length = 0.7, width = 0.5, heading = 0.0,   minZ = 29.5,   maxZ = 29.9,   distance = 1.5 },
	-- 		{ loc = vec3(-3039.18, 585.13, 7.91),  length = 0.6, width = 0.5, heading = 15.0,  minZ = 7.91,   maxZ = 8.31,   distance = 1.5 },
	-- 		{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83,  maxZ = 13.23,  distance = 1.5 },
	-- 		{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0,  minZ = 35.04,  maxZ = 35.44,  distance = 1.5 },
	-- 		{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06,  maxZ = 42.46,  distance = 1.5 },
	-- 		{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34,  maxZ = 32.74,  distance = 1.5 },
	-- 		{ loc = vec3(548.5, 2671.25, 42.16),   length = 0.6, width = 0.5, heading = 10.0,  minZ = 42.16,  maxZ = 42.56,  distance = 1.5 },
	-- 		{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24,  maxZ = 55.64,  distance = 1.5 },
	-- 		{ loc = vec3(2557.19, 381.4, 108.62),  length = 0.6, width = 0.5, heading = 0.0,   minZ = 108.62, maxZ = 109.02, distance = 1.5 },
	-- 		{ loc = vec3(373.13, 326.29, 103.57),  length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
	-- 	}
	-- },
	GasMisc = {
		name = '24/7 Misc',
		inventory = {
			{ name = 'cigarette', price = 10 },
			{ name = 'lighter',   price = 10 },

		},
		locations = {
			vec3(28.410961151123, -1345.4965820312, 29.598096847534)
		},
		targets = {
			{                                                                                                                    -- Sandy Shores 24/7
				loc = vec3(1959.55, 3739.41, 32.48),                                                                             -- Location of the target
				length = 2.7,                                                                                                    -- Length of the target
				width = 0.3,                                                                                                     -- Width of the target
				heading = 30.0,                                                                                                  -- Heading of the target
				minZ = 32.5,                                                                                                     -- Minimum Z coordinate of the target
				maxZ = 33.8,                                                                                                     -- Maximum Z coordinate of the target
				distance = 6.0                                                                                                   -- Distance at which the target is visible
			},
			{                                                                                                                    -- 24/7 Sandy @ RT 68 & Orbits Folly Lane
				loc = vec3(549.74, 2671.71, 42.32),                                                                              -- Location of the target
				length = 2.7,                                                                                                    -- Length of the target
				width = 0.1,                                                                                                     -- Width of the target
				heading = 6.0,                                                                                                   -- Heading of the target
				minZ = 42.3,                                                                                                     -- Minimum Z coordinate of the target
				maxZ = 43.6,                                                                                                     -- Maximum Z coordinate of the target
				distance = 6.0                                                                                                   -- Distance at which the target is visible
			},
			{ loc = vec3(23.70, -1347.44, 29.60), length = 0.2, width = 2.6, heading = 270.0, minZ = 29.6, maxZ = 31.0, distance = 6.0 }, -- Starberry 24/7
		}
	},
	GasCandy = {
		name = '24/7 Candy',
		inventory = {
			{ name = 'snikkel_candy',              price = 10 },
			{ name = 'twerks_candy',               price = 10 },
			{ name = 'bzzz_sugary_candy_a',        price = 10 },
			{ name = 'bzzz_sugary_bar_snackbar_a', price = 10 },
		},
		locations = {
			vec3(28.410961151123, -1345.4965820312, 29.598096847534)
		},
		targets = {
			{                            -- Sandy Shores 24/7
				loc = vec3(1960.41, 3741.52, 31.59), -- Location of the target
				length = 1.9,            -- Length of the target
				width = 0.3,             -- Width of the target
				heading = 30.0,          -- Heading of the target
				minZ = 31.6,             -- Minimum Z coordinate of the target
				maxZ = 32.1,             -- Maximum Z coordinate of the target
				distance = 2.0           -- Distance at which the target is visible
			},
			{                            -- 24/7 Sandy @ RT 68 & Orbits Folly Lane
				loc = vec3(548.18, 2670.16, 41.38), -- Location of the target
				length = 1.9,            -- Length of the target
				width = 0.2,             -- Width of the target
				heading = 8.0,           -- Heading of the target
				minZ = 41.4,             -- Minimum Z coordinate of the target
				maxZ = 41.9,             -- Maximum Z coordinate of the target
				distance = 2.0           -- Distance at which the target is visible
			},
		}
	},
	GasDrinks = {
		name = '24/7 Drinks',
		inventory = {
			{ name = 'water',       price = 10 },
			{ name = 'ecola',       price = 10 },
			{ name = 'ecola_light', price = 10 },
			{ name = 'coffeecup_a', price = 10 },
			{ name = 'bubbletea_a', price = 10 },
			{ name = 'capisun_a',   price = 10 },
			{ name = 'pepsiloca_a', price = 10 },
			{ name = 'pepsiloca_b', price = 10 },
			{ name = 'energy',      price = 10 },
		},
		locations = {
			vec3(28.410961151123, -1345.4965820312, 29.598096847534)
		},
		targets = {
			{                                                                                                                    -- Sandy Shores 24/7
				loc = vec3(1960.17, 3746.98, 31.34),                                                                             -- Location of the target
				length = 0.3,                                                                                                    -- Length of the target
				width = 4.9,                                                                                                     -- Width of the target
				heading = 30.0,                                                                                                  -- Heading of the target
				minZ = 31.3,                                                                                                     -- Minimum Z coordinate of the target
				maxZ = 33.6,                                                                                                     -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                   -- Distance at which the target is visible
			},
			{                                                                                                                    -- LTD Chumash
				loc = vec3(1701.17, 4931.46, 41.40),                                                                             -- Location of the target
				length = 2.1,                                                                                                    -- Length of the target
				width = 0.3,                                                                                                     -- Width of the target
				heading = 324.0,                                                                                                 -- Heading of the target
				minZ = 41.4,                                                                                                     -- Minimum Z coordinate of the target
				maxZ = 42.5,                                                                                                     -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                   -- Distance at which the target is visible
			},
			{                                                                                                                    -- 24/7 Sandy @ RT 68 & Orbits Folly Lane
				loc = vec3(546.30, 2664.85, 41.62),                                                                              -- Location of the target
				length = 0.4,                                                                                                    -- Length of the target
				width = 4.8,                                                                                                     -- Width of the target
				heading = 8.0,                                                                                                   -- Heading of the target
				minZ = 41.6,                                                                                                     -- Minimum Z coordinate of the target
				maxZ = 43.4,                                                                                                     -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                   -- Distance at which the target is visible
			},
			{ loc = vec3(28.00, -1341.39, 29.04), length = 0.2, width = 4.6, heading = 180.0, minZ = 29.0, maxZ = 30.7, distance = 2.0 }, -- Starberry 24/7
		}

	},
	GasFastFood = {
		name = '24/7 Fast Food',
		inventory = {
			{ name = 'burger',       price = 10 },
			{ name = 'hotdog_a',     price = 10 },
			{ name = 'hotdog_b',     price = 10 },
			{ name = 'carneasada_a', price = 10 },
			{ name = 'kebab_a',      price = 10 },
			{ name = 'burrito_a',    price = 10 },
			{ name = 'tosti',        price = 10 },
			{ name = 'sandwich',     price = 10 },

		},
		locations = {
			vec3(28.410961151123, -1345.4965820312, 29.598096847534)
		},
		targets = {
			{                                                                                                                   -- Sandy Shores 24/7
				loc = vec3(1968.56, 3744.88, 31.66),                                                                            -- Location of the target
				length = 2.1,                                                                                                   -- Length of the target
				width = 0.3,                                                                                                    -- Width of the target
				heading = 30.0,                                                                                                 -- Heading of the target
				minZ = 31.7,                                                                                                    -- Minimum Z coordinate of the target
				maxZ = 33.6,                                                                                                    -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                  -- Distance at which the target is visible
			},
			{                                                                                                                   -- LTD Chumash
				loc = vec3(1703.59, 4930.80, 41.32),                                                                            -- Location of the target
				length = 0.9,                                                                                                   -- Length of the target
				width = 2.0,                                                                                                    -- Width of the target
				heading = 12.0,                                                                                                 -- Heading of the target
				minZ = 41.3,                                                                                                    -- Minimum Z coordinate of the target
				maxZ = 42.5,                                                                                                    -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                  -- Distance at which the target is visible
			},
			{                                                                                                                   -- 24/7 Sandy @ RT 68 & Orbits Folly Lane
				loc = vec3(539.22, 2670.11, 41.32),                                                                             -- Location of the target
				length = 2.0,                                                                                                   -- Length of the target
				width = 0.4,                                                                                                    -- Width of the target
				heading = 8.0,                                                                                                  -- Heading of the target
				minZ = 41.3,                                                                                                    -- Minimum Z coordinate of the target
				maxZ = 43.3,                                                                                                    -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                  -- Distance at which the target is visible
			},
			{ loc = vec3(34.29, -1347.39, 28.62), length = 0.3, width = 1.9, heading = 90.0, minZ = 28.6, maxZ = 31.1, distance = 2.0 }, -- Strawberry 24/7

		}
	},
	GasSweetsNPastries = {
		name = '24/7 Sweets & Pastries',
		inventory = {
			{ name = 'muffin',     price = 10 },
			{ name = 'pink_donut', price = 10 },
			{ name = 'churros_a',  price = 10 },
			{ name = 'croissant',  price = 10 },
			{ name = 'donut_a',    price = 10 },
			{ name = 'donut_b',    price = 10 },
		},
		locations = {
			vec3(28.410961151123, -1345.4965820312, 29.598096847534)
		},
		targets = {
			{                                                                                                                   -- Sandy Shores 24/7
				loc = vec3(1966.89, 3747.98, 31.52),                                                                            -- Location of the target
				length = 2.0,                                                                                                   -- Length of the target
				width = 0.4,                                                                                                    -- Width of the target
				heading = 30.0,                                                                                                 -- Heading of the target
				minZ = 31.5,                                                                                                    -- Minimum Z coordinate of the target
				maxZ = 33.5,                                                                                                    -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                  -- Distance at which the target is visible
			},
			{                                                                                                                   -- LTD Chumash
				loc = vec3(1704.74, 4933.60, 41.58),                                                                            -- Location of the target
				length = 0.4,                                                                                                   -- Length of the target
				width = 1.8,                                                                                                    -- Width of the target
				heading = 324.0,                                                                                                -- Heading of the target
				minZ = 41.6,                                                                                                    -- Minimum Z coordinate of the target
				maxZ = 43.3,                                                                                                    -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                  -- Distance at which the target is visible
			},
			{                                                                                                                   -- 24/7 Sandy @ RT 68 & Orbits Folly Lane
				loc = vec3(539.80, 2666.52, 41.29),                                                                             -- Location of the target
				length = 2.0,                                                                                                   -- Length of the target
				width = 0.3,                                                                                                    -- Width of the target
				heading = 8.0,                                                                                                  -- Heading of the target
				minZ = 41.3,                                                                                                    -- Minimum Z coordinate of the target
				maxZ = 43.3,                                                                                                    -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                  -- Distance at which the target is visible
			},
			{ loc = vec3(34.14, -1343.77, 28.68), length = 0.3, width = 1.8, heading = 90.0, minZ = 28.7, maxZ = 31.1, distance = 2.0 }, -- Stawberry 24/7
		}
	},
	GasVeggiesNFruits = {
		name = '24/7 Veggies & Fruits',
		inventory = {
			{ name = 'salad',      price = 10 },
			{ name = 'apple',      price = 10 },
			{ name = 'banana',     price = 10 },
			{ name = 'strawberry', price = 10 },
			{ name = 'orange',     price = 10 },
			{ name = 'grapes',     price = 10 },
			{ name = 'tomato',     price = 10 },
			{ name = 'avocado',    price = 10 },
			{ name = 'broccoli',   price = 10 },
			{ name = 'carrot',     price = 10 },
			{ name = 'cucumber',   price = 10 },
			{ name = 'lettuce',    price = 10 },
			{ name = 'onion',      price = 10 },
			{ name = 'mushroom',   price = 10 },
			{ name = 'potato',     price = 10 },
		},
		locations = {
			vec3(28.410961151123, -1345.4965820312, 29.598096847534)
		},
		targets = {
			{
				loc = vec3(28.410961151123, -1345.4965820312, 29.198096847534),
				length = 0.9,
				width = 0.9,
				heading = 0.0,
				minZ = 29.198096847534,
				maxZ = 29.998096847534,
				distance = 1.5
			},
			{                                                                                                                    -- Sandy Shores 24/7
				loc = vec3(1962.60, 3743.54, 31.75),                                                                             -- Location of the target
				length = 2.1,                                                                                                    -- Length of the target
				width = 0.7,                                                                                                     -- Width of the target
				heading = 30.0,                                                                                                  -- Heading of the target
				minZ = 31.8,                                                                                                     -- Minimum Z coordinate of the target
				maxZ = 32.5,                                                                                                     -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                   -- Distance at which the target is visible
			},
			{                                                                                                                    -- LTD Chumash
				loc = vec3(1707.98, 4931.29, 41.60),                                                                             -- Location of the target
				length = 0.2,                                                                                                    -- Length of the target
				width = 1.8,                                                                                                     -- Width of the target
				heading = 326.0,                                                                                                 -- Heading of the target
				minZ = 41.6,                                                                                                     -- Minimum Z coordinate of the target
				maxZ = 43.2,                                                                                                     -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                   -- Distance at which the target is visible
			},
			{ loc = vec3(28.44, -1345.48, 28.63), length = 0.6, width = 2.1, heading = 270.0, minZ = 28.6, maxZ = 29.6, distance = 2.0 }, -- Strawberry 24/7
		}
	},
	GasBeer = {
		name = '24/7 Beer',
		inventory = {
			{ name = 'beer',    price = 10 },
			{ name = 'whiskey', price = 10 },
			{ name = 'vodka',   price = 10 },

		},
		locations = {
			vec3(28.026361465454, -1341.4890136719, 29.147745132446),
		},
		targets = {
			{                                                                                                                   -- Sandy Shores 24/7
				loc = vec3(1964.71, 3744.79, 31.84),                                                                            -- Location of the target
				length = 2.1,                                                                                                   -- Length of the target
				width = 0.7,                                                                                                    -- Width of the target
				heading = 30.0,                                                                                                 -- Heading of the target
				minZ = 31.8,                                                                                                    -- Minimum Z coordinate of the target
				maxZ = 32.6,                                                                                                    -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                  -- Distance at which the target is visible
			},
			{                                                                                                                   -- 24/7 Sandy @ RT 68 & Orbits Folly Lane
				loc = vec3(542.93, 2668.63, 41.40),                                                                             -- Location of the target
				length = 2.0,                                                                                                   -- Length of the target
				width = 0.7,                                                                                                    -- Width of the target
				heading = 6.0,                                                                                                  -- Heading of the target
				minZ = 41.4,                                                                                                    -- Minimum Z coordinate of the target
				maxZ = 42.4,                                                                                                    -- Maximum Z coordinate of the target
				distance = 2.0                                                                                                  -- Distance at which the target is visible
			},
			{ loc = vec3(30.89, -1345.51, 28.58), length = 0.7, width = 2.1, heading = 90.0, minZ = 28.6, maxZ = 29.7, distance = 2.0 }, -- Stawberry 24/7
		}
	},
	PetShop = {
		blip = {
			id = 463, colour = 31, scale = 1.1
		},
		name = 'Pet Shop',
		inventory = {
			{ name = 'petfood',                 price = 500, },
			{ name = 'collarpet',               price = 2000, },
			{ name = 'firstaidforpet',          price = 2000, },
			{ name = 'petnametag',              price = 2000, },
			{ name = 'petwaterbottleportable',  price = 500, },
			{ name = 'petgroomingkit',          price = 75000, },
			{ name = 'keepcompanionhusky',      price = 75000, count = 5, },
			{ name = 'keepcompanionpoodle',     price = 45000, count = 5, },
			{ name = 'keepcompanionrottweiler', price = 75000, count = 5, },
			{ name = 'keepcompanionwesty',      price = 30000, count = 5, },
			{ name = 'keepcompanioncat',        price = 25000, count = 10, },
			{ name = 'keepcompanionpug',        price = 50000, count = 5, },
			{ name = 'keepcompanionretriever',  price = 50000, count = 5, },
			{ name = 'keepcompanionshepherd',   price = 50000, count = 5, },
			{ name = 'keepcompanionhen',        price = 25000, count = 10, },
			{ name = 'keepcompanionrat',        price = 25000, count = 10, },
			{ name = 'keepcompanionrabbit',     price = 25000, count = 20, },
		},
		locations = {
			vec3(-1127.09, -278.17, 37.97)
		},
		targets = {
			{
				ped = `cs_guadalope`,
				scenario = 'WORLD_HUMAN_STAND_IMPATIENT',
				loc = vec3(552.05, 2743.5, 40.94),
				heading = 91.74,
				distance = 3.0,
			},
		}
	},
	Poacher = {
		name = 'Poacher',
		inventory = {
			{ name = 'keepcompanionmtlion',  price = 75000, count = 5, currency = 'black_money', },
			{ name = 'keepcompanionmtlion2', price = 75000, count = 5, currency = 'black_money', },
			{ name = 'keepcompanioncoyote',  price = 75000, count = 5, currency = 'black_money', },
		},
		locations = {
			vec3(4868.98, -4640.91, 12.72)
		},
		targets = {
			{
				ped = `csb_cletus`,
				scenario = 'PROP_HUMAN_SEAT_BENCH',
				loc = vec3(4868.98, -4640.91, 12.72),
				heading = 120.0,
				distance = 3.0,
			},
		}
	},
	Electronics = {
		name = 'Electronics Shop',
		inventory = {
			{ name = 'red_phone',       price = 1250, count = 50 },
			{ name = 'black_phone',     price = 1450, count = 50 },
			{ name = 'green_phone',     price = 1250, count = 50 },
			{ name = 'radio',           price = 150,  count = 50 },
			{ name = 'low_printer',     price = 750,  count = 50 },
			{ name = 'mechanic_tablet', price = 5000, count = 5 },
			{ name = 'racing_tablet',   price = 5000, count = 5 },
			{ name = 'powerbank',       price = 5000, count = 5 },
			{ name = 'qualityscales',   price = 5000, count = 5 },
			{ name = 'laptop',          price = 500,  count = 50 },

		},
		locations = {
			-- vec3(-1440.63, -174.26, 47.7),
			-- vec3(-658.58, -857.14, 24.49)
		},
		targets = {
			{ loc = vec3(-658.8, -858.74, 24.49),  length = 0.5, width = 0.5, heading = 173.98, minZ = 24.2, maxZ = 24.9, distance = 1.5 },
			{ loc = vec3(-1440.63, -174.26, 47.7), length = 0.5, width = 0.5, heading = 173.98, minZ = 47.2, maxZ = 48.5, distance = 1.5 },
			{ loc = vec3(-658.58, -857.14, 24.49), length = 0.5, width = 1.5, heading = 173.98, minZ = 24.2, maxZ = 25.5, distance = 3.5 },
			{ loc = vec3(218.5, -1517.49, 29.29),  length = 0.5, width = 0.5, heading = 173.98, minZ = 29.2, maxZ = 29.5, distance = 1.5 },
			{ loc = vec3(-85.62, 37.72, 71.9),     length = 0.5, width = 0.5, heading = 173.98, minZ = 71.2, maxZ = 72.5, distance = 1.5 },
			{ loc = vec3(-30.52, 6480.29, 31.5),   length = 0.5, width = 0.5, heading = 173.98, minZ = 31.2, maxZ = 32.5, distance = 1.5 },
		}
	},
	Liquor = {
		name = 'Liquor Store',
		blip = {
			id = 93, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'water', price = 10 },
			{ name = 'beer',  price = 10 },
			{ name = 'wine',  price = 15 },
			{ name = 'vodka', price = 15 }
		},
		locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319)
		},
		targets = {
			{ loc = vec3(1134.9, -982.34, 46.41),   length = 0.5, width = 0.5, heading = 96.0,   minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7,   minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14),    length = 0.7, width = 0.5, heading = 85.23,  minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26),  length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11),   length = 0.6, width = 0.6, heading = 200.0,  minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},

	YouTool = {
		name = 'YouTool',
		blip = {
			id = 402, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'lockpick',                price = 10 },
			{ name = 'WEAPON_CROWBAR',          price = 1250, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_HAMMER',           price = 1250, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_WRENCH',           price = 1250, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_BAT',              price = 500,  metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_KNIFE',            price = 500,  metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 5000, metadata = { registered = true }, license = 'weapon' },
			{ name = "WEAPON_SLEDGEHAMMER",     price = 1250, metadata = { registered = true }, license = 'weapon' },
		},
		locations = {
			vec3(2748.0, 3473.0, 55.67),
			vec3(342.99, -1298.26, 32.51)
		},
		targets = {
			{ loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	},

	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 110, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'ammo-9',               price = 150,   license = 'weapon' },
			{ name = 'WEAPON_KNIFE',         price = 500,   metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_BAT',           price = 500,   metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_GOLFCLUB',      price = 500,   metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_SNSPISTOL',     price = 13500, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_SNSPISTOL_MK2', price = 17500, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_PISTOL',        price = 25500, metadata = { registered = true }, license = 'weapon' }
		},
		locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(810.25, -2157.60, 29.62),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(13.69, -1105.84, 28.25),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19)
		},
		targets = {
			{ loc = vec3(-660.92, -934.10, 21.94),  length = 0.6, width = 0.5, heading = 180.0,  minZ = 21.8,  maxZ = 22.2,  distance = 2.0 },
			{ loc = vec3(808.86, -2158.50, 29.73),  length = 0.6, width = 0.5, heading = 360.0,  minZ = 29.6,  maxZ = 30.0,  distance = 2.0 },
			{ loc = vec3(1693.57, 3761.60, 34.82),  length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7,  maxZ = 35.1,  distance = 2.0 },
			{ loc = vec3(-330.29, 6085.54, 31.57),  length = 0.6, width = 0.5, heading = 225.0,  minZ = 31.4,  maxZ = 31.8,  distance = 2.0 },
			{ loc = vec3(252.85, -51.62, 70.0),     length = 0.6, width = 0.5, heading = 70.0,   minZ = 69.9,  maxZ = 70.3,  distance = 2.0 },
			{ loc = vec3(13.69, -1105.84, 28.25),   length = 0.7, width = 4.5, heading = 160.0,  minZ = 28.2,  maxZ = 29.2,  distance = 2.0 },
			{ loc = vec3(2566.59, 293.13, 108.85),  length = 0.6, width = 0.5, heading = 360.0,  minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5,  maxZ = 18.9,  distance = 2.0 },
			{ loc = vec3(841.05, -1034.76, 28.31),  length = 0.6, width = 0.5, heading = 360.0,  minZ = 28.2,  maxZ = 28.6,  distance = 2.0 }
		}
	},

	PoliceArmoury = {
		name = 'Police Armoury',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.8
		},
		inventory = {
			{ name = 'binoculars',          price = 5, },
			{ name = 'bodyarmor',           price = 5 },
			{ name = 'bodycam',             price = 5 },
			{ name = 'dashcam',             price = 5 },
			{ name = 'radio',               price = 5 },
			{ name = 'clamp',               price = 5 },
			{ name = 'long',                price = 5 },
			{ name = 'long2',               price = 5 },
			{ name = 'ctsfo',               price = 5 },
			{ name = 'ctsfo2',              price = 5 },
			{ name = 'firearms',            price = 5 },
			{ name = 'firearms2',           price = 5 },
			{ name = 'drone1',              price = 5 },
			{ name = 'drone2',              price = 5 },
			{ name = 'eod',                 price = 5 },
			{ name = 'handcuffs',           price = 5 },
			{ name = 'locker-chain',        price = 5 },
			{ name = 'locker_wheel',        price = 5 },
			{ name = 'matix_board',         price = 5 },
			{ name = 'mobilespike',         price = 5 },
			{ name = 'parkingticket',       price = 5 },
			{ name = 'police_stormram',     price = 5 },
			{ name = 'starchase',           price = 5 },
			{ name = 'tracker_cartridge',   price = 5 },
			{ name = 'grappler',            price = 5 },
			{ name = 'taser',               price = 5 },
			{ name = 'taser_cartridge',     price = 5 },
			{ name = 'ammo-9',              price = 5, },
			{ name = 'ammo-rifle',          price = 5, },
			{ name = 'WEAPON_FLASHLIGHT',   price = 200 },
			{ name = 'WEAPON_NIGHTSTICK',   price = 100 },
			{ name = 'WEAPON_PISTOL',       price = 500,  metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_CARBINERIFLE', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_STUNGUN',      price = 500,  metadata = { registered = true, serial = 'POL' } }
		},
		locations = {
			vec3(451.51, -979.44, 30.68),
			vec3(-544.79, -113.72, 37.87),
			vec3(-547.07, -109.04, 37.87),
			vec3(-1145.85, -2747.79, 21.36)
		},
		targets = {
			{ loc = vec3(453.21, -980.03, 30.68),    length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 },
			{ loc = vec3(-544.79, -113.72, 37.87),   length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 },
			{ loc = vec3(-547.07, -109.04, 37.87),   length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 },
			{ loc = vec3(-1145.85, -2747.79, 21.36), length = 0.5, width = 3.0, heading = 270.0, minZ = 21.2, maxZ = 22,   distance = 6 },
		}
	},

	Medicine = {
		name = 'Medicine Cabinet',
		groups = {
			['ambulance'] = 0
		},
		blip = {
			id = 403, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'medikit',       price = 26 },
			{ name = 'bandage',       price = 5 },
			{ name = 'defib',         price = 5 },
			{ name = 'ifaks',         price = 5 },
			{ name = 'firstaid',      price = 5 },
			{ name = 'rescuecushion', price = 5 },
			{ name = 'syringe',       price = 5 },
			{ name = 'tripod',        price = 5 },
			{ name = 'stabilisers',   price = 5 },
			{ name = 'walkingstick',  price = 5 },
			{ name = 'xanaxpack',     price = 5 },
			{ name = 'oxy',           price = 5 },
			{ name = 'painkillers',   price = 5 },
		},
		locations = {
			vec3(306.3687, -601.5139, 43.28406)
		},
		targets = {

		}
	},

	BlackMarketArms = {
		name = 'Black Market (Arms)',
		inventory = {
			{ name = 'WEAPON_DAGGER',        price = 5000,  metadata = { registered = false }, currency = 'black_money' },
			{ name = 'WEAPON_CERAMICPISTOL', price = 50000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'at_suppressor_light',  price = 50000, currency = 'black_money' },
			{ name = 'ammo-rifle',           price = 1000,  currency = 'black_money' },
			{ name = 'ammo-rifle2',          price = 1000,  currency = 'black_money' }
		},
		locations = {
			vec3(309.09, -913.75, 56.46)
		},
		targets = {

		}
	},

	VendingMachineDrinks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola',  price = 10 },
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
		}
	},
	LCS = {
		name = "Los Santos Customs",
		groups = { ["mechanic"] = 2 },
		inventory = {
			{ name = "engine_oil",           price = 0 },
			{ name = "tyre_replacement",     price = 0 },
			{ name = "clutch_replacement",   price = 0 },
			{ name = "air_filter",           price = 0 },
			{ name = "spark_plug",           price = 0 },
			{ name = "suspension_parts",     price = 0 },
			{ name = "brakepad_replacement", price = 0 },
			{ name = "i4_engine",            price = 0 },
			{ name = "v6_engine",            price = 0 },
			{ name = "v8_engine",            price = 0 },
			{ name = "v12_engine",           price = 0 },
			{ name = "turbocharger",         price = 0 },
			{ name = "ev_motor",             price = 0 },
			{ name = "ev_battery",           price = 0 },
			{ name = "ev_coolant",           price = 0 },
			{ name = "awd_drivetrain",       price = 0 },
			{ name = "rwd_drivetrain",       price = 0 },
			{ name = "fwd_drivetrain",       price = 0 },
			{ name = "slick_tyres",          price = 0 },
			{ name = "semi_slick_tyres",     price = 0 },
			{ name = "offroad_tyres",        price = 0 },
			{ name = "ceramic_brakes",       price = 0 },
			{ name = "drift_tuning_kit",     price = 0 },
			{ name = "lighting_controller",  price = 0 },
			{ name = "stancing_kit",         price = 0 },
			{ name = "cosmetic_part",        price = 0 },
			{ name = "respray_kit",          price = 0 },
			{ name = "vehicle_wheels",       price = 0 },
			{ name = "tyre_smoke_kit",       price = 0 },
			{ name = "bulletproof_tyres",    price = 0 },
			{ name = "extras_kit",           price = 0 },
			{ name = "nitrous_bottle",       price = 0 },
			{ name = "empty_nitrous_bottle", price = 0 },
			{ name = "nitrous_install_kit",  price = 0 },
			{ name = "cleaning_kit",         price = 0 },
			{ name = "repair_kit",           price = 0 },
			{ name = "duct_tape",            price = 0 },
			{ name = "performance_part",     price = 0 },
			{ name = "mechanic_tablet",      price = 0 },
			{ name = "r488sound",            price = 0 },
			{ name = "k20a",                 price = 0 },
			{ name = "urusv8",               price = 0 },
			{ name = "m297zonda",            price = 0 },
			{ name = "v8engine",             price = 0 },
			{ name = "shonen",               price = 0 },
			{ name = "predatorv8",           price = 0 },
			{ name = "gt3flat6",             price = 0 },
			{ name = "rotary7",              price = 0 },
			{ name = "supra2jzgtett",        price = 0 },
			{ name = "m158huayra",           price = 0 },
			{ name = "viperv10",             price = 0 },
			{ name = "veyronsound",          price = 0 },
			{ name = "perfov10",             price = 0 },
			{ name = "sestov10",             price = 0 },
			{ name = "mclarenv8",            price = 0 },
			{ name = "murciev12",            price = 0 },
			{ name = "r35sound",             price = 0 },
			{ name = "musv8",                price = 0 },
			{ name = "apollosv8",            price = 0 },
			{ name = "avesvv12",             price = 0 },
			{ name = "diablov12",            price = 0 },
			{ name = "f40v8",                price = 0 },
			{ name = "f50v12",               price = 0 },
			{ name = "ferrarif12",           price = 0 },
			{ name = "gtaspanov10",          price = 0 },
			{ name = "i4_engine",            price = 0 },
			{ name = "v6_engine",            price = 0 },
			{ name = "v8_engine",            price = 0 },
			{ name = "v12_engine",           price = 0 },
		},
		locations = {
			vec3(-363.54, -98.8, 38.0),
		},
		targets = {
			{
				loc = vec3(-363.54, -98.8, 38.0),
				length = 4.5,
				width = 4.0,
				heading = 5.0,
				minZ = 20.5,
				maxZ = 26.0,
				distance = 6,
			},
		},
	},
}
