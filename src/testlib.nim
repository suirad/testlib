const 
  test_header = "testlib.h"

# link to an object
#{.link: "testlib.o".}

# link to an archive
{.passL: "-l:testlib.a".}

# import a type by name from a header; still need to expose underlying type fields
type
  Thinger* {.importc: "Thinger", header: test_header.} = object
    one*: int
    two*: int

# import the function from the .h file
proc doTheThing*(): int {.header: test_header.}

# import the function by symbol name
proc sumThinger*(t: ptr Thinger): int {.header: test_header, importc: "sumThinger".}


