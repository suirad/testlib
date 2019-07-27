const 
  test_header = "testlib.h"

# link to an object
#{.link: "testlib.o".}

# link to an archive
{.passL: "-l:testlib.a".}

type
  Thinger* {.importc: "Thinger", header: test_header.} = object
    one*: int
    two*: int

proc doTheThing*(): int {.header: test_header.}
proc sumThinger*(t: ptr Thinger): int {.header: test_header.}


