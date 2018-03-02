local x;

OwenWilsonCrit = {};

function OwenWilsonCrit.OnLoad()
	this:RegisterEvent("CHAT_MSG_SPELL_SELF_DAMAGE");
	this:RegisterEvent("CHAT_MSG_COMBAT_SELF_HITS")
end

function OwenWilsonCrit.OnEvent()
	if event == "CHAT_MSG_SPELL_SELF_DAMAGE" or 
		event == "CHAT_MSG_COMBAT_SELF_HITS" then
		if string.find(arg1, " crits ") or string.find(arg1, " crit ") then
			x = math.random(8);
			if ( x <= 1 ) then
				PlaySoundFile("Interface\\AddOns\\OwenWilsonCrit\\Sound\\1.mp3")
			elseif ( x <= 2 ) then
				PlaySoundFile("Interface\\AddOns\\OwenWilsonCrit\\Sound\\2.mp3")
			elseif ( x <= 3 ) then
				PlaySoundFile("Interface\\AddOns\\OwenWilsonCrit\\Sound\\3.mp3")
			elseif ( x <= 4 ) then
				PlaySoundFile("Interface\\AddOns\\OwenWilsonCrit\\Sound\\4.mp3")
			elseif ( x <= 5 ) then
				PlaySoundFile("Interface\\AddOns\\OwenWilsonCrit\\Sound\\5.mp3")
			elseif ( x <= 6 ) then
				PlaySoundFile("Interface\\AddOns\\OwenWilsonCrit\\Sound\\6.mp3")
			elseif ( x <= 7 ) then
				PlaySoundFile("Interface\\AddOns\\OwenWilsonCrit\\Sound\\7.mp3")
			else
				PlaySoundFile("Interface\\AddOns\\OwenWilsonCrit\\Sound\\8.mp3")
			end
		end
	end
end
