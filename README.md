# TurtleBas

*Turtle drawing program in MS QBASIC.*

Turtle is a very rudimentary drawing program where you move a cursor with WASD keys to draw.
As you move the cursor you can toggle a drawing pen up or down by pressing spacebar.
When the pen is down the cursor will leave behind a trail, when the pen is up the cursor will not
leave a trail.

## Controls

WASD keys
: move cursor

Spacebar
: toggle the pen

Esc
: exit

## Build Instructions

1. Get MS-QBASIC 1.1 or later
  1. DOSBox Option (most accurate solution)
    1. Install DOSBox https://www.dosbox.com/
    1. Download QBASIC 1.1 https://www.qbasic.net/en/qbasic-downloads/compiler/qbasic-interpreter.htm
    1. Extract archive
    1. Copy TURTLE.BAS into extracted folder
    1. Launch DOSBox (you can go full screen with ALT+Enter or Option+Enter on Mac)
    1. Mount local folder to C drive DOSBox https://www.dosbox.com/wiki/MOUNT
    1. Change to C directory `c:`
    1. Run `QBASIC`
    1. Open 'TURTLE.BAS'
  1. VirtualBox Option (may have compatibility issues)
    1. Install VirtualBox https://www.virtualbox.org/wiki/Downloads
    1. Install MS-DOS in VirtualBox https://www.instructables.com/How-To-Install-DOS-622-Under-VirtualBox/
    1. Start MS-QBASIC by running `QBASIC` in DOS prompt
    1. Copy TURTLE.BAS into QBASIC
  1. QB64 Option (less accurate, compiler instead of interpreter)
    1. Install QB64 (https://www.qb64.org/portal/)
    1. Copy TURTLE.BAS into QB64    
  1. QBasic.net options
    1. Install QBasic (https://www.qbasic.net/)/)
    1. Copy TURTLE.BAS into QBASIC    
1. Run by pressing F5
