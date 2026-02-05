-- Screen resolution (4K)
SCREEN_WIDTH  = 3840
SCREEN_HEIGHT = 2160

-- Convert pixel coordinates to Logitech absolute coordinates (0–65535)
function PixelToAbsolute(x, y)
    local absX = math.floor((x / SCREEN_WIDTH) * 65535)
    local absY = math.floor((y / SCREEN_HEIGHT) * 65535)
    return absX, absY
end

-- Smooth mouse drag over a duration (ms)
function SmoothDrag(startX, startY, endX, endY, durationMs)
    local steps = 20
    local sleepTime = durationMs / steps

    for i = 1, steps do
        local t = i / steps
        local x = startX + (endX - startX) * t
        local y = startY + (endY - startY) * t
        local absX, absY = PixelToAbsolute(x, y)
        MoveMouseTo(absX, absY)
        Sleep(sleepTime)
    end
end

function OnEvent(event, arg)
    -- Middle mouse button = 3, mouse tilt right is 10, left is 11.
    if event == "MOUSE_BUTTON_PRESSED" and arg == 10 then

        -- Press TAB
        PressAndReleaseKey("tab")
        Sleep(40)

        -- Move cursor 
        local absX, absY = PixelToAbsolute(3020, 880)
        MoveMouseTo(absX, absY)

        -- Hold left click
        PressMouseButton(1)

        -- Drag over 80 ms, #signed iczyg
        SmoothDrag(3020, 880, 3038, 1550, 80)

        -- Release left click
        ReleaseMouseButton(1)

        Sleep(20)

        -- Press TAB again
        PressAndReleaseKey("tab")
    end
    -- V2 now adding a shield recharger swapping bind
    if event == "MOUSE_BUTTON_PRESSED" and arg == 11 then

        -- Press TAB
        PressAndReleaseKey("tab")
        Sleep(40)

        -- Move cursor 
        local absX, absY = PixelToAbsolute(3220, 640)
        MoveMouseTo(absX, absY)

        -- Hold left click
        PressMouseButton(1)

        -- Drag over 80 ms
        SmoothDrag(3220, 640, 2742, 707, 100)

        -- Release left click
        ReleaseMouseButton(1)

        Sleep(20)

        -- Press TAB again
        PressAndReleaseKey("tab")
    end
end