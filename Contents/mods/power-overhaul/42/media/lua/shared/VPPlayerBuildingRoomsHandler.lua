-- VPPlayerBuildingRoomsHandler.lua

--[[
    Facilitates the player managing their own IsoRoom and IsoBuilding objects.
    A portion of this should be akin to the vanilla BuildingRoomsEditor accessible only
      via gamepad as of 2026-01.
    Ideally, players should be capable of editing non-player-built IsoRoom and 
      IsoBuilding objects as well.
--]]

--- IsoRoom, IsoBuilding, and RoomRect functions.
-- Functions related to creating and removing IsoRooms, IsoBuildings, and RoomRects.

-- 100% going to be useful to reference zombie/buildingRooms/BuildingRoomEditor.java
-- Information about IsoRoom "rectangles" (RoomRect) can be found in
--   zombie/buildingRooms/BRERoom.java which pulls from zombie/iso/RoomDef.java

-- Create an IsoRoom object
local function createRoom()
end

-- Create an IsoBuilding object
local function createBuilding()
end

-- Remove an IsoRoom object
local function removeRoom()
end

-- Remove an IsoBuilding object
local function removeBuilding()
end

-- Add a rectangular space to an IsoRoom
-- @param room: IsoRoom object
local function addRectangle(room)
end

-- Remove a specific rectangular space from an IsoRoom
-- @param rect: RoomRect to remove from it's IsoRoom.
local function removeRectangle(rect)
end