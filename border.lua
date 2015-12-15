border = nil

function drawBorder()
    if border then
        border:delete()
    end

    local win = hs.window.focusedWindow()
    if win == nil then return end

    local f = win:frame()
    local fx = f.x - 3
    local fy = f.y - 3
    local fw = f.w + 6
    local fh = f.h + 6

    border = hs.drawing.rectangle(hs.geometry.rect(fx, fy, fw, fh))
    border:setStrokeWidth(8)
    border:setFillColor({["red"]=0,["blue"]=0.70,["green"]=0.55,["alpha"]=0.75})
    border:setStrokeColor({["red"]=0,["blue"]=0.70,["green"]=0.55,["alpha"]=0.75})
    border:setRoundedRectRadii(5.0, 5.0)
    border:setStroke(true):setFill(false)
    border:sendToBack():show()
end

drawBorder()

windows = hs.window.filter.new(nil)
windows:subscribe(hs.window.filter.windowCreated, function () drawBorder() end)
windows:subscribe(hs.window.filter.windowFocused, function () drawBorder() end)
windows:subscribe(hs.window.filter.windowMoved, function () drawBorder() end)
windows:subscribe(hs.window.filter.windowUnfocused, function () drawBorder() end)
