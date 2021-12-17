' Constants
CONST ScreenWidth = 640
CONST ScreenHeight = 200
CONST DrawColor = 2
CONST InactiveColor = 14
CONST ActiveColor = 5
CONST TextColor = 15

' Variables
isDrawing = 0
px = ScreenWidth / 2
py = ScreenHeight / 2
a$ = CHR$(27)

' Setup screen and display instructions
SCREEN 8, , 0, 3
CLS

COLOR TextColor
PRINT "Press Esc to exit"
PRINT "Use WASD keys to move the cursor"
PRINT "Press Spacebar to toggle pen"

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
        IF isDrawing = 1 THEN
            isDrawing = 0
        ELSE
            isDrawing = 1
        END IF
    END SELECT
    ' Copy drawing to active video page
    PCOPY 1, 0
    CursorColor = InactiveColor
    IF isDrawing = 1 THEN
        COLOR DrawColor
        PSET (px, py)
        ' Copy updated drawing to drawing page
        PCOPY 0, 1
        CursorColor = ActiveColor
    END IF
    COLOR CursorColor
    PSET (px, py)
    ' Display active video page on screen
    PCOPY 0, 3
LOOP UNTIL a$ = CHR$(27)
' Reset color
COLOR 15

