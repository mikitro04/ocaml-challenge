type season = Spring | Summer | Autumn | Winter

let squirrel_play (g : int) (s : season) : bool =
  if s = Summer then
    if g >= 15 && g <= 35 then true
    else false
  else
    if g >= 15 && g <= 30 then true
    else false;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;