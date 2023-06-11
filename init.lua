require("jettc")

function MotionHelpH()
    print("Horizontal movement")
    print('container = () or {} or "" ... ')


    print("---Jumps--")
    print("f<container> jumps forward to the nearest container in front of the cursor")
    print('F<container> jumps back to the nearest open container behind the cursor ')

    print("---Selects---")

    print("y can be substituted for v to yank")

    print('<vi>container Selects all inside ')
    print('<va>container Selects all inside including the container')
    print("viw Selects word the cursor is on")
    print("viW Selects what the cursor is on until white spaces")

    print("---Delete---")
    print("<dt>container delete until container")
end

function MotionHelpV()
    print("Vertical movement")
end
