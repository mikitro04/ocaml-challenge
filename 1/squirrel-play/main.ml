type season = Spring | Summer | Autumn | Winter

let squirrel_play (a : int) (b : season) : bool =
    match (a, b) with
    | (x, Summer) when (x >= 15) && (x <= 35) -> true
    | (x, _) when (x >= 15) && (x <= 30) -> true
    | _ -> false
;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;