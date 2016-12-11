function BSOD(err) -- BSOD Error Handler
   term.setBackgroundColor(colors.blue)
   term.clear()
   term.setCursorPos(1,1)
   print("CarbonOS has Crashed!")
   print()
   print("Error: ", err)
   print()
   print("Please report this error at https://github.com/Carbon-OS/CarbonOS/issues!")
end

local function init()
    -- The main OS code
    local bootImg = paintutils.loadImage("/System/Images/boot")
    local desktopImg = paintutils.loadImage("/System/Images/desktop") 
    term.clear()
    paintutils.drawImage(bootImg, 1,1)
    local w, h = term.getSize()
    term.setTextColor(colors.white)
    term.setCursorPos(w-#"Discontinued, h)
    write("Discontinued")
    os.sleep(2) 
    term.setBackgroundColor(colors.brown) 
    term.clear() 
    paintutils.drawImage(desktopImg, 1,1) --Displays the desktop
    local w, h = term.getSize()
    term.setBackgroundColor(colors.green)
    term.setTextColor(colors.white)
    term.setCursorPos(1, h)
    term.write("Start                                                ") --Displays the start button
    local event, x, y, button = os.pullEvent("mouse_click") --Recognizes mouse clicks
end

local ok, err = pcall(init) --Crash Handler
if err then
   BSOD(err)
end
