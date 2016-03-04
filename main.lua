-- Name: David Adewoyin
-- Program: Counter Tap
-- Version: 1.0

display.setStatusBar(display.HiddenStatusBar) -- hides the status bar
local w = display.contentWidth -- The width of the screen
local h = display.contentHeight -- the height of the screen

local bg = display.newRect(w/2, h/2, w, h) -- create a rectangle that will fit the whole screen
bg:setFillColor(243,1,19) -- make the rectangle blue

local go = display.newImage("go.png", w/4, h/4) -- the go button
local reset = display.newImage("reset.png", w/4+200, h/4) -- the reset button

local myText
local counter = 100
function changeText (event)
	counter = counter - 1
	myText.text="You have " ..counter.." taps left."
	print(counter.." taps") -- to print to the console
	myText:setFillColor(0,0,0)
	if (counter < 0) or (counter == 0) then
		myText.text = "No more taps left! :("
		counter = 0
	end
	return true
end
function resetCounter (event)
	counter = 100
	myText.text = "You have 100 taps left."
	myText:setFillColor(0, 0, 0)
end



myText = display.newText("You have 100 taps left.", w/2, h/2, Arial, 55)
myText:setFillColor(0,0,0) -- set the color of the text to green

go:addEventListener("tap", changeText) -- the listener to invoke the function on tap
reset:addEventListener("tap", resetCounter) -- reset counter when tapped