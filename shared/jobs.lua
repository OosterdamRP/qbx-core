QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved

---@class Job
---@field label string
---@field type? string
---@field defaultDuty boolean
---@field offDutyPay boolean
---@field grades table<integer, {name: string, payment: number, isboss: boolean}>

---@type table<string, Job>
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Burger',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Onafhangkelijk',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'Politie',
        type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Aspirant',
                payment = 50
            },
			[1] = {
                name = 'Surveillant',
                payment = 75
            },
			[2] = {
                name = 'Agent',
                payment = 100
            },
			[3] = {
                name = 'Hoofdagent',
                payment = 125
            },
            [4] = {
                name = 'Brigadier',
                payment = 125
            },
            [5] = {
                name = 'Inspecteur',
                payment = 125
            },
            [6] = {
                name = 'Hoofdinspecteur',
                payment = 125
            },
            [7] = {
                name = 'Commissaris',
                payment = 125
            },
            [8] = {
                name = 'Hoofdcommissaris',
                payment = 125
            },
			[9] = {
                name = 'Eerste hoofdcommissaris',
				isboss = true,
                payment = 150
            },
        },
	},
	['bcso'] = {
		label = 'Kmar',
        type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Marechaussee der3de Klasse',
                payment = 50
            },
			[1] = {
                name = 'Marechaussee der2de Klasse',
                payment = 75
            },
			[2] = {
                name = 'Marechaussee der1ste Klasse',
                payment = 100
            },
			[3] = {
                name = 'Wachtmeester',
                payment = 125
            },
            [4] = {
                name = 'Opperwachtmeester',
                payment = 125
            },
            [5] = {
                name = 'Adjudant - Onderofficier',
                payment = 125
            },
            [6] = {
                name = 'Tweede - Luitenant',
                payment = 125
            },
            [7] = {
                name = 'Eerste - Luitenant',
                payment = 125
            },
            [8] = {
                name = 'Kapitein',
                payment = 125
            },
            [9] = {
                name = 'Majoor',
                payment = 125
            },
            [10] = {
                name = 'Kolonel',
                payment = 125
            },
			[11] = {
                name = 'Luitenant-Generaal',
				isboss = true,
                payment = 150
            },
        },
	},
	['sasp'] = {
		label = 'SASP',
        type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
			[1] = {
                name = 'Officer',
                payment = 75
            },
			[2] = {
                name = 'Sergeant',
                payment = 100
            },
			[3] = {
                name = 'Lieutenant',
                payment = 125
            },
			[4] = {
                name = 'Chief',
				isboss = true,
                payment = 150
            },
        },
	},
	['ambulance'] = {
		label = 'Ambulance',
        type = 'ems',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Broeder',
                payment = 50
            },
			[1] = {
                name = 'Verpleegkundige',
                payment = 75
            },
			[2] = {
                name = 'Specialist',
                payment = 100
            },
			[3] = {
                name = 'Geneeskundige',
                payment = 125
            },
			[4] = {
                name = 'Hoofd Geneeskunde',
				isboss = true,
                payment = 150
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
			[1] = {
                name = 'House Sales',
                payment = 75
            },
			[2] = {
                name = 'Business Sales',
                payment = 100
            },
			[3] = {
                name = 'Broker',
                payment = 125
            },
			[4] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
			[1] = {
                name = 'Driver',
                payment = 75
            },
			[2] = {
                name = 'Event Driver',
                payment = 100
            },
			[3] = {
                name = 'Sales',
                payment = 125
            },
			[4] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Driver',
                payment = 50
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
			[1] = {
                name = 'Showroom Sales',
                payment = 75
            },
			[2] = {
                name = 'Business Sales',
                payment = 100
            },
			[3] = {
                name = 'Finance',
                payment = 125
            },
			[4] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Stagiair',
                payment = 50
            },
			[1] = {
                name = 'Uitzendkacht',
                payment = 75
            },
			[2] = {
                name = 'Monteur in opleiding',
                payment = 100
            },
			[3] = {
                name = 'Monteur',
                payment = 125
            },
			[4] = {
                name = 'Eerste Monteur',
                payment = 150
            },
            [5] = {
                name = 'Hoofd-monteur',
                payment = 150
            },
            [6] = {
                name = 'Autotechnicus in opleiding',
                payment = 150
            },
            [7] = {
                name = 'Autotechnicus',
                payment = 150
            },
            [8] = {
                name = 'Technisch Specialist in opleiding',
                payment = 125
            },
            [9] = {
                name = 'Technisch Specialist',
                payment = 125
            },
            [10] = {
                name = 'Autotechnisch Ingenieur',
                payment = 125
            },
            [11] = {
                name = 'Leermeester',
                payment = 125
            },
            [12] = {
                name = 'Teamleider in opleiding',
                payment = 125
            },
            [13] = {
                name = 'Teamleider',
                payment = 125
            },
            [14] = {
                name = 'Directeur',
                payment = 125
            },
            [15] = {
                name = 'Hoofddirecteur',
                isboss = true,
                payment = 125
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Judge',
                payment = 100
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Associate',
                payment = 50
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Journalist',
                payment = 50
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Collector',
                payment = 50
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Picker',
                payment = 50
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Sales',
                payment = 50
            },
        },
	},
}
