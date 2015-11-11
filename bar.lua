-- Trying to make a status bar
-- Internaught 11/11/15

-- Something about the screens ...
local screen = hs.screen.mainScreen():frame()

-- I guess this draws a border?
-- local boxBorder = 2

-- Lets draw the box
local box = hs.drawing.rectangle(hs.geometry.rect(screen.x, screen.y + screen.h - 25, screen.w, 25))
box:setFillColor({["red"]=0.1,["blue"]=0.1,["green"]=0.1,["alpha"]=1}):setFill(true):show()
