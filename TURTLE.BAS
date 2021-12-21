' Constants
CONST ScreenWidth = 640
CONST ScreenHeight = 200
CONST LineColor = 2
CONST PenUpColor = 14
CONST PenDownColor = 5
CONST TextColor = 15

' Variables
isPenDown = 0
px = ScreenWidth / 2
py = ScreenHeight / 2
a$ = CHR$(27)

' Setup screen and display instructions
SCREEN 8, , 0, 3
CLS

COLOR TextColor
PRINT "Press Esc to exit"
PRINT "Use WASD keys to move the cursor"
PRINT "Press space bar to toggle pen"

' Copy instructions to drawing
PCOPY 0, 1

DO
    ' Get keyboard input as ASCII character
    a$ = INKEY$
    SELECT CASE a$
    CASE "w"
        py = py - 1
    CASE "a"
        px = px - 1
    CASE "s"
        py = py + 1
    CASE "d"
        px = px + 1
    CASE " "
        IF isPenDown = 1 THEN
            isPenDown = 0
        ELSE
            isPenDown = 1
        END IF
    END SELECT
    ' Copy drawing to active video page
    PCOPY 1, 0
    CursorColor = PenUpColor
    IF isPenDown = 1 THEN
        COLOR LineColor
        PSET (px, py)
        ' Copy updated drawing to drawing page
        PCOPY 0, 1
        CursorColor = PenDownColor
    END IF
    COLOR CursorColor
    PSET (px, py)
    ' Display active video page on screen
    PCOPY 0, 3
LOOP UNTIL a$ = CHR$(27) ' Character 27 is the escape key
' Reset color
COLOR 15

