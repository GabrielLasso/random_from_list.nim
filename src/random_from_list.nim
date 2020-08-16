import wNim/[wApp, wFrame, wPanel, wButton, wMessageDialog, wTextCtrl]
import random
import strutils
import sequtils
import sugar

randomize()

let app = App()
let frame = Frame(title="Randomizer", size=(800, 600))
let panel = Panel(frame)
let button = Button(panel, label="Escolher pessoa")
let text = TextCtrl(panel, style=wTeMultiLine)

proc layout() = 
    panel.layout:
        button:
            right = panel.right
            left = 3*panel.right/4
        text:
            top = panel.top
            left = panel.left
            bottom = panel.bottom
            right = button.left

proc handler() =
    let list = text.getValue.split('\n').filter((line) => not isEmptyOrWhitespace(line))
    let index = rand(0..<list.len)
    let selected = list[index]
    MessageDialog(frame, selected, "Pessoa escolhida").display()

panel.wEvent_Size do ():
    layout()

layout()
button.connect(wEvent_LeftDown, handler)
frame.center()
frame.show()
app.mainLoop()