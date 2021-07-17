Config = {
    DefaultZ            = 100,
    DefaultSprite       = 1,                -- Determines the Sprite, see Blip ID's 
    DefaultColor        = 0,                -- Determines the Color, see Blip Color ID's
    DefaultScale        = 0.8,              -- Determines the size of the sprite. 1.0 is full size.
    DefaultType         = 1,                -- Changes category, 1 shows no distance, 2 shows distance, 7 is other players, 10 is property, 11 is owned property.
    DefaultOpacity      = 255,              -- Changes opacity, 0 is transparent, 255 is fully visible
    DefaultDisplay      = 2,                -- Changes how blip is displayed upon client script start, 0 doesn't show up at all, 2 is selectable both maps, 3 is selectable on main map only, 5 is on minimap only, 8 is unselectable on both maps. 
    DefaultHidden       = false,            -- If set to true, hides the blip from the legend on the main map.
    DefaultLayer        = 10,                -- Default layer the blip is set on, lower numbers appear underneath higher ones.


    --[[Default Layers
    30 = Emergency Services, Important Buildings
    25 = Banks, Jewelry Store, Restaurants/Bars/Nightclubs, Unique Stores, 
    20 = Clothing Stores, Hair Salons, Tattoo Parlors, Jobs/Hobbies
    15 = Pharmacies, Digital Dens, Ammunations, Hardware Stores
    10 = LTD, Liquor Store, Car Wash
    5 = Garages, Public Trash, Apartments for Sale
    1 = Property for Sale, Gas Stations, Car Washes 
    --]]

    Blips          = {
                            --Format for adding new blips--
        --[1]  = {
        --    ["name"]    = "Insert Location Name Here, for future reference",
        --    ["x"] = 0, ["y"] = 0, ["z"] = 0,
        --    ["category"]= "Insert name for what kind of blip this is, used for disabling blip categories",
        --    ["text"]    = "Insert Blip Text Here",
        --    ["sprite"]  = 1,
        --    ["color"]   = 1,
        --    ["scale"]   = 1.0,
        --    ["type"]    = 1,
        --    ["display"] = 2,
        --    ["opacity"] = 255,
        --    ["hidden"]  = false,
        --},
        
        --BANKS--
        [1]  = {
            ["name"]    = "Pacific Standard Bank",
            ["x"] = 249.51, ["y"] = 219.82,
            ["category"]= "Bank",
            ["text"]    = "Bank",
            ["sprite"]  = 500,
            ["color"]   = 69,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },
        [2]  = {
            ["name"]    = "Hawick Fleeca Bank",
            ["x"] = 313.66, ["y"] = -280.59,
            ["category"]= "Bank",
            ["text"]    = "Bank",
            ["sprite"]  = 500,
            ["color"]   = 69,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },
        [3]  = {
            ["name"]    = "Legion Bank and Trust",
            ["x"] = 149.28, ["y"] = -1042.15,
            ["category"]= "Bank",
            ["text"]    = "Bank",
            ["sprite"]  = 500,
            ["color"]   = 69,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },
        [4]  = {
            ["name"]    = "Great Ocean Fleeca Bank",
            ["x"] = -2961.10, ["y"] = 482.91,
            ["category"]= "Bank",
            ["text"]    = "Bank",
            ["sprite"]  = 500,
            ["color"]   = 69,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },
        [5]  = {
            ["name"]    = "Route 68 Fleeca Bank",
            ["x"] = 1175.13, ["y"] = 2708.29,
            ["category"]= "Bank",
            ["text"]    = "Bank",
            ["sprite"]  = 500,
            ["color"]   = 69,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },
        [6]  = {
            ["name"]    = "Blaine County Savings",
            ["x"] = -110.19, ["y"] = 6469.09,
            ["category"]= "Bank",
            ["text"]    = "Bank",
            ["sprite"]  = 500,
            ["color"]   = 69,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },
        [7]  = {
            ["name"]    = "Rockford Hills Fleeca Bank",
            ["x"] = -1211.90, ["y"] = -332.01,
            ["category"]= "Bank",
            ["text"]    = "Bank",
            ["sprite"]  = 500,
            ["color"]   = 69,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },
        [8]  = {
            ["name"]    = "Vinewood Fleeca Bank",
            ["x"] = -351.46, ["y"] = -51.24,
            ["category"]= "Bank",
            ["text"]    = "Bank",
            ["sprite"]  = 500,
            ["color"]   = 69,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },

        --AMMUNATIONS--
        [9]  = {
            ["name"]    = "Rockford Hills Ammunation",
            ["x"] = -1307.79, ["y"] = -393.0,
            ["category"]= "Ammu-Nation",
            ["text"]    = "Ammu-Nation",
            ["sprite"]  = 110,
            ["color"]   = 22,
            ["layer"]   = 15,
        },
        [10]  = {
            ["name"]    = "Vinewood Ammunation",
            ["x"] = 250.27, ["y"] = -48.55,
            ["category"]= "Ammu-Nation",
            ["text"]    = "Ammu-Nation",
            ["sprite"]  = 110,
            ["color"]   = 22,
            ["layer"]   = 15,
        },
        [11]  = {
            ["name"]    = "Little Seoul Ammunation",
            ["x"] = -662.92, ["y"] = -937.63,
            ["category"]= "Ammu-Nation",
            ["text"]    = "Ammu-Nation",
            ["sprite"]  = 110,
            ["color"]   = 22,
            ["layer"]   = 15,
        },
        [12]  = {
            ["name"]    = "Strawberry Ammunation",
            ["x"] = 20.66, ["y"] = -1109.07,
            ["category"]= "Ammu-Nation",
            ["text"]    = "Ammu-Nation",
            ["sprite"]  = 110,
            ["color"]   = 22,
            ["scale"]   = 1.0,
            ["layer"]   = 15,
        },
        [13]  = {
            ["name"]    = "Cypress Flats Ammunation",
            ["x"] = 810.87, ["y"] = -2155.01,
            ["category"]= "Ammu-Nation",
            ["text"]    = "Ammu-Nation",
            ["sprite"]  = 110,
            ["color"]   = 22,
            ["scale"]   = 1.0,
            ["layer"]   = 15,
        },
        [14]  = {
            ["name"]    = "Chumash Ammunation",
            ["x"] = -3170.08, ["y"] = 1086.30,
            ["category"]= "Ammu-Nation",
            ["text"]    = "Ammu-Nation",
            ["sprite"]  = 110,
            ["color"]   = 22,
            ["layer"]   = 15,
        },
        [15]  = {
            ["name"]    = "Route 68 Ammunation",
            ["x"] = -1116.73, ["y"] = 2696.38,
            ["category"]= "Ammu-Nation",
            ["text"]    = "Ammu-Nation",
            ["sprite"]  = 110,
            ["color"]   = 22,
            ["layer"]   = 15,
        },
        [16]  = {
            ["name"]    = "Sandy Shores Ammunation",
            ["x"] = 1694.76, ["y"] = 3757.77,
            ["category"]= "Ammu-Nation",
            ["text"]    = "Ammu-Nation",
            ["sprite"]  = 110,
            ["color"]   = 22,
            ["layer"]   = 15,
        },
        [17]  = {
            ["name"]    = "Paleto Bay Ammunation",
            ["x"] = -329.28, ["y"] = 6081.65,
            ["category"]= "Ammu-Nation",
            ["text"]    = "Ammu-Nation",
            ["sprite"]  = 110,
            ["color"]   = 22,
            ["layer"]   = 15,
        },
        
        --Restaurants--
        [18]  = {
            ["name"]    = "Hookies",
            ["x"] = -2185.72, ["y"] = 4285.61,
            ["category"]= "Restaurant",
            ["text"]    = "Restaurant",
            ["sprite"]  = 628,
            ["color"]   = 73,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },
        [19]  = {
            ["name"]    = "Pop's Diner",
            ["x"] = -2185.72, ["y"] = 4285.61,
            ["category"]= "Restaurant",
            ["text"]    = "Restaurant",
            ["sprite"]  = 628,
            ["color"]   = 73,
            ["scale"]   = 1.0,
            ["layer"]   = 25,
        },


    }
}
