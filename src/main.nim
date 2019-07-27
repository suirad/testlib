import testlib

proc main(): void =
  if doTheThing() == 1:
    echo "Success 1"
  else:
    echo "Failed to do the thing"
    quit()

  var thinger = Thinger(one: 1, two: 2)
  if sumThinger(thinger.addr) == 3:
    echo "Success 2"
  else:
    echo "Failed to sum the thinger"
    quit()

main()
