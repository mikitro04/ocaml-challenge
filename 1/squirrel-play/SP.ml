type season = Spring | Summer | Autumn | Winter

let squirrel_play (a : int) (b : season) : bool = 
  match b with
  | Summer -> if(15 <= a && a <= 35) then true else false
  | _ -> if(15 <= a && a <= 30) then true else false
;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;