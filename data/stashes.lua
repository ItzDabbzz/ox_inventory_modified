return {
	{
		coords = vec3(-543.83, -125.22, 47.51),
		target = {
			loc = vec3(-543.83, -125.22, 47.51),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open Personal Locker'
		},
		name = 'policelocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 700000,
		groups = shared.police
	},
	{
		coords = vec3(-547.28, -126.82, 47.51),
		target = {
			loc = vec3(-547.28, -126.82, 47.51),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open Personal Locker'
		},
		name = 'policelocker2',
		label = 'Personal Locker 2',
		owner = true,
		slots = 70,
		weight = 700000,
		groups = shared.police
	},

	{
		coords = vec3(301.3, -600.23, 43.28),
		target = {
			loc = vec3(301.82, -600.99, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open Personal Locker'
		},
		name = 'emslocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = { ['ambulance'] = 0 }
	},
}
