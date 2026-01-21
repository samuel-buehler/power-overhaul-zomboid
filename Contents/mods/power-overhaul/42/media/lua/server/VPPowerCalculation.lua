-- VPPowerCalculation.lua

POWER_VALUES = {
  -- Unless otherwise stated, the following power ratings are instantaneous power.
  -- Electric dryer: ~4 kWh per load. ~5 kW while heating, ~500 W while tumbling
  -- Electric washer: 425 W
  -- Electric oven/stove: Between 1500 W and 3200 W while heating/baking
  --   This may cycle on/off once up to temp.
  -- Refrigerator: 650 W when running compressor; Average draw is ~200 W
  -- Chest Freezer: ~500 W when compressor running; Average draw is ~175 W
  -- Fridge-freezer: ~700 W when compressor running; Average draw is ~250 W
  -- Television: 150 W
  -- Radio: 5-30 W during operation. (Depends on things like volume.)
  -- HAM Radio (Stationary): 20 W while passively receiving; 250 W while transmitting
  -- Light (Incandescent): 70 W
}
