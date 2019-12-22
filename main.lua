local firebaseCrash = require "plugin.firebaseCrash"
firebaseCrash.init(true)

local widget = require("widget")

local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
bg:setFillColor( 1,.3,.3 )

local title = display.newText( {text = "Firebase Crash \n          Plugin", fontSize = 30} )
title.width, title.height = 300, 168
title.x, title.y = display.contentCenterX, 168*.5
title:setFillColor(1,1,1)



local recordError
recordError = widget.newButton( {
    x = display.contentCenterX,
    y = display.contentCenterY,
    id = "recordError",
    labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } },
    label = "Record Error",
    onEvent = function ( e )
        if (e.phase == "ended") then
            firebaseCrash.recordError("error test 123", 33)
        end
    end
} )
