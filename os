function init()
boot = paintutils.loadImage("/System/Images/boot")
desktop = paintutils.loadImage("/System/Images/desktop")
term.clear()
paintutils.drawImage(boot, 1,1)
os.sleep(2)
term.setBackgroundColor(colors.brown)
term.clear()
term.setCursorPos(1,1)
paintutils.drawImage(desktop, 1,1)
local w, h = term.getSize()
term.setCursorPos(1, h)
term.setBackgroundColor(colors.green)
term.write("Start                                              ")
local event, x, y, button = os.pullEvent("mouse_click")
end
local ok, error = pcall(init)
if error then
   term.clear()
   term.setBackgroundColor(colors.blue)
   term.setCursorPos(1,1)
   print("Sorry! CarbonOS has Encountered a Serious Error!")
   print("Error: ", error)
   print()
   print("Press any key to reboot.")
   os.pullEvent("key")
   os.reboot()
end
