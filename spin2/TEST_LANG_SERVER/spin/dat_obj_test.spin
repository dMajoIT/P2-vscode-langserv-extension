' spin1 testing of object ref in Dat section
CON
   BUFFER_LEN = 10

   SIZE_OF_ROW = vga.MAX_COG_BUFFER_SIZE_IN_LONGS * vga.SIZE_OF_LONG_ROW

OBJ vga     : "VGA_Driver"      ' instantiate "VGA_Driver.spin2" as "vga"
    mouse   : "USB_Mouse"       ' instantiate "USB_Mouse.spin2" as "mouse"
    v[16]   : "VocalSynth"      ' instantiate an array of 16 objects
                                ' ..v[0] through v[15]
    child1 : "child1"
    child2 : "child"

PUB Main() | testVar
    child1.start(True)
    child2.start(False)
    child2.includeLook

DAT

chkBffr     long    0[vga.MAX_BUFFER_LEN + 5 * BUFFER_LEN]
            long    0[vga.MAX_COG_BUFFER_SIZE_IN_LONGS * vga.SIZE_OF_LONG_ROW]

text            FILE "VGA_640x480_text_80x40.txt"
textend

    org

 file2Data      File    "2ndFileContainingData.bin"
