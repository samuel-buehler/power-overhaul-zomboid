-- VPBreakerUI.lua

-- User interface that displays a Breaker Box and allows players to manage it's breakers
-- and their circuits.

require "ISUI/ISButton"
require "ISUI/ISCollapsableWindow"

VPBreakerUI = ISCollapsableWindow:derive("VPBreakerUI")
VPBreakerUI.instances = VPBreakerUI.instances or {}

function ShowBreakerUI(playerObj, breakerBox)
  local playerNum = playerObj:getPlayerNum()
  local window = VPBreakerUI:new(100, 100, breakerBox, playerNum)
  window:initialise()
  window:addToUIManager()

  if JoypadState.players[playerNum + 1] then
    setJoypadFocus(playerNum, window)
  end
end

--- Events
