require "lib.moonloader"
require"lib.sampfuncs"
local ev = require "moonloader".audiostream_state
local sound = loadAudioStream("moonloader/audio/bell1.ogg")
local event = require 'lib.samp.events'
local dl = require "lib.SA-MP API.init"
local encoding = require "encoding"
encoding.default = 'CP1251'
u8 = encoding.UTF8

function main()
    if not isSampfuncsLoaded() or not isSampLoaded() then return end
    while not isSampAvailable() do wait(10000) end
		sampAddChatMessage('{00CCFF}Script started....')
    while true do
    wait(0)
    end
end

function event.onServerMessage(color,msg)
	if msg.match(msg, '« Неоплаченное частное имущество выставлено на продажу »') then
			 sampProcessChatInput('/buyhouse')
			 sampAddChatMessage('{00CCFF}Команда выполнена')
			 addOneOffSound(0, 0, 0, 1138)
	 return false
end
end
