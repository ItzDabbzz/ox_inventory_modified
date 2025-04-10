return {
    ['bandage'] = {
        label = 'Bandage',
        weight = 115,
        category = 'medical',
        key = 'bandage',
        decay = true,
        allowArmed = true,
        close = true,
        stack = true,
        client = {
            anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
            prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
            disable = { move = true, car = true, combat = true },
            usetime = 2500,
        }
    },

    ['burger'] = {
        label = 'Burger',
        weight = 220,
        client = {
            image = "burger.png",
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            notification = 'You ate a delicious burger',
        },
    },

    ['sprunk'] = {
        label = 'Sprunk',
        category = 'drink',
        weight = 350,
        key = 'sprunk',
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'You quenched your thirst with a sprunk'
        }
    },

    ['parachute'] = {
        label = 'Parachute',
        weight = 8000,
        stack = false,
        category = 'tools',
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500
        }
    },

    ['garbage'] = {
        category = 'misc',
        label = 'Garbage',
        client = {
            image = 'garbage.png',
        },
    },

    ['paperbag'] = {
        label = 'Paper Bag',
        category = 'ingredients',
        weight = 1,
        stack = false,
        close = false,
        consume = 0,
        key = 'paperbag',
        client = {
            image = 'paperbag.png',
        },
    },

    ['panties'] = {
        label = 'Knickers',
        weight = 10,
        consume = 0,
        category = 'misc',
        key = 'panties',
        client = {
            status = { thirst = -100000, stress = -25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
            usetime = 2500,
        }
    },

    ['lockpick'] = {
        label = 'Lockpick',
        weight = 160,
        category = 'tools',
        key = 'lockpick',
        client = {
            image = 'lockpick.png',
        },
    },

    ['cryptostick'] = {
        label = 'Crypto Stick',
        weight = 50,
        stack = false,
        category = 'electronics',
        key = 'cryptostick',
        client = {
            image = 'cryptostick.png',
        },
    },

    ['phone_dongle'] = {
        label = 'Phone Dongle',
        weight = 50,
        stack = false,
        category = 'electronics',
        key = 'phone_dongle',
        client = {
            image = 'phone_dongle.png',
        },
    },

    ['powerbank'] = {
        label = 'Power Bank',
        weight = 50,
        stack = false,
        category = 'electronics',
        key = 'powerbank',
        client = {
            image = 'powerbank.png',
        },
    },

    ['phone'] = {
        label = 'Classic Phone',
        weight = 150,
        stack = false,
        consume = 0,
        category = 'electronics',
        key = 'phone',
        client = {
            image = 'phone.png',
            export = 'qs-smartphone-pro.UsePhoneItem',
            add = function(total)
                TriggerServerEvent('phone:itemAdd')
            end,
            remove = function(total)
                TriggerServerEvent('phone:itemDelete')
            end,
        },
    },

    ['black_phone'] = {
        label = 'Black Phone',
        weight = 150,
        stack = false,
        consume = 0,
        category = 'electronics',
        key = 'black_phone',
        client = {
            image = 'black_phone.png',
            export = 'qs-smartphone-pro.UsePhoneItem',
            add = function(total)
                TriggerServerEvent('phone:itemAdd')
            end,
            remove = function(total)
                TriggerServerEvent('phone:itemDelete')
            end,
        },
    },

    ['yellow_phone'] = {
        label = 'Yellow Phone',
        weight = 150,
        stack = false,
        consume = 0,
        category = 'electronics',
        key = 'yellow_phone',
        client = {
            image = 'yellow_phone.png',
            export = 'qs-smartphone-pro.UsePhoneItem',
            add = function(total)
                TriggerServerEvent('phone:itemAdd')
            end,
            remove = function(total)
                TriggerServerEvent('phone:itemDelete')
            end,
        },
    },

    ['red_phone'] = {
        label = 'Red Phone',
        weight = 150,
        stack = false,
        consume = 0,
        category = 'electronics',
        key = 'red_phone',
        client = {
            image = 'red_phone.png',
            export = 'qs-smartphone-pro.UsePhoneItem',
            add = function(total)
                TriggerServerEvent('phone:itemAdd')
            end,
            remove = function(total)
                TriggerServerEvent('phone:itemDelete')
            end,
        },
    },

    ['green_phone'] = {
        label = 'Green Phone',
        weight = 150,
        stack = false,
        consume = 0,
        category = 'electronics',
        key = 'green_phone',
        client = {
            image = 'green_phone.png',
            export = 'qs-smartphone-pro.UsePhoneItem',
            add = function(total)
                TriggerServerEvent('phone:itemAdd')
            end,
            remove = function(total)
                TriggerServerEvent('phone:itemDelete')
            end,
        },
    },

    ['white_phone'] = {
        label = 'White Phone',
        weight = 150,
        stack = false,
        consume = 0,
        category = 'electronics',
        key = 'white_phone',
        client = {
            image = 'white_phone.png',
            export = 'qs-smartphone-pro.UsePhoneItem',
            add = function(total)
                TriggerServerEvent('phone:itemAdd')
            end,
            remove = function(total)
                TriggerServerEvent('phone:itemDelete')
            end,
        },
    },

    ['mustard'] = {
        label = 'Mustard',
        weight = 500,
        category = 'drink',
        client = {
            status = { thirst = -100000, stress = -25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
            usetime = 2500,
        }
    },

    ['water'] = {
        label = 'Water',
        weight = 500,
        category = 'drink',
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
            usetime = 2500,
            cancel = true,
            notification = 'You drank some refreshing water'
        }
    },

    ['armour'] = {
        label = 'Bulletproof Vest',
        weight = 3000,
        stack = false,
        category = 'clothing',
        key = 'armour',
        client = {
            image = 'armour.png',
            usetime = 3500,
        },
    },

    ['clothing'] = {
        category = 'clothing',
        label = 'Clothing',
        consume = 0,
        key = 'clothing',
        client = {
            image = 'clothing.png',
        },
    },

    ['money'] = {
        category = 'money',
        label = 'Money',
        key = 'money',
        client = {
            image = 'money.png',
        },
    },

    ['black_money'] = {
        category = 'money',
        label = 'Dirty Money',
        key = 'black_money',
        client = {
            image = 'black_money.png',
        },
    },

    ['id_card'] = {
        label = 'Identification Card',
        category = 'documents',
        key = 'id_card',
        client = {
            image = 'id_card.png',
        },
    },

    ['driver_license'] = {
        label = 'Drivers License',
        category = 'documents',
        key = 'driver_license',
        client = {
            image = 'driver_license.png',
        },
    },

    ['weaponlicense'] = {
        label = 'Weapon License',
        category = 'documents',
        key = 'weaponlicense',
        client = {
            image = 'weaponlicense.png',
        },
    },

    ['lawyerpass'] = {
        label = 'Lawyer Pass',
        category = 'documents',
        key = 'lawyerpass',
        client = {
            image = 'lawyerpass.png',
        },
    },

    ['radio'] = {
        label = 'Radio',
        weight = 1000,
        stack = false,
        allowArmed = true,
        category = 'electronics',
        key = 'radio',
        client = {
            image = 'radio.png',
        },
    },

    ['advancedlockpick'] = {
        label = 'Advanced Lockpick',
        weight = 500,
        category = 'tools',
        key = 'advancedlockpick',
        client = {
            image = 'advancedlockpick.png',
        },
    },

    ['screwdriverset'] = {
        label = 'Screwdriver Set',
        weight = 500,
        category = 'tools',
        key = 'screwdriverset',
        client = {
            image = 'screwdriverset.png',
        },
    },

    ['electronickit'] = {
        label = 'Electronic Kit',
        weight = 500,
        category = 'electronics',
        key = 'electronickit',
        client = {
            image = 'electronickit.png',
        },
    },

    ['cleaningkit'] = {
        label = 'Cleaning Kit',
        weight = 500,
        category = 'tools',
        key = 'cleaningkit',
        client = {
            image = 'cleaningkit.png',
        },
    },

    ['repairkit'] = {
        label = 'Repair Kit',
        weight = 2500,
        category = 'tools',
        key = 'repairkit',
        client = {
            image = 'repairkit.png',
        },
    },

    ['advancedrepairkit'] = {
        label = 'Advanced Repair Kit',
        weight = 4000,
        category = 'tools',
        key = 'advancedrepairkit',
        client = {
            image = 'advancedrepairkit.png',
        },
    },

    ['rolex'] = {
        label = 'Golden Watch',
        weight = 1500,
        category = 'accessories',
        key = 'rolex',
        client = {
            image = 'rolex.png',
        },
    },

    ['goldbar'] = {
        label = 'Gold Bar',
        weight = 1500,
        key = 'goldbar',
        client = {
            image = 'goldbar.png',
        },
    },

    ['firstaid'] = {
        label = 'First Aid',
        weight = 2500,
        key = 'firstaid',
        client = {
            image = 'firstaid.png',
        },
    },

    ['ifaks'] = {
        label = 'Individual First Aid Kit',
        weight = 2500,
        key = 'ifaks',
        client = {
            image = 'ifaks.png',
        },
    },

    ['painkillers'] = {
        label = 'Painkillers',
        weight = 400,
        key = 'painkillers',
        client = {
            image = 'painkillers.png',
        },
    },

    ['firework1'] = {
        label = '2Brothers',
        weight = 1000,
        key = 'firework1',
        client = {
            image = 'firework1.png',
        },
    },

    ['firework2'] = {
        label = 'Poppelers',
        weight = 1000,
        key = 'firework2',
        client = {
            image = 'firework2.png',
        },
    },

    ['firework3'] = {
        label = 'WipeOut',
        weight = 1000,
        key = 'firework3',
        client = {
            image = 'firework3.png',
        },
    },

    ['firework4'] = {
        label = 'Weeping Willow',
        weight = 1000,
        key = 'firework4',
        client = {
            image = 'firework4.png',
        },
    },

    ['steel'] = {
        label = 'Steel',
        weight = 100,
        key = 'steel',
        client = {
            image = 'steel.png',
        },
    },

    ['rubber'] = {
        label = 'Rubber',
        weight = 100,
        key = 'rubber',
        client = {
            image = 'rubber.png',
        },
    },

    ['metalscrap'] = {
        label = 'Metal Scrap',
        weight = 100,
        key = 'metalscrap',
        client = {
            image = 'metalscrap.png',
        },
    },

    ['iron'] = {
        label = 'Iron',
        weight = 100,
        key = 'iron',
        client = {
            image = 'iron.png',
        },
    },

    ['copper'] = {
        label = 'Copper',
        weight = 100,
        key = 'copper',
        client = {
            image = 'copper.png',
        },
    },

    ['aluminium'] = {
        label = 'Aluminium',
        weight = 100,
        key = 'aluminium',
        client = {
            image = 'aluminium.png',
        },
    },

    ['plastic'] = {
        label = 'Plastic',
        weight = 100,
        key = 'plastic',
        client = {
            image = 'plastic.png',
        },
    },

    ['glass'] = {
        label = 'Glass',
        weight = 100,
        key = 'glass',
        client = {
            image = 'glass.png',
        },
    },

    ['gatecrack'] = {
        label = 'Gatecrack',
        weight = 1000,
        key = 'gatecrack',
        client = {
            image = 'gatecrack.png',
        },
    },

    ['trojan_usb'] = {
        label = 'Trojan USB',
        weight = 100,
        key = 'trojan_usb',
        client = {
            image = 'trojan_usb.png',
        },
    },

    ['toaster'] = {
        label = 'Toaster',
        weight = 5000,
        key = 'toaster',
        client = {
            image = 'toaster.png',
        },
    },

    ['small_tv'] = {
        label = 'Small TV',
        weight = 100,
        key = 'small_tv',
        client = {
            image = 'small_tv.png',
        },
    },

    ['security_card_01'] = {
        label = 'Security Card A',
        weight = 100,
        key = 'security_card_01',
        client = {
            image = 'security_card_01.png',
        },
    },

    ['security_card_02'] = {
        label = 'Security Card B',
        weight = 100,
        key = 'security_card_02',
        client = {
            image = 'security_card_02.png',
        },
    },

    ['drill'] = {
        label = 'Drill',
        weight = 5000,
        key = 'drill',
        client = {
            image = 'drill.png',
        },
    },

    ['thermite'] = {
        label = 'Thermite',
        weight = 1000,
        key = 'thermite',
        client = {
            image = 'thermite.png',
        },
    },

    ['diving_gear'] = {
        label = 'Diving Gear',
        weight = 30000,
        key = 'diving_gear',
        client = {
            image = 'diving_gear.png',
        },
    },

    ['diving_fill'] = {
        label = 'Diving Tube',
        weight = 3000,
        key = 'diving_fill',
        client = {
            image = 'diving_fill.png',
        },
    },

    ['antipatharia_coral'] = {
        label = 'Antipatharia',
        weight = 1000,
        key = 'antipatharia_coral',
        client = {
            image = 'antipatharia_coral.png',
        },
    },

    ['dendrogyra_coral'] = {
        label = 'Dendrogyra',
        weight = 1000,
        key = 'dendrogyra_coral',
        client = {
            image = 'dendrogyra_coral.png',
        },
    },

    ['jerry_can'] = {
        label = 'Jerrycan',
        weight = 3000,
        key = 'jerry_can',
        client = {
            image = 'jerry_can.png',
        },
    },

    ['nitrous'] = {
        label = 'Nitrous',
        weight = 1000,
        key = 'nitrous',
        client = {
            image = 'nitrous.png',
        },
    },

    ['wine'] = {
        label = 'Wine',
        weight = 500,
        key = 'wine',
        client = {
            image = 'wine.png',
        },
    },

    ['grape'] = {
        label = 'Grape',
        weight = 10,
        key = 'grape',
        client = {
            image = 'grape.png',
        },
    },

    ['grapejuice'] = {
        label = 'Grape Juice',
        weight = 200,
        key = 'grapejuice',
        client = {
            image = 'grapejuice.png',
        },
    },

    ['coffee'] = {
        label = 'Coffee',
        weight = 200,
        key = 'coffee',
        client = {
            image = 'coffee.png',
        },
    },

    ['vodka'] = {
        label = 'Vodka',
        weight = 500,
        key = 'vodka',
        client = {
            image = 'vodka.png',
        },
    },

    ['whiskey'] = {
        label = 'Whiskey',
        weight = 200,
        key = 'whiskey',
        client = {
            image = 'whiskey.png',
        },
    },

    ['beer'] = {
        label = 'beer',
        weight = 200,
        key = 'beer',
        client = {
            image = 'beer.png',
        },
    },

    ['sandwich'] = {
        label = 'beer',
        weight = 200,
        key = 'sandwich',
        client = {
            image = 'sandwich.png',
        },
    },

    ['walking_stick'] = {
        label = 'Walking Stick',
        weight = 1000,
        key = 'walking_stick',
        client = {
            image = 'walking_stick.png',
        },
    },

    ['lighter'] = {
        label = 'Lighter',
        weight = 200,
        key = 'lighter',
        client = {
            image = 'lighter.png',
        },
    },

    ['binoculars'] = {
        label = 'Binoculars',
        weight = 800,
        key = 'binoculars',
        client = {
            image = 'binoculars.png',
        },
    },

    ['stickynote'] = {
        label = 'Sticky Note',
        weight = 0,
        key = 'stickynote',
        client = {
            image = 'stickynote.png',
        },
    },

    ['empty_evidence_bag'] = {
        label = 'Empty Evidence Bag',
        weight = 200,
        key = 'empty_evidence_bag',
        client = {
            image = 'empty_evidence_bag.png',
        },
    },

    ['filled_evidence_bag'] = {
        label = 'Filled Evidence Bag',
        weight = 200,
        key = 'filled_evidence_bag',
        client = {
            image = 'filled_evidence_bag.png',
        },
    },

    ['harness'] = {
        label = 'Harness',
        weight = 200,
        key = 'harness',
        client = {
            image = 'harness.png',
        },
    },

    ['handcuffs'] = {
        label = 'Handcuffs',
        weight = 200,
        key = 'handcuffs',
        client = {
            image = 'handcuffs.png',
        },
    },

    ['10kgoldchain'] = {
        label = '10k Gold Chain',
        weight = 2000,
        stack = true,
        close = true,
        description = '10 carat golden chain',
        key = '10kgoldchain',
        client = {
            image = '10kgoldchain.png',
        },
    },

    ['snikkel_candy'] = {
        label = 'Snikkel',
        weight = 100,
        stack = true,
        close = true,
        description = 'Some delicious candy :O',
        key = 'snikkel_candy',
        client = {
            image = 'snikkel_candy.png',
        },
    },

    ['creditcard'] = {
        label = 'creditcard',
        weight = 1,
        stack = false,
        close = false,
        consume = 0,
        key = 'creditcard',
        client = {
            image = 'creditcard.png',
            export = 'qs-banking.CreateCard',
        },
    },

    ['labkey'] = {
        label = 'Key',
        weight = 500,
        stack = false,
        close = true,
        description = 'Key for a lock...?',
        key = 'labkey',
        client = {
            image = 'labkey.png',
        },
    },

    ['certificate'] = {
        label = 'Certificate',
        weight = 0,
        stack = true,
        close = true,
        description = 'Certificate that proves you own certain stuff',
        key = 'certificate',
        client = {
            image = 'certificate.png',
        },
    },

    ['twerks_candy'] = {
        label = 'Twerks',
        weight = 100,
        stack = true,
        close = true,
        description = 'Some delicious candy :O',
        key = 'twerks_candy',
        client = {
            image = 'twerks_candy.png',
        },
    },

    ['printerdocument'] = {
        label = 'Document',
        weight = 500,
        stack = false,
        close = true,
        description = 'A nice document',
        key = 'printerdocument',
        client = {
            image = 'printerdocument.png',
        },
    },

    ['moneybag'] = {
        label = 'Money Bag',
        weight = 0,
        stack = false,
        close = true,
        description = 'A bag with cash',
        key = 'moneybag',
        client = {
            image = 'moneybag.png',
        },
    },

    ['microwave'] = {
        label = 'Microwave',
        weight = 46000,
        stack = false,
        close = true,
        description = 'Microwave',
        key = 'microwave',
        client = {
            image = 'microwave.png',
        },
    },

    ['aluminumoxide'] = {
        label = 'Aluminium Powder',
        weight = 100,
        stack = true,
        close = false,
        description = 'Some powder to mix with',
        key = 'aluminumoxide',
        client = {
            image = 'aluminumoxide.png',
        },
    },

    ['ironoxide'] = {
        label = 'Iron Powder',
        weight = 100,
        stack = true,
        close = false,
        description = 'Some powder to mix with.',
        key = 'ironoxide',
        client = {
            image = 'ironoxide.png',
        },
    },

    ['heavyarmor'] = {
        label = 'Heavy Armor',
        weight = 5000,
        stack = true,
        close = true,
        description = 'Some protection wont hurt... right?',
        key = 'heavyarmor',
        client = {
            image = 'heavyarmor.png',
        },
    },

    ['laptop'] = {
        label = 'Laptop',
        weight = 4000,
        stack = true,
        close = true,
        description = 'Expensive laptop',
        key = 'laptop',
        client = {
            image = 'laptop.png',
        },
    },

    ['kurkakola'] = {
        label = 'Cola',
        weight = 500,
        stack = true,
        close = true,
        description = 'For all the thirsty out there',
        key = 'kurkakola',
        client = {
            image = 'kurkakola.png',
        },
    },

    ['tosti'] = {
        label = 'Grilled Cheese Sandwich',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        key = 'tosti',
        client = {
            image = 'tosti.png',
        },
    },

    ['aluminum'] = {
        label = 'Aluminium',
        weight = 100,
        stack = true,
        close = false,
        description = 'Nice piece of metal that you can probably use for something',
        key = 'aluminum',
        client = {
            image = 'aluminum.png',
        },
    },

    ['casinochips'] = {
        label = 'Casino Chips',
        weight = 0,
        stack = true,
        close = false,
        description = 'Chips For Casino Gambling',
        key = 'casinochips',
        client = {
            image = 'casinochips.png',
        },
    },

    ['walkstick'] = {
        label = 'Walking Stick',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Walking stick for yall grannies out there.. HAHA',
        key = 'walkstick',
        client = {
            image = 'walkstick.png',
        },
    },

    ['armor'] = {
        label = 'Armor',
        weight = 5000,
        stack = true,
        close = true,
        description = 'Some protection wont hurt... right?',
        key = 'armor',
        client = {
            image = 'armor.png',
        },
    },

    ['radioscanner'] = {
        label = 'Radio Scanner',
        weight = 1000,
        stack = true,
        close = true,
        description = 'With this you can get some police alerts. Not 100% effective however',
        key = 'radioscanner',
        client = {
            image = 'radioscanner.png',
        },
    },

    ['police_stormram'] = {
        label = 'Stormram',
        weight = 18000,
        stack = true,
        close = true,
        description = 'A nice tool to break into doors',
        key = 'police_stormram',
        client = {
            image = 'police_stormram.png',
        },
    },

    ['pinger'] = {
        label = 'Pinger',
        weight = 1000,
        stack = true,
        close = true,
        description = 'With a pinger and your phone you can send out your location',
        key = 'pinger',
        client = {
            image = 'pinger.png',
        },
    },

    ['markedbills'] = {
        label = 'Marked Money',
        weight = 1000,
        stack = false,
        close = true,
        description = 'Money?',
        key = 'markedbills',
        client = {
            image = 'markedbills.png',
        },
    },

    ['water_bottle'] = {
        label = 'Bottle of Water',
        weight = 500,
        stack = true,
        close = true,
        description = 'For all the thirsty out there',
        key = 'water_bottle',
        client = {
            image = 'water_bottle.png',
        },
    },

    ['tablet'] = {
        label = 'Tablet',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Expensive tablet',
        key = 'tablet',
        client = {
            image = 'tablet.png',
        },
    },

    ['engine_oil'] = {
        label = 'Engine Oil',
        weight = 1000,
        key = 'engine_oil',
        client = {
            image = 'engine_oil.png',
        },
    },

    ['tyre_replacement'] = {
        label = 'Tyre Replacement',
        weight = 1000,
        key = 'tyre_replacement',
        client = {
            image = 'tyre_replacement.png',
        },
    },

    ['clutch_replacement'] = {
        label = 'Clutch Replacement',
        weight = 1000,
        key = 'clutch_replacement',
        client = {
            image = 'clutch_replacement.png',
        },
    },

    ['air_filter'] = {
        label = 'Air Filter',
        weight = 100,
        key = 'air_filter',
        client = {
            image = 'air_filter.png',
        },
    },

    ['spark_plug'] = {
        label = 'Spark Plug',
        weight = 1000,
        key = 'spark_plug',
        client = {
            image = 'spark_plug.png',
        },
    },

    ['brakepad_replacement'] = {
        label = 'Brakepad Replacement',
        weight = 1000,
        key = 'brakepad_replacement',
        client = {
            image = 'brakepad_replacement.png',
        },
    },

    ['suspension_parts'] = {
        label = 'Suspension Parts',
        weight = 1000,
        key = 'suspension_parts',
        client = {
            image = 'suspension_parts.png',
        },
    },

    ['i4_engine'] = {
        label = 'I4 Engine',
        weight = 1000,
        key = 'i4_engine',
        client = {
            image = 'i4_engine.png',
        },
    },

    ['v6_engine'] = {
        label = 'V6 Engine',
        weight = 1000,
        key = 'v6_engine',
        client = {
            image = 'v6_engine.png',
        },
    },

    ['v8_engine'] = {
        label = 'V8 Engine',
        weight = 1000,
        key = 'v8_engine',
        client = {
            image = 'v8_engine.png',
        },
    },

    ['v12_engine'] = {
        label = 'V12 Engine',
        weight = 1000,
        key = 'v12_engine',
        client = {
            image = 'v12_engine.png',
        },
    },

    ['turbocharger'] = {
        label = 'Turbocharger',
        weight = 1000,
        key = 'turbocharger',
        client = {
            image = 'turbocharger.png',
        },
    },

    ['ev_motor'] = {
        label = 'EV Motor',
        weight = 1000,
        key = 'ev_motor',
        client = {
            image = 'ev_motor.png',
        },
    },

    ['ev_battery'] = {
        label = 'EV Battery',
        weight = 1000,
        key = 'ev_battery',
        client = {
            image = 'ev_battery.png',
        },
    },

    ['ev_coolant'] = {
        label = 'EV Coolant',
        weight = 1000,
        key = 'ev_coolant',
        client = {
            image = 'ev_coolant.png',
        },
    },

    ['awd_drivetrain'] = {
        label = 'AWD Drivetrain',
        weight = 1000,
        key = 'awd_drivetrain',
        client = {
            image = 'awd_drivetrain.png',
        },
    },

    ['rwd_drivetrain'] = {
        label = 'RWD Drivetrain',
        weight = 1000,
        key = 'rwd_drivetrain',
        client = {
            image = 'rwd_drivetrain.png',
        },
    },

    ['fwd_drivetrain'] = {
        label = 'FWD Drivetrain',
        weight = 1000,
        key = 'fwd_drivetrain',
        client = {
            image = 'fwd_drivetrain.png',
        },
    },

    ['slick_tyres'] = {
        label = 'Slick Tyres',
        weight = 1000,
        key = 'slick_tyres',
        client = {
            image = 'slick_tyres.png',
        },
    },

    ['semi_slick_tyres'] = {
        label = 'Semi Slick Tyres',
        weight = 1000,
        key = 'semi_slick_tyres',
        client = {
            image = 'semi_slick_tyres.png',
        },
    },

    ['offroad_tyres'] = {
        label = 'Offroad Tyres',
        weight = 1000,
        key = 'offroad_tyres',
        client = {
            image = 'offroad_tyres.png',
        },
    },

    ['drift_tuning_kit'] = {
        label = 'Drift Tuning Kit',
        weight = 1000,
        key = 'drift_tuning_kit',
        client = {
            image = 'drift_tuning_kit.png',
        },
    },

    ['ceramic_brakes'] = {
        label = 'Ceramic Brakes',
        weight = 1000,
        key = 'ceramic_brakes',
        client = {
            image = 'ceramic_brakes.png',
        },
    },

    ['lighting_controller'] = {
        label = 'Lighting Controller',
        weight = 100,
        key = 'lighting_controller',
        client = {
            image = 'lighting_controller.png',
            event = 'jg-mechanic:client:show-lighting-controller',
        },
    },

    ['stancing_kit'] = {
        label = 'Stancer Kit',
        weight = 100,
        key = 'stancing_kit',
        client = {
            image = 'stancing_kit.png',
            event = 'jg-mechanic:client:show-stancer-kit',
        },
    },

    ['cosmetic_part'] = {
        label = 'Cosmetic Parts',
        weight = 100,
        key = 'cosmetic_part',
        client = {
            image = 'cosmetic_part.png',
        },
    },

    ['respray_kit'] = {
        label = 'Respray Kit',
        weight = 1000,
        key = 'respray_kit',
        client = {
            image = 'respray_kit.png',
        },
    },

    ['vehicle_wheels'] = {
        label = 'Vehicle Wheels Set',
        weight = 1000,
        key = 'vehicle_wheels',
        client = {
            image = 'vehicle_wheels.png',
        },
    },

    ['tyre_smoke_kit'] = {
        label = 'Tyre Smoke Kit',
        weight = 1000,
        key = 'tyre_smoke_kit',
        client = {
            image = 'tyre_smoke_kit.png',
        },
    },

    ['bulletproof_tyres'] = {
        label = 'Bulletproof Tyres',
        weight = 1000,
        key = 'bulletproof_tyres',
        client = {
            image = 'bulletproof_tyres.png',
        },
    },

    ['extras_kit'] = {
        label = 'Extras Kit',
        weight = 1000,
        key = 'extras_kit',
        client = {
            image = 'extras_kit.png',
        },
    },

    ['nitrous_bottle'] = {
        label = 'Nitrous Bottle',
        weight = 1000,
        key = 'nitrous_bottle',
        client = {
            image = 'nitrous_bottle.png',
            event = 'jg-mechanic:client:use-nitrous-bottle',
        },
    },

    ['empty_nitrous_bottle'] = {
        label = 'Empty Nitrous Bottle',
        weight = 1000,
        key = 'empty_nitrous_bottle',
        client = {
            image = 'empty_nitrous_bottle.png',
        },
    },

    ['nitrous_install_kit'] = {
        label = 'Nitrous Install Kit',
        weight = 1000,
        key = 'nitrous_install_kit',
        client = {
            image = 'nitrous_install_kit.png',
        },
    },

    ['cleaning_kit'] = {
        label = 'Cleaning Kit',
        weight = 1000,
        key = 'cleaning_kit',
        client = {
            image = 'cleaning_kit.png',
            event = 'jg-mechanic:client:clean-vehicle',
        },
    },

    ['repair_kit'] = {
        label = 'Repair Kit',
        weight = 1000,
        key = 'repair_kit',
        client = {
            image = 'repair_kit.png',
            event = 'jg-mechanic:client:repair-vehicle',
        },
    },

    ['duct_tape'] = {
        label = 'Duct Tape',
        weight = 1000,
        key = 'duct_tape',
        client = {
            image = 'duct_tape.png',
            event = 'jg-mechanic:client:use-duct-tape',
        },
    },

    ['performance_part'] = {
        label = 'Performance Parts',
        weight = 1000,
        key = 'performance_part',
        client = {
            image = 'performance_part.png',
        },
    },

    ['mechanic_tablet'] = {
        label = 'Mechanic Tablet',
        weight = 1000,
        key = 'mechanic_tablet',
        client = {
            image = 'mechanic_tablet.png',
            event = 'jg-mechanic:client:use-tablet',
        },
    },

    ['c4'] = {
        label = 'C4',
        weight = 10,
        stack = true,
        close = true,
        key = 'c4',
        client = {
            image = 'c4.png',
        },
    },

    ['gold'] = {
        label = 'Gold',
        weight = 100,
        stack = true,
        close = true,
        key = 'gold',
        client = {
            image = 'gold.png',
        },
    },

    ['trowel'] = {
        label = 'Trowel',
        description = 'Perfect for your garden or for Coca plant',
        weight = 250,
        stack = true,
        key = 'trowel',
        client = {
            image = 'trowel.png',
        },
    },

    ['coke_leaf'] = {
        label = 'Coca Leaf',
        description = 'Leaf from amazing plant',
        weight = 15,
        stack = true,
        key = 'coke_leaf',
        client = {
            image = 'coke_leaf.png',
        },
    },

    ['coke_access'] = {
        label = 'Access card',
        description = 'Access Card for Coke Lab',
        weight = 50,
        stack = true,
        key = 'coke_access',
        client = {
            image = 'coke_access.png',
        },
    },

    ['coke_box'] = {
        label = 'Box with Coke',
        description = 'Be careful not to spill it on the ground',
        weight = 2000,
        stack = true,
        key = 'coke_box',
        client = {
            image = 'coke_box.png',
        },
    },

    ['coke_raw'] = {
        label = 'Raw Coke',
        description = 'Coke with some dirty particles',
        weight = 50,
        stack = true,
        key = 'coke_raw',
        client = {
            image = 'coke_raw.png',
        },
    },

    ['coke_pure'] = {
        label = 'Pure Coke',
        description = 'Coke without any dirty particles',
        weight = 70,
        stack = true,
        close = true,
        key = 'coke_pure',
        client = {
            image = 'coke_pure.png',
        },
    },

    ['coke_figure'] = {
        label = 'Action Figure',
        description = 'Action Figure of the cartoon superhero Impotent Rage',
        weight = 150,
        stack = true,
        key = 'coke_figure',
        client = {
            image = 'coke_figure.png',
        },
    },

    ['coke_figureempty'] = {
        label = 'Action Figure',
        description = 'Action Figure of the cartoon superhero Impotent Rage',
        weight = 150,
        stack = true,
        key = 'coke_figureempty',
        client = {
            image = 'coke_figureempty.png',
        },
    },

    ['coke_figurebroken'] = {
        label = 'Pieces of Action Figure',
        description = 'You can throw this away or try to repair with glue',
        weight = 100,
        stack = true,
        key = 'coke_figurebroken',
        client = {
            image = 'coke_figurebroken.png',
        },
    },

    ['meth_amoniak'] = {
        label = 'Ammonia',
        description = 'Warning! Dangerous Chemicals!',
        weight = 1000,
        stack = true,
        key = 'meth_amoniak',
        client = {
            image = 'meth_amoniak.png',
        },
    },

    ['meth_pipe'] = {
        label = 'Meth Pipe',
        description = 'Enjoy your new crystal clear stuff!',
        weight = 880,
        stack = true,
        key = 'meth_pipe',
        client = {
            image = 'meth_pipe.png',
        },
    },

    ['crack_pipe'] = {
        label = 'Crack Pipe',
        description = 'Enjoy your Crack!',
        weight = 550,
        stack = true,
        key = 'crack_pipe',
        client = {
            image = 'crack_pipe.png',
        },
    },

    ['meth_syringe'] = {
        label = 'Syringe Meth',
        description = 'Enjoy your new crystal clear stuff!',
        weight = 300,
        stack = true,
        key = 'meth_syringe',
        client = {
            image = 'meth_syringe.png',
        },
    },

    ['heroin_syringe'] = {
        label = 'Syringe Heroin',
        description = 'Enjoy your new crystal clear stuff!',
        weight = 300,
        stack = true,
        key = 'heroin_syringe',
        client = {
            image = 'heroin_syringe.png',
        },
    },

    ['syringe'] = {
        label = 'Syringe',
        description = 'Enjoy your new crystal clear stuff!',
        weight = 300,
        stack = true,
        key = 'syringe',
        client = {
            image = 'syringe.png',
        },
    },

    ['meth_sacid'] = {
        label = 'Sodium Benzoate Canister',
        description = 'Warning! Dangerous Chemicals!',
        weight = 5000,
        stack = true,
        key = 'meth_sacid',
        client = {
            image = 'meth_sacid.png',
        },
    },

    ['meth_emptysacid'] = {
        label = 'Empty Canister',
        description = 'Material: Plastic, Good for Sodium Benzoate',
        weight = 2000,
        stack = true,
        key = 'meth_emptysacid',
        client = {
            image = 'meth_emptysacid.png',
        },
    },

    ['meth_access'] = {
        label = 'Access card',
        description = 'Access Card for Meth Lab',
        weight = 100,
        stack = true,
        close = true,
        key = 'meth_access',
        client = {
            image = 'meth_access.png',
        },
    },

    ['meth_glass'] = {
        label = 'Tray with meth',
        description = 'Needs to be smashed with hammer',
        weight = 1000,
        stack = true,
        key = 'meth_glass',
        client = {
            image = 'meth_glass.png',
        },
    },

    ['meth_sharp'] = {
        label = 'Tray with smashed meth',
        description = 'Can be packed',
        weight = 1000,
        stack = true,
        key = 'meth_sharp',
        client = {
            image = 'meth_sharp.png',
        },
    },

    ['meth_bag'] = {
        label = 'Meth bag',
        description = 'Plastic bag with magic stuff!',
        weight = 1000,
        stack = true,
        key = 'meth_bag',
        client = {
            image = 'meth_bag.png',
        },
    },

    ['ecstasy1'] = {
        label = 'Ecstasy',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'ecstasy1',
        client = {
            image = 'ecstasy1.png',
        },
    },

    ['ecstasy2'] = {
        label = 'Ecstasy',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'ecstasy2',
        client = {
            image = 'ecstasy2.png',
        },
    },

    ['ecstasy3'] = {
        label = 'Ecstasy',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'ecstasy3',
        client = {
            image = 'ecstasy3.png',
        },
    },

    ['ecstasy4'] = {
        label = 'Ecstasy',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'ecstasy4',
        client = {
            image = 'ecstasy4.png',
        },
    },

    ['ecstasy5'] = {
        label = 'Ecstasy',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'ecstasy5',
        client = {
            image = 'ecstasy5.png',
        },
    },

    ['lsd1'] = {
        label = 'LSD',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'lsd1',
        client = {
            image = 'lsd1.png',
        },
    },

    ['lsd2'] = {
        label = 'LSD',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'lsd2',
        client = {
            image = 'lsd2.png',
        },
    },

    ['lsd3'] = {
        label = 'LSD',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'lsd3',
        client = {
            image = 'lsd3.png',
        },
    },

    ['lsd4'] = {
        label = 'LSD',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'lsd4',
        client = {
            image = 'lsd4.png',
        },
    },

    ['lsd5'] = {
        label = 'LSD',
        description = 'Explore a new universe!',
        weight = 10,
        stack = true,
        close = true,
        key = 'lsd5',
        client = {
            image = 'lsd5.png',
        },
    },

    ['magicmushroom'] = {
        label = 'Mushroom',
        description = 'Explore a new universe!',
        weight = 30,
        stack = true,
        close = true,
        key = 'magicmushroom',
        client = {
            image = 'magicmushroom.png',
        },
    },

    ['peyote'] = {
        label = 'Peyote',
        description = 'Explore a new universe!',
        weight = 30,
        stack = true,
        close = true,
        key = 'peyote',
        client = {
            image = 'peyote.png',
        },
    },

    ['xanaxpack'] = {
        label = 'Pack of Xanax',
        description = 'Needs to be open',
        weight = 130,
        stack = true,
        close = true,
        key = 'xanaxpack',
        client = {
            image = 'xanaxpack.png',
        },
    },

    ['xanaxplate'] = {
        label = 'Plate of Xanax',
        description = 'Needs to be open',
        weight = 30,
        stack = true,
        close = true,
        key = 'xanaxplate',
        client = {
            image = 'xanaxplate.png',
        },
    },

    ['xanaxpill'] = {
        label = 'Xanax pill',
        description = 'Explore a new universe!',
        weight = 2,
        stack = true,
        close = true,
        key = 'xanaxpill',
        client = {
            image = 'xanaxpill.png',
        },
    },

    ['glue'] = {
        label = 'Glue',
        description = 'Good for repairing things!',
        weight = 30,
        stack = true,
        key = 'glue',
        client = {
            image = 'glue.png',
        },
    },

    ['hammer'] = {
        label = 'Hammer',
        description = 'Good for smashing things!',
        weight = 500,
        stack = true,
        key = 'hammer',
        client = {
            image = 'hammer.png',
        },
    },

    ['poppyplant'] = {
        label = 'Poppy Plant',
        description = 'Very nice plant!',
        weight = 30,
        stack = true,
        key = 'poppyplant',
        client = {
            image = 'poppyplant.png',
        },
    },

    ['heroin'] = {
        label = 'Heroin',
        description = 'Explore a new universe!',
        weight = 30,
        stack = true,
        key = 'heroin',
        client = {
            image = 'heroin.png',
        },
    },

    ['crack'] = {
        label = 'Crack',
        description = 'Explore a new universe!',
        weight = 30,
        stack = true,
        key = 'crack',
        client = {
            image = 'crack.png',
        },
    },

    ['baking_soda'] = {
        label = 'Baking Soda',
        description = 'Baking Bad!',
        weight = 30,
        stack = true,
        key = 'baking_soda',
        client = {
            image = 'baking_soda.png',
        },
    },

    ['femaleseed'] = {
        label = 'Female Marijuana Seed',
        weight = 500,
        consume = 0,
        close = true,
        description = 'Surely I can just plant this, right?',
        key = 'femaleseed',
        client = {
            image = 'femaleseed.png',
        },
        server = {
            export = 'rep-weed.femaleseed',
        },
    },

    ['maleseed'] = {
        label = 'Male Marijuana Seed',
        weight = 500,
        description = 'Add this to a planted female seed to make it pregnant? You are pretty sure this seed has a penis.',
        key = 'maleseed',
        client = {
            image = 'maleseed.png',
        },
    },

    ['wateringcan'] = {
        label = 'Watering Can',
        weight = 2500,
        consume = 0,
        close = true,
        description = 'Fill this at a river or lake.',
        key = 'wateringcan',
        client = {
            image = 'wateringcan.png',
        },
        server = {
            export = 'rep-weed.wateringcan',
        },
    },

    ['fertilizer'] = {
        label = 'Fertilizer',
        weight = 500,
        description = 'Cool',
        key = 'fertilizer',
        client = {
            image = 'fertilizer.png',
        },
    },

    ['wetbud'] = {
        label = 'Wet Bud (100 grams)',
        weight = 7500,
        description = 'THIS CANT BE DRIED WITHOUT STRAIN... Needs to be stored somewhere dry.',
        key = 'wetbud',
        client = {
            image = 'wetbud.png',
        },
    },

    ['driedbud'] = {
        label = 'Dried Bud (100 Grams)',
        weight = 2500,
        consume = 0,
        close = true,
        description = 'Pack It?',
        key = 'driedbud',
        client = {
            image = 'driedbud.png',
        },
        server = {
            export = 'rep-weed.driedbud',
        },
    },

    ['weedpackage'] = {
        label = 'Suspicious Package',
        weight = 5000,
        consume = 0,
        close = true,
        description = 'Marked for Police Seizure',
        key = 'weedpackage',
        client = {
            image = 'weedpackage.png',
        },
        server = {
            export = 'rep-weed.weedpackage',
        },
    },

    ['qualityscales'] = {
        label = 'Quality Scales',
        weight = 500,
        consume = 0,
        description = 'Weighs Baggies with no loss',
        key = 'qualityscales',
        client = {
            image = 'qualityscales.png',
        },
    },

    ['smallscales'] = {
        label = 'Small Scales',
        weight = 250,
        description = 'Weighs Baggies with minimal loss',
        key = 'smallscales',
        client = {
            image = 'smallscales.png',
        },
    },

    ['joint'] = {
        label = '2g Joint',
        weight = 200,
        consume = 0,
        close = true,
        description = 'Its a Joint, man.',
        key = 'joint',
        client = {
            image = 'joint.png',
        },
        server = {
            export = 'rep-weed.joint',
        },
    },

    ['emptybaggies'] = {
        label = 'Empty Baggies',
        weight = 100,
        description = 'Empty Baggies',
        key = 'emptybaggies',
        client = {
            image = 'emptybaggies.png',
        },
    },

    ['weedbaggie'] = {
        label = 'Baggie (7g)',
        weight = 300,
        consume = 0,
        close = true,
        description = 'Sold on the streets',
        key = 'weedbaggie',
        client = {
            image = 'weedbaggie.png',
        },
        server = {
            export = 'rep-weed.weedbaggie',
        },
    },

    ['rollingpaper'] = {
        label = 'Rolling Paper',
        weight = 100,
        description = 'Required to roll joints!',
        key = 'rollingpaper',
        client = {
            image = 'rollingpaper.png',
        },
    },

    ['vehiclekeys'] = {
        label = 'Keys',
        weight = 1,
        stack = false,
        close = false,
        consume = 0,
        key = 'vehiclekeys',
        client = {
            image = 'vehiclekeys.png',
            export = 'qs-vehiclekeys.useKey',
        },
    },

    ['plate'] = {
        label = 'Plate',
        weight = 100,
        stack = true,
        close = false,
        consume = 0,
        key = 'plate',
        client = {
            image = 'plate.png',
            export = 'qs-vehiclekeys.usePlate',
        },
    },

    ['carlockpick'] = {
        label = 'Car Lockpick',
        weight = 100,
        stack = true,
        close = false,
        description = 'Plate for vehicle',
        key = 'carlockpick',
        client = {
            image = 'carlockpick.png',
            export = 'qs-vehiclekeys.useCarlockpick',
        },
    },

    ['caradvancedlockpick'] = {
        label = 'Advanced Lockpick',
        weight = 100,
        stack = true,
        close = false,
        description = 'Plate for vehicle',
        key = 'caradvancedlockpick',
        client = {
            image = 'caradvancedlockpick.png',
            export = 'qs-vehiclekeys.useAdvancedCarlockpick',
        },
    },

    ['weed_ak47_seed'] = {
        label = 'AK47 Seed',
        weight = 0,
        stack = true,
        close = true,
        description = 'A weed seed of AK47',
        key = 'weed_ak47_seed',
        client = {
            image = 'weed_ak47_seed.png',
        },
    },

    ['weed_skunk'] = {
        label = 'Skunk 2g',
        weight = 200,
        stack = true,
        close = false,
        description = 'A weed bag with 2g Skunk',
        key = 'weed_skunk',
        client = {
            image = 'weed_skunk.png',
        },
    },

    ['xtcbaggy'] = {
        label = 'Bag of XTC',
        weight = 0,
        stack = true,
        close = true,
        description = 'Pop those pills baby',
        key = 'xtcbaggy',
        client = {
            image = 'xtcbaggy.png',
        },
    },

    ['weed_white-widow'] = {
        label = 'White Widow 2g',
        weight = 200,
        stack = true,
        close = false,
        description = 'A weed bag with 2g White Widow',
        key = 'weed_white-widow',
        client = {
            image = 'weed_white-widow.png',
        },
    },

    ['visa'] = {
        label = 'Visa Card',
        weight = 0,
        stack = false,
        close = false,
        description = 'Visa can be used via ATM',
        key = 'visa',
        client = {
            image = 'visa.png',
        },
    },

    ['mastercard'] = {
        label = 'Master Card',
        weight = 0,
        stack = false,
        close = false,
        description = 'MasterCard can be used via ATM',
        key = 'mastercard',
        client = {
            image = 'mastercard.png',
        },
    },

    ['weed_og-kush'] = {
        label = 'OGKush 2g',
        weight = 200,
        stack = true,
        close = false,
        description = 'A weed bag with 2g OG Kush',
        key = 'weed_og-kush',
        client = {
            image = 'weed_og-kush.png',
        },
    },

    ['weed_nutrition'] = {
        label = 'Plant Fertilizer',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Plant nutrition',
        key = 'weed_nutrition',
        client = {
            image = 'weed_nutrition.png',
        },
    },

    ['empty_weed_bag'] = {
        label = 'Empty Weed Bag',
        weight = 0,
        stack = true,
        close = true,
        description = 'A small empty bag',
        key = 'empty_weed_bag',
        client = {
            image = 'empty_weed_bag.png',
        },
    },

    ['rolling_paper'] = {
        label = 'Rolling Paper',
        weight = 0,
        stack = true,
        close = true,
        description = 'Paper made specifically for encasing and smoking tobacco or cannabis.',
        key = 'rolling_paper',
        client = {
            image = 'rolling_paper.png',
        },
    },

    ['oxy'] = {
        label = 'Prescription Oxy',
        weight = 0,
        stack = true,
        close = true,
        description = 'The Label Has Been Ripped Off',
        key = 'oxy',
        client = {
            image = 'oxy.png',
        },
    },

    ['weed_purple-haze'] = {
        label = 'Purple Haze 2g',
        weight = 200,
        stack = true,
        close = false,
        description = 'A weed bag with 2g Purple Haze',
        key = 'weed_purple-haze',
        client = {
            image = 'weed_purple-haze.png',
        },
    },

    ['meth'] = {
        label = 'Meth',
        weight = 100,
        stack = true,
        close = true,
        description = 'A baggie of Meth',
        key = 'meth',
        client = {
            image = 'meth.png',
        },
    },

    ['crack_baggy'] = {
        label = 'Bag of Crack',
        weight = 0,
        stack = true,
        close = true,
        description = 'To get happy faster',
        key = 'crack_baggy',
        client = {
            image = 'crack_baggy.png',
        },
    },

    ['weed_skunk_seed'] = {
        label = 'Skunk Seed',
        weight = 0,
        stack = true,
        close = true,
        description = 'A weed seed of Skunk',
        key = 'weed_skunk_seed',
        client = {
            image = 'weed_skunk_seed.png',
        },
    },

    ['weed_white-widow_seed'] = {
        label = 'White Widow Seed',
        weight = 0,
        stack = true,
        close = false,
        description = 'A weed seed of White Widow',
        key = 'weed_white-widow_seed',
        client = {
            image = 'weed_white-widow_seed.png',
        },
    },

    ['weed_amnesia'] = {
        label = 'Amnesia 2g',
        weight = 200,
        stack = true,
        close = false,
        description = 'A weed bag with 2g Amnesia',
        key = 'weed_amnesia',
        client = {
            image = 'weed_amnesia.png',
        },
    },

    ['samsungphone'] = {
        label = 'Samsung S10',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Very expensive phone',
        key = 'samsungphone',
        client = {
            image = 'samsungphone.png',
        },
    },

    ['weed_purple-haze_seed'] = {
        label = 'Purple Haze Seed',
        weight = 0,
        stack = true,
        close = true,
        description = 'A weed seed of Purple Haze',
        key = 'weed_purple-haze_seed',
        client = {
            image = 'weed_purple-haze_seed.png',
        },
    },

    ['iphone'] = {
        label = 'iPhone',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Very expensive phone',
        key = 'iphone',
        client = {
            image = 'iphone.png',
        },
    },

    ['weed_amnesia_seed'] = {
        label = 'Amnesia Seed',
        weight = 0,
        stack = true,
        close = true,
        description = 'A weed seed of Amnesia',
        key = 'weed_amnesia_seed',
        client = {
            image = 'weed_amnesia_seed.png',
        },
    },

    ['weed_brick'] = {
        label = 'Weed Brick',
        weight = 1000,
        stack = true,
        close = true,
        description = '1KG Weed Brick to sell to large customers.',
        key = 'weed_brick',
        client = {
            image = 'weed_brick.png',
        },
    },

    ['coke_small_brick'] = {
        label = 'Coke Package',
        weight = 350,
        stack = false,
        close = true,
        description = 'Small package of cocaine, mostly used for deals and takes a lot of space',
        key = 'coke_small_brick',
        client = {
            image = 'coke_small_brick.png',
        },
    },

    ['cokebaggy'] = {
        label = 'Bag of Coke',
        weight = 0,
        stack = true,
        close = true,
        description = 'To get happy real quick',
        key = 'cokebaggy',
        client = {
            image = 'cokebaggy.png',
        },
    },

    ['weed_ak47'] = {
        label = 'AK47 2g',
        weight = 200,
        stack = true,
        close = false,
        description = 'A weed bag with 2g AK47',
        key = 'weed_ak47',
        client = {
            image = 'weed_ak47.png',
        },
    },

    ['weed_og-kush_seed'] = {
        label = 'OGKush Seed',
        weight = 0,
        stack = true,
        close = true,
        description = 'A weed seed of OG Kush',
        key = 'weed_og-kush_seed',
        client = {
            image = 'weed_og-kush_seed.png',
        },
    },

    ['coke_brick'] = {
        label = 'Coke Brick',
        weight = 1000,
        stack = false,
        close = true,
        description = 'Heavy package of cocaine, mostly used for deals and takes a lot of space',
        key = 'coke_brick',
        client = {
            image = 'coke_brick.png',
        },
    },

    ['mask'] = {
        label = 'Mask',
        weight = 100,
        stack = false,
        key = 'mask',
        client = {
            image = 'mask.png',
        },
    },

    ['hat'] = {
        label = 'Hat',
        weight = 100,
        stack = false,
        key = 'hat',
        client = {
            image = 'hat.png',
        },
    },

    ['earrings'] = {
        label = 'Earrings',
        weight = 100,
        stack = false,
        key = 'earrings',
        client = {
            image = 'earrings.png',
        },
    },

    ['glasses'] = {
        label = 'Glasses',
        weight = 100,
        stack = false,
        key = 'glasses',
        client = {
            image = 'glasses.png',
        },
    },

    ['chain'] = {
        label = 'Chain',
        weight = 100,
        stack = false,
        key = 'chain',
        client = {
            image = 'chain.png',
        },
    },

    ['undershirt'] = {
        label = 'Undershirt',
        weight = 100,
        stack = false,
        key = 'undershirt',
        client = {
            image = 'undershirt.png',
        },
    },

    ['jacket'] = {
        label = 'Jacket',
        weight = 100,
        stack = false,
        key = 'jacket',
        client = {
            image = 'jacket.png',
        },
    },

    ['bodyarmor'] = {
        label = 'Body Armor',
        weight = 100,
        stack = false,
        key = 'bodyarmor',
        client = {
            image = 'bodyarmor.png',
        },
    },

    ['bracelet'] = {
        label = 'Bracelet',
        weight = 100,
        stack = false,
        key = 'bracelet',
        client = {
            image = 'bracelet.png',
        },
    },

    ['watch'] = {
        label = 'Watch',
        weight = 100,
        stack = false,
        key = 'watch',
        client = {
            image = 'watch.png',
        },
    },

    ['bag'] = {
        label = 'Bag',
        weight = 100,
        stack = false,
        key = 'bag',
        client = {
            image = 'bag.png',
        },
    },

    ['pants'] = {
        label = 'Pants',
        weight = 100,
        stack = false,
        key = 'pants',
        client = {
            image = 'pants.png',
        },
    },

    ['shoes'] = {
        label = 'Shoes',
        weight = 100,
        stack = false,
        key = 'shoes',
        client = {
            image = 'shoes.png',
        },
    },

    ['gloves'] = {
        label = 'Gloves',
        weight = 100,
        stack = false,
        key = 'gloves',
        client = {
            image = 'gloves.png',
        },
    },

    ['taser_cartridge'] = {
        label = 'Taser cartridge',
        weight = 220,
        allowArmed = true,
        key = 'taser_cartridge',
        client = {
            image = 'taser_cartridge.png',
        },
        server = {
            export = 'smarttaser.OxUseTaserCart',
        },
    },

    ['eod'] = {
        label = 'EOD',
        weight = 220,
        key = 'eod',
        client = {
            image = 'eod.png',
        },
        server = {
            export = 'eod.oxUseEOD',
        },
    },

    ['saleboard'] = {
        label = 'Car Sale Sign',
        weight = 220,
        key = 'saleboard',
        client = {
            image = 'saleboard.png',
        },
        server = {
            export = 'carsalesign.useSign',
        },
    },

    ['fan'] = {
        label = 'Fan',
        weight = 220,
        key = 'fan',
        client = {
            image = 'fan.png',
        },
        server = {
            export = 'firetools.OxUseFan',
        },
    },

    ['spreaders'] = {
        label = 'Spreaders',
        weight = 220,
        key = 'spreaders',
        client = {
            image = 'spreaders.png',
        },
        server = {
            export = 'firetools.OxUseSpreaders',
        },
    },

    ['stabilisers'] = {
        label = 'Stabilisers',
        weight = 220,
        key = 'stabilisers',
        client = {
            image = 'stabilisers.png',
        },
        server = {
            export = 'firetools.OxUseStabiliser',
        },
    },

    ['mobilespike'] = {
        label = 'Mobile Spike',
        weight = 220,
        key = 'mobilespike',
        client = {
            image = 'mobilespike.png',
        },
        server = {
            export = 'mobilespike.OxUseMobileSpike',
        },
    },

    ['grappler'] = {
        label = 'Grappler',
        weight = 220,
        key = 'grappler',
        client = {
            image = 'grappler.png',
        },
        server = {
            export = 'grappler.OxUseGrappler',
        },
    },

    ['firearms'] = {
        label = 'Firearms Shield',
        weight = 220,
        key = 'firearms',
        client = {
            image = 'firearms.png',
        },
        server = {
            export = 'policeshields.usePoliceShield',
        },
    },

    ['ctsfo'] = {
        label = 'CTSFO Shield',
        weight = 220,
        key = 'ctsfo',
        client = {
            image = 'ctsfo.png',
        },
        server = {
            export = 'policeshields.usePoliceShield',
        },
    },

    ['small'] = {
        label = 'Small Shield',
        weight = 220,
        key = 'small',
        client = {
            image = 'small.png',
        },
        server = {
            export = 'policeshields.usePoliceShield',
        },
    },

    ['long'] = {
        label = 'Long Shield',
        weight = 220,
        key = 'long',
        client = {
            image = 'long.png',
        },
        server = {
            export = 'policeshields.usePoliceShield',
        },
    },

    ['ctsfo2'] = {
        label = 'CTSFO2 Shield',
        weight = 220,
        key = 'ctsfo2',
        client = {
            image = 'ctsfo2.png',
        },
        server = {
            export = 'policeshields.usePoliceShield',
        },
    },

    ['firearms2'] = {
        label = 'Firearms2 Shield',
        weight = 220,
        key = 'firearms2',
        client = {
            image = 'firearms2.png',
        },
        server = {
            export = 'policeshields.usePoliceShield',
        },
    },

    ['long2'] = {
        label = 'Long2 Shield',
        weight = 220,
        key = 'long2',
        client = {
            image = 'long2.png',
        },
        server = {
            export = 'policeshields.usePoliceShield',
        },
    },

    ['short2'] = {
        label = 'Short2 Shield',
        weight = 220,
        key = 'short2',
        client = {
            image = 'short2.png',
        },
        server = {
            export = 'policeshields.usePoliceShield',
        },
    },

    ['tripod'] = {
        label = 'Tripod',
        weight = 220,
        key = 'tripod',
        client = {
            image = 'tripod.png',
        },
        server = {
            export = 'roperescue.useRopeRescueItem',
        },
    },

    ['bodycam'] = {
        label = 'Bodycam',
        weight = 220,
        key = 'bodycam',
        client = {
            image = 'bodycam.png',
        },
    },

    ['dashcam'] = {
        label = 'Dashcam',
        weight = 220,
        key = 'dashcam',
        client = {
            image = 'dashcam.png',
        },
    },

    ['basket'] = {
        label = 'Basket',
        weight = 220,
        key = 'basket',
        client = {
            image = 'basket.png',
        },
        server = {
            export = 'roperescue.useRopeRescueItem',
        },
    },

    ['rescuecushion'] = {
        label = 'Rescue Cushion',
        weight = 220,
        key = 'rescuecushion',
        client = {
            image = 'rescuecushion.png',
        },
        server = {
            export = 'rescuecushion.useRescueCushion',
        },
    },

    ['locker_chain'] = {
        label = 'Chain Clamp',
        weight = 220,
        key = 'locker_chain',
        client = {
            image = 'locker_chain.png',
        },
        server = {
            export = 'smartclamp.useClamp',
        },
    },

    ['locker_wheel'] = {
        label = 'Wheel Clamp',
        weight = 220,
        key = 'locker_wheel',
        client = {
            image = 'locker_wheel.png',
        },
        server = {
            export = 'smartclamp.useClamp',
        },
    },

    ['clamp_lockpick'] = {
        label = 'Clamp Lockpick',
        weight = 220,
        key = 'clamp_lockpick',
        client = {
            image = 'clamp_lockpick.png',
        },
        server = {
            export = 'smartclamp.useClampLockpick',
        },
    },

    ['defib'] = {
        label = 'Defib',
        weight = 220,
        key = 'defib',
        client = {
            image = 'defib.png',
        },
        server = {
            export = 'smartdefib.oxUseDefib',
        },
    },

    ['drone1'] = {
        label = 'Drone',
        weight = 220,
        key = 'drone1',
        client = {
            image = 'drone1.png',
        },
        server = {
            export = 'smartdrone.OxUseSmartDrone',
        },
    },

    ['drone2'] = {
        label = 'Drone',
        weight = 220,
        key = 'drone2',
        client = {
            image = 'drone2.png',
        },
        server = {
            export = 'smartdrone.OxUseSmartDrone',
        },
    },

    ['matrix_board'] = {
        label = 'Matrix Board',
        weight = 220,
        key = 'matrix_board',
        client = {
            image = 'matrix_board.png',
        },
        server = {
            export = 'smartmatrix.OxUseMatrixBoard',
        },
    },

    ['tracker_cartridge'] = {
        label = 'Starchase Cartridge',
        weight = 220,
        key = 'tracker_cartridge',
        client = {
            image = 'tracker_cartridge.png',
        },
        server = {
            export = 'policetracker.OxUseTrackerDart',
        },
    },

    ['starchase'] = {
        label = 'Starchase',
        weight = 220,
        key = 'starchase',
        client = {
            image = 'starchase.png',
        },
        server = {
            export = 'policetracker.OxUseTracker',
        },
    },

    ['chock'] = {
        label = 'Chock',
        weight = 220,
        key = 'chock',
        client = {
            image = 'chock.png',
        },
        server = {
            export = 'vehiclerescue.useVehicleRescueItem',
        },
    },

    ['jack'] = {
        label = 'Jack',
        weight = 220,
        key = 'jack',
        client = {
            image = 'jack.png',
        },
        server = {
            export = 'vehiclerescue.useVehicleRescueItem',
        },
    },

    ['watermonitor'] = {
        label = 'Water monitor',
        weight = 220,
        key = 'watermonitor',
        client = {
            image = 'watermonitor.png',
        },
        server = {
            export = 'watermonitor.useWaterMonitor',
        },
    },


    ['break_cutting_tool'] = {
        label = 'Break Cutters',
        description = "Cut them breaks yo",
        consume = 0,
        weight = 100,
        client = {
            export = 'v-VehicleSabotage.break_cutting_tool'
        }
    },
    ["tankdrill"] = {
        label = "Large Bit Drill",
        weight = 300,
        stack = true,
        consume = 1,
        close = false,
        description = "The real deal...",
        client = {
            export = 'v-VehicleSabotage.drillTank'
        }
    },
    ["wheelremover"] = {
        label = "High Power Drill",
        weight = 300,
        stack = true,
        consume = 1,
        close = false,
        description = "The real deal...",
        client = {
            export = 'v-VehicleSabotage.wheelRemover'
        }
    },
    ["wheelspanner"] = {
        label = "Wheel Loosener",
        weight = 300,
        stack = true,
        consume = 1,
        close = false,
        description = "The real deal...",
        client = {
            export = 'v-VehicleSabotage.useSpanner'
        }
    },
    ["carbomb"] = {
        label = "Car Bomb",
        weight = 500,
        stack = true,
        consume = 1,
        close = false,
        description = "The real deal...",
        client = {
            export = 'v-VehicleSabotage.bombPlantKit'
        }
    },
    ["gascanister"] = {
        label = "Gas Canister",
        weight = 500,
        stack = true,
        consume = 1,
        close = false,
        description = "The real deal...",
        client = {
            export = 'v-VehicleSabotage.arsonKit'
        }
    },
    ['parkingticket'] = {
        label = 'Parking Ticket',
        weight = 1000,
        consume = 0,
        server = {
            export = 'v-parking.useTicket'
        }
    },
    ['clamp'] = {
        label = 'Tire Clamp',
        description = "Clamp that mf",
        weight = 2500,
    },
    ["welding_torch"] = {
        label = "Welding Torch",
        weight = 500,
        durability = 0,
        client = {
            image = "welding_torch.png",
        }
    },

    ["welding_gas"] = {
        label = "Weld gas",
        weight = 3000,
        durability = 0,
        description = "A gas bottle so you can weld with your welding torch",
        client = {
            image = "welding_gas.png",
        }
    },

    ["diamond_ring"] = {
        label = "Diamond Ring",
        weight = 1500,
        stack = true,
        close = true,
        description = "A diamond ring seems like the jackpot to me!",
        client = {
            image = "diamond_ring.png",
        }
    },

    ["goldchain"] = {
        label = "Golden Chain",
        weight = 1500,
        stack = true,
        close = true,
        description = "A golden chain seems like the jackpot to me!",
        client = {
            image = "goldchain.png",
        }
    },

    ["diamond"] = {
        label = "Diamond",
        weight = 1000,
        stack = true,
        close = true,
        description = "A diamond seems like the jackpot to me!",
        client = {
            image = "diamond.png",
        }
    },


    ['americano'] = {
        label = 'Americano',
        weight = 10,
        stack = true,
        close = true,
    },
    ['apple_pie'] = {
        label = 'Apple Pie',
        weight = 10,
        stack = true,
        close = true,
    },
    ['apple_pie_dough'] = {
        label = 'Apple Pie Dough',
        weight = 10,
        stack = true,
        close = true,
    },
    ['apples'] = {
        label = 'Apples',
        weight = 10,
        stack = true,
        close = true,
    },
    ['blackberry'] = {
        label = 'Blackberry',
        weight = 10,
        stack = true,
        close = true,
    },
    ['blackberry_muffin'] = {
        label = 'Blackberry Muffin',
        weight = 10,
        stack = true,
        close = true,
    },
    ['breadcrumbs'] = {
        label = 'Breadcrumbs',
        weight = 10,
        stack = true,
        close = true,
    },
    ['butter'] = {
        label = 'Butter',
        weight = 10,
        stack = true,
        close = true,
    },
    ['classic_donut'] = {
        label = 'Classic Donut',
        weight = 10,
        stack = true,
        close = true,
    },
    ['coffee_beans'] = {
        label = 'Coffee Beans',
        weight = 10,
        stack = true,
        close = true,
    },
    ['coffee_crema'] = {
        label = 'Coffee Crema',
        weight = 10,
        stack = true,
        close = true,
    },
    ['coffee_cup'] = {
        label = 'Coffee Cup',
        weight = 10,
        stack = true,
        close = true,
    },
    ['coffee_cup_dirty'] = {
        label = 'Coffee Cup Dirty',
        weight = 10,
        stack = true,
        close = true,
    },
    ['cookies'] = {
        label = 'Cookies',
        weight = 10,
        stack = true,
        close = true,
    },
    ['cumin'] = {
        label = 'Cumin',
        weight = 10,
        stack = true,
        close = true,
    },
    ['cup'] = {
        label = 'Cup',
        weight = 10,
        stack = true,
        close = true,
    },
    ['czech_bread'] = {
        label = 'Czech Bread',
        weight = 10,
        stack = true,
        close = true,
    },
    ['dough'] = {
        label = 'Dough',
        weight = 10,
        stack = true,
        close = true,
    },
    ['eggs'] = {
        label = 'Eggs',
        weight = 10,
        stack = true,
        close = true,
    },
    ['espresso'] = {
        label = 'Espresso',
        weight = 10,
        stack = true,
        close = true,
    },
    ['flour'] = {
        label = 'Flour',
        weight = 10,
        stack = true,
        close = true,
    },
    ['grated_chocolate'] = {
        label = 'Grated Chocolate',
        weight = 10,
        stack = true,
        close = true,
    },
    ['grater'] = {
        label = 'Grater',
        weight = 10,
        stack = true,
        close = true,
    },
    ['green_tea'] = {
        label = 'Green Tea',
        weight = 10,
        stack = true,
        close = true,
    },
    ['green_tea_box'] = {
        label = 'Green Tea Box',
        weight = 10,
        stack = true,
        close = true,
    },
    ['hersheys'] = {
        label = 'Hersheys',
        weight = 10,
        stack = true,
        close = true,
    },
    ['chocolate'] = {
        label = 'Chocolate',
        weight = 10,
        stack = true,
        close = true,
    },
    ['chocolate_coffee'] = {
        label = 'Chocolate Coffee',
        weight = 10,
        stack = true,
        close = true,
    },
    ['chocolate_croissant'] = {
        label = 'Chocolate Croissant',
        weight = 10,
        stack = true,
        close = true,
    },
    ['chocolate_donut'] = {
        label = 'Chocolate Donut',
        weight = 10,
        stack = true,
        close = true,
    },
    ['chocolate_muffin'] = {
        label = 'Chocolate Muffin',
        weight = 10,
        stack = true,
        close = true,
    },
    ['chocolate_topping'] = {
        label = 'Chocolate Topping',
        weight = 10,
        stack = true,
        close = true,
    },
    ['lemon'] = {
        label = 'Lemon',
        weight = 10,
        stack = true,
        close = true,
    },
    ['lemon_crushedice'] = {
        label = 'Lemon Crushedice',
        weight = 10,
        stack = true,
        close = true,
    },
    ['liquid_dough'] = {
        label = 'Liquid Dough',
        weight = 10,
        stack = true,
        close = true,
    },
    ['milk'] = {
        label = 'Milk',
        weight = 10,
        stack = true,
        close = true,
    },
    ['muffin'] = {
        label = 'Muffin',
        weight = 10,
        stack = true,
        close = true,
    },
    ['muffin_tin'] = {
        label = 'Muffin Tin',
        weight = 10,
        stack = true,
        close = true,
    },
    ['muffin_tin_filled'] = {
        label = 'Muffin Tin Filled',
        weight = 10,
        stack = true,
        close = true,
    },
    ['multivitamin_crushedice'] = {
        label = 'Multivitamin Crushedice',
        weight = 10,
        stack = true,
        close = true,
    },
    ['oil'] = {
        label = 'Oil',
        weight = 10,
        stack = true,
        close = true,
    },
    ['pink_donut'] = {
        label = 'Pink Donut',
        weight = 10,
        stack = true,
        close = true,
    },
    ['pink_topping'] = {
        label = 'Pink Topping',
        weight = 10,
        stack = true,
        close = true,
    },
    ['plum'] = {
        label = 'Plum',
        weight = 10,
        stack = true,
        close = true,
    },
    ['regular_muffin'] = {
        label = 'Regular Muffin',
        weight = 10,
        stack = true,
        close = true,
    },
    ['shortcake'] = {
        label = 'Shortcake',
        weight = 10,
        stack = true,
        close = true,
    },
    ['shortcake_dough'] = {
        label = 'Shortcake Dough',
        weight = 10,
        stack = true,
        close = true,
    },
    ['shortcake_plum'] = {
        label = 'Shortcake Plum',
        weight = 10,
        stack = true,
        close = true,
    },
    ['strawberry'] = {
        label = 'Strawberry',
        weight = 10,
        stack = true,
        close = true,
    },
    ['strawberry_shortcake'] = {
        label = 'Strawberry Shortcake',
        weight = 10,
        stack = true,
        close = true,
    },
    ['sugar'] = {
        label = 'Sugar',
        weight = 10,
        stack = true,
        close = true,
    },
    ['unbaked_croissant_chocolate'] = {
        label = 'Unbaked Croissant Chocolate',
        weight = 10,
        stack = true,
        close = true,
    },
    ['unbaked_donut'] = {
        label = 'Unbaked Donut',
        weight = 10,
        stack = true,
        close = true,
    },
    ['vanilla_sugar'] = {
        label = 'Vnilla Sugar',
        weight = 10,
        stack = true,
        close = true,
    },
    ['yeast_cube'] = {
        label = 'Yeast Cube',
        weight = 10,
        stack = true,
        close = true,
    },
    ['bacon'] = {
        label = 'Bacon',
        weight = 150,
        stack = true
    },
    ['bacon_in_package'] = {
        label = 'Bacon in package',
        weight = 150,
        stack = true
    },
    ['broom'] = {
        label = 'broom',
        weight = 150,
        stack = true
    },
    ['burger_bread'] = {
        label = 'burger bread',
        weight = 150,
        stack = true
    },
    ['burger_salad'] = {
        label = 'burger salad',
        weight = 150,
        stack = true
    },
    ['cooked_chicken_breasts'] = {
        label = 'cooked chicken breasts',
        weight = 150,
        stack = true
    },
    ['cooked_patty'] = {
        label = 'cooked patty',
        weight = 10,
        stack = true,
        close = true,
    },
    ['cucumber'] = {
        label = 'cucumber',
        weight = 10,
        stack = true,
        close = true,
    },
    ['destroyed_cup'] = {
        label = 'destroyed cup',
        weight = 10,
        stack = true,
        close = true,
    },
    ['dirty_cup'] = {
        label = 'dirty cup',
        weight = 10,
        stack = true,
        close = true,
    },
    ['drang_o_tang'] = {
        label = 'drang o tang',
        weight = 10,
        stack = true,
        close = true,
    },
    ['ecola'] = {
        label = 'ecola',
        weight = 10,
        stack = true,
        close = true,
    },
    ['ecola_light'] = {
        label = 'ecola light',
        weight = 10,
        stack = true,
        close = true,
    },
    ['egg'] = {
        label = 'egg',
        weight = 10,
        stack = true,
        close = true,
    },
    ['empty_cup'] = {
        label = 'empty cup',
        weight = 10,
        stack = true,
        close = true,
    },
    ['empty_cup_for_slushie'] = {
        label = 'empty cup for slushie',
        weight = 10,
        stack = true,
        close = true,
    },
    ['fingle_burger'] = {
        label = 'fingle burger',
        weight = 10,
        stack = true,
        close = true,
    },
    ['fried_egg'] = {
        label = 'fried egg',
        weight = 10,
        stack = true,
        close = true,
    },
    ['fried_fries'] = {
        label = 'fried fries',
        weight = 10,
        stack = true,
        close = true,
    },
    ['fries_burgershot'] = {
        label = 'fries burgershot',
        weight = 10,
        stack = true,
        close = true,
    },
    ['heart_stopper_burger'] = {
        label = 'heart stopper burger',
        weight = 10,
        stack = true,
        close = true,
    },
    ['cheese'] = {
        label = 'cheese',
        weight = 10,
        stack = true,
        close = true,
    },
    ['cheese_package'] = {
        label = 'cheese package',
        weight = 10,
        stack = true,
        close = true,
    },
    ['chopped_pickle'] = {
        label = 'chopped pickle',
        weight = 10,
        stack = true,
        close = true,
    },
    ['ice'] = {
        label = 'ice',
        weight = 10,
        stack = true,
        close = true,
    },
    ['ketchup'] = {
        label = 'ketchup',
        weight = 10,
        stack = true,
        close = true,
    },
    ['meat_free_burger'] = {
        label = 'meat free burger',
        weight = 10,
        stack = true,
        close = true,
    },
    ['money_shot_burger'] = {
        label = 'money shot burger',
        weight = 10,
        stack = true,
        close = true,
    },
    ['onion'] = {
        label = 'onion',
        weight = 10,
        stack = true,
        close = true,
    },
    ['onion_slice'] = {
        label = 'onion slice',
        weight = 10,
        stack = true,
        close = true,
    },
    ['potatos'] = {
        label = 'potatos',
        weight = 10,
        stack = true,
        close = true,
    },
    ['rag'] = {
        label = 'rag',
        weight = 10,
        stack = true,
        close = true,
    },
    ['rag_dirty'] = {
        label = 'rag dirty',
        weight = 10,
        stack = true,
        close = true,
    },
    ['raw_fries'] = {
        label = 'raw fries',
        weight = 10,
        stack = true,
        close = true,
    },
    ['raw_chicken_breasts'] = {
        label = 'raw chicken breasts',
        weight = 10,
        stack = true,
        close = true,
    },
    ['raw_patty'] = {
        label = 'raw patty',
        weight = 10,
        stack = true,
        close = true,
    },
    ['salad'] = {
        label = 'salad',
        weight = 10,
        stack = true,
        close = true,
    },
    ['salt'] = {
        label = 'salt',
        weight = 10,
        stack = true,
        close = true,
    },
    ['sandwich_bread'] = {
        label = 'sandwich bread',
        weight = 10,
        stack = true,
        close = true,
    },
    ['sandwiches'] = {
        label = 'sandwiches',
        weight = 10,
        stack = true,
        close = true,
    },
    ['sliced_burger_bread'] = {
        label = 'sliced burger bread',
        weight = 10,
        stack = true,
        close = true,
    },
    ['sliced_burger_tomatos'] = {
        label = 'sliced burger tomatos',
        weight = 10,
        stack = true,
        close = true,
    },
    ['sludgie_ice_blue'] = {
        label = 'sludgie ice blue',
        weight = 10,
        stack = true,
        close = true,
    },
    ['sludgie_ice_green'] = {
        label = 'sludgie ice green',
        weight = 10,
        stack = true,
        close = true,
    },
    ['sponge'] = {
        label = 'Sponge',
        weight = 10,
        stack = true,
        close = true,
    },
    ['sponge_dirty'] = {
        label = 'Sponge Dirty',
        weight = 10,
        stack = true,
        close = true,
    },
    ['tartar'] = {
        label = 'Tartar',
        weight = 10,
        stack = true,
        close = true,
    },
    ['the_bleeder_burger'] = {
        label = 'The Bleeder Burger',
        weight = 10,
        stack = true,
        close = true,
    },
    ['tomato'] = {
        label = 'Tomato',
        weight = 10,
        stack = true,
        close = true,
    },
    ['wet_money'] = {
        label = 'Wet money',
        weight = 0.01,
        stack = true,
        close = true,
        category = 'money',
    },
    ['unmarked_money'] = {
        label = 'Unmarked dirty money',
        weight = 0.01,
        stack = true,
        close = true,
        category = 'money',
    },
    ['dry_money'] = {
        label = 'Dry money',
        weight = 0.01,
        stack = true,
        close = true,
        category = 'money',
    },
    ['warehouse_locator'] = {
        label = 'Warehouse locator',
        weight = 1,
        stack = true,
        close = true,
    },
	['hack_laptop'] = {
        label = 'Hack Laptop',
        description = "",
        weight = 20,
        stack = true,
	},

	["carpart_wheel"] = {
		label = "Wheel",
		weight = 10000,
		stack = false,
		close = false,
		description = "Wheel from a car",
		client = {
			image = "carpart_wheel.png",
		}
	},
	["carpart_door"] = {
		label = "Door",
		weight = 10000,
		stack = false,
		close = false,
		description = "Door from a car",
		client = {
			image = "carpart_door.png",
		}
	},
	["carpart_hood"] = {
		label = "Hood",
		weight = 10000,
		stack = false,
		close = false,
		description = "Hood from a car",
		client = {
			image = "carpart_hood.png",
		}
	},
	["carpart_trunk"] = {
		label = "Trunk",
		weight = 10000,
		stack = false,
		close = false,
		description = "Trunk from a car",
		client = {
			image = "carpart_trunk.png",
		}
	},
    ['food_truck'] = {
		label = 'Install Kitchen',
		weight = 800,
		stack = false,
		close = true,
		consume = 1,
		client = {
			export = 'dd5m_foodtrucks.install'
		}
	},
    ['basic_recipes'] = {
		label = 'Basic Recipe Book',
		weight = 80,
	},
    ['ft_cola'] = {
		label = 'eCola(Food Truck)',
		weight = 350,
		client = {
			status = { thirst = 2000000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['ft_horchata'] = {
		label = 'Horchata(Food Truck)',
		weight = 350,
		client = {
			status = { thirst = 2000000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with Horchata'
		}
	},

	['ft_italiansoda'] = {
		label = 'Italian Soda(Food Truck)',
		weight = 350,
		client = {
			status = { thirst = 2000000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with Italian Soda'
		}
	},

	['ft_strawberryjuice'] = {
		label = 'Strawberry Juice(Food Truck)',
		weight = 350,
		client = {
			status = { thirst = 2000000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with Strawberry Juice'
		}
	},

	['ft_burrito'] = {
		label = 'Burrito(Food Truck)',
		weight = 220,
		client = {
			status = { hunger = 2000000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Burrito'
		},
	},

	['ft_quesadilla'] = {
		label = 'Quesadilla(Food Truck)',
		weight = 220,
		client = {
			status = { hunger = 2000000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Quesadilla'
		},
	},

	['ft_spaghetti'] = {
		label = 'Spaghetti(Food Truck)',
		weight = 220,
		client = {
			status = { hunger = 2000000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Spaghetti'
		},
	},

	['ft_pizza'] = {
		label = 'Pizza(Food Truck)',
		weight = 220,
		client = {
			status = { hunger = 2000000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Pizza'
		},
	},

	['ft_ramen'] = {
		label = 'Ramen(Food Truck)',
		weight = 220,
		client = {
			status = { hunger = 2000000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Ramen'
		},
	},

	['ft_potstickers'] = {
		label = 'Potstickers(Food Truck)',
		weight = 220,
		client = {
			status = { hunger = 2000000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Potstickers'
		},
	},

	['ft_burger'] = {
		label = 'Burger(Food Truck)',
		weight = 220,
		client = {
			status = { hunger = 2000000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Burger'
		},
	},

	['ft_cheesesticks'] = {
		label = 'Fried Cheesesticks(Food Truck)',
		weight = 220,
		client = {
			status = { hunger = 2000000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Fried Cheesesticks'
		},
	},
    ['meta_mask'] = {
		weight = 200,
		stack = false,
		consume = 0,
		client = {remove = function() exports.dd5m_metamasks:RemoveMaskItem() end},
		server = {export = 'dd5m_metamasks.meta_mask'},
		allowArmed = true,
	},
    ["chalkboard1"] = {
        label = "Chalkboard - Floor Stand",
        weight = 5000,
        stack = false,
        description = "A chalkboard on a stand.",
    },

    ["chalkboard2"] = {
        label = "Chalkboard - Wall Mount",
        weight = 5000,
        stack = false,
        description = "A chalkboard mounted to a wall.",
    },

    ["chalkboard3"] = {
        label = "Chalkboard - Square",
        weight = 5000,
        stack = false,
        description = "A square chalkboard.",
    },

    ["chalkboard4"] = {
        label = "Chalkboard - Vertical Frameless",
        weight = 5000,
        stack = false,
        description = "A frameless vertical chalkboard.",
    },
    ['racingtablet'] = {
        label = 'Racing tablet',
        weight = 500,
        description = 'Seems like something to do with cars.',
        stack = false,
        client = {
            export = 'rahe-racing.racingtablet',
        }
    },
    ['boostingtablet'] = {
        label = 'Boosting tablet',
        weight = 0,
        description = "Seems like something's installed on this.",
        client = {
        export = 'rahe-boosting.boostingtablet',
        }
    },
    ['hackingdevice'] = {
        label = 'Hacking device',
        weight = 0,
        description = 'Will allow you to bypass vehicle security systems.',
        client = {
        export = 'rahe-boosting.hackingdevice',
        }
    },
    ['gpshackingdevice'] = {
        label = 'GPS hacking device',
        weight = 0,
        description = 'If you wish to disable vehicle GPS systems.',
        client = {
        export = 'rahe-boosting.gpshackingdevice',
        }
    },
    ['vehicle_cover'] = {
        label = 'Vehicle Cover',
        weight = 0,
        description = 'A cover to hide your vehicle.',
        client = {
            image = 'vehicle_cover.png',
        },
        unique = false,
        usable = true,
        close = true,
        stack = false,
    },
    ["vehicle_reg"] = {
		label = "Vehicle Registration",
		weight = 0,
		stack = false,
		server = {
			export = 'browns_registration.UseRegistration'
		}
	},

	["vehicle_ins"] = {
		label = "Vehicle Insurance",
		weight = 0,
		stack = false,
		server = {
			export = 'browns_registration.UseInsurance'
		}
	},
	["cw_tracking_pair"] = {
		label = "GPS Tracker & receiver",
		description = "A GPS tracker and a receiver for it",
		weight = 1,
		stack = false,
		close = true

	},
	["cw_receiver"] = {
		label = "Tracker receiver",
		description = "A receiver for a GPS tracker",
		weight = 1,
		stack = false,
		close = true
	},
	["cw_tracker"] = {
		label = "A GPS Tracker",
		description = "A GPS tracker",
		weight = 1,
		stack = false,
		close = true
	},
    ['contract'] = {
        label = 'Contract',
        weight = 0,
        stack = false,
        description = 'A contract for a job.',
        client = {
            image = 'contract.png',
        },
        unique = true,
    },

    ['license_id'] = {
        label = 'ID Card',
        weight = 100,
        consume = 0,
        description = 'Your Personal Document',
        client = {
            export = 'LGF_DocumentSystem.manageDocument'
        }
    },
    ['license_car'] = {
        label = 'Drive Card',
        weight = 150,
        consume = 0,
        description = 'Your Driving License',
        client = {
            export = 'LGF_DocumentSystem.manageDocument'
        }
    },
    ['license_weapon'] = {
        label = 'Weapon License',
        weight = 200,
        consume = 0,
        description = 'License to Carry Weapons',
        client = {
            export = 'LGF_DocumentSystem.manageDocument'
        }
    },
    ['license_boat'] = {
        label = 'License Boat',
        weight = 120,
        consume = 0,
        description = 'License to Operate Boats',
        client = {
            export = 'LGF_DocumentSystem.manageDocument'
        }
    },
}
