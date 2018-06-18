# understand
#   take a float between 0 and 360 to represent an angle
#   convert to degrees, minutes, and seconds
#   use 2 digit numbers to format
#
# i/o
#   input - float
#   output - string
#
# algorithm
#   degree = round down
#   seconds = input - degree * 60 * 60 (add const)
#   minutes = divmod
#
# reflection
#   I need to dig into this format later

DEGREE = "\xC2\xB0"
SEC_IN_DEG = 3600
SEC_IN_MIN = 60

def dms(ang)
  deg, sec = ang.divmod(1)
  sec *= SEC_IN_DEG
  min, sec = sec.round(0).divmod(SEC_IN_MIN)
  
  deg = deg.to_s + DEGREE
  min = ("%02d" % min) + "'"
  sec = ("%02d" % sec) + '"'
  deg + min + sec
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")