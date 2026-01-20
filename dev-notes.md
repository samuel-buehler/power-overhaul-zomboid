# Electricity and Power Overhaul

## Main System: Power Grids

### Power Generators

- Heat Engines
  - Internal Combustion Engines
    - Compression-ignition Engine (i.e., Diesel)
    - Spark-ignition Engine (i.e., Petrol/Gasoline, Biogas/Biomethane)
  - External Combustion Engines
    - Steam Engine
- Electric Motors (and Generators)
  - Brushed Motors
  - Brushless Motors
- Physically Powered Motors (or other things powered by potential/kinetic energy)
  - Pneumatic Motors
  - Clockwork Motors
  - Hydraulic Motors
- Solar Power
- Wind Power
- Hydro Power
- Geothermal Power?

#### Attributes of Engines and Motors

Attributes of Engines. Ideally usable for a base `PowerGenerator` class.

- Speed
  - Crankshaft rotation in piston engines and speed of compressor/turbine/electric rotors. 
    Typically measured in revolutions per minute (rpm).
- Torque
  - A turning [moment](https://en.wikipedia.org/wiki/Moment_(physics)) on a shaft, which is 
    calculated by multiplying the force causing the moment by its distance from the shaft.
- Power
  - Measure of how fast work is done.
- Efficiency
  - A proportion of useful energy output compared to total input.
- Sound

### Energy Storage

Energy Storage devices can all inherit from a sort of `EnergyStorage` class that handles 
**Capacity**, **Charge Rate**, **Discharge Rate**, **Loss**. Subclasses for each type handle 
failure risk models, inertia contribution, maintenance, etc.

- Batteries / Battery Banks
- Flywheels
- Compressed Gases

#### Attributes of Energy Storage

- Capacity
- Charge Rate
- Discharge Rate
- Loss

### Energy Distribution

> Should belt power be considered as an alternative to electricity?

- Cables and Conduits
  - Conduits/Cables effectively hold *N* channels of wires. These "channels" are logical, not physical.
  - Various types, including visible on the ground or along walls, visible and raised on poles or 
    hanging between walls, or invisible within walls or underground.
- Intermediary Devices
  - Transfer Switch (select between one or another input)
  - Charge Controller (manages inputs into an energy storage)
  - Inverter (translates energy storage into Breaker Boxes)
  - Smart Inverter-Charger (translates energy storage into Breaker Boxes, while also able to manage multiple
    inputs)
- Breaker Boxes

  These could be based on wattage rather than amperage (could have an option to use amperage like 
  real-life instead).

  Each breaker (and therefore circuit) could have a priority set to it (maybe this requires a special type 
  of computerized breaker box?) so in the event of power outages certain low-priority circuits can be shut 
  off to ensure high-priority circuits and loads continue to be powered.

  - Breakers (Various ratings (maximum wattage/amperage?), which creates circuits.)
  - Circuits (Created automatically upon inserting a breaker into a breaker box. Can be connected to outlets 
    and switches via cables/conduits.)
- Outlets and Switches (Connected to circuits via cables/conduits.)
    - Multiple types (i.e., single switch, duplex switch, dimmer switch, motion switch, 
      presence detector, photoelectric switch, sound-activated switch; wall outlet, floor outlet, 
      standing outdoor outlet)

#### Attributes of Energy Distribution

- Load
- (Output) Stability
- Frequency
- Grid Inertia

These could be abstracted to discrete states (nominal, undervoltage, overvoltage, etc.)

### Loads

Traditional power/electrical consumers (ovens, lights, etc.).

Players can use the Context Menu(?) to connect a given load to a given switch/outlet. Players can 
also connect an infinite amount of loads to a given *nearby* outlet (for player simplicity).

> There could be a later option to require one socket per load, but that would likely be better saved 
  as a post-release option.

### Maintenance

Compound neglect creates risk and leads to issues. Dirty solar panels reduce output until cleaned, 
unclean biogas leads to lower power density, compressed gas overpressure leads to explosions, etc.

Meters may be available to monitor electrical and power grids.

## Future

Note that, in the long run, I'd like for this to expand beyond grids and to also include portable batteries 
(to supplement the existing portable generators), corded power tools, alternative ways of powering motor 
vehicles (biogas, electricity, steam, etc.), etc. Those things aren't necessarily my first concern, but feel 
free to keep that context in mind.
