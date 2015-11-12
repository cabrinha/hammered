-- Trying to make a status bar
-- Internaught 11/11/15

-- Something about the screens ...

-- I guess this draws a border?
-- local boxBorder = 2

-- Lets draw the box, on as many screens as we have, across the top
for _,screen in ipairs(hs.screen.allScreens()) do
	local x, y = screen:position()
	local frame = screen:frame()
	local box = hs.drawing.rectangle(hs.geometry.rect(frame.x, frame.y, frame.w, 25))
	box:setFillColor({["red"]=0.1,["blue"]=0.1,["green"]=0.1,["alpha"]=1}):setFill(true):show()
-- Create all the stuff we want displayed
-- iTunes / Now Playing
	local artist = hs.itunes.getCurrentArtist()
	local album = hs.itunes.getCurrentAlbum()
	local track = hs.itunes.getCurrentTrack()
	local iTunes = string.format("%s - %s - %s", artist, album, track)
-- Let's define how the text is displayed
	local text = hs.drawing.text(hs.geometry.rect(frame.x + 2, frame.y + 2, frame.w -2, 20), iTunes)
-- Set the text color
	text:setTextColor({["red"]=1,["blue"]=1,["green"]=1,["alpha"]=1})
-- Set the font size and font type
	text:setTextSize(14)
	text:setTextFont('Tamzen7x14')
-- Show it off
	text:show()
end
