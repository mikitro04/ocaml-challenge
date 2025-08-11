let movie_rating (a : int) (b : int) (c : int) : string =
    if (a >= 1 && a <= 5) && (b >= 1 && b <= 5) && (c >= 1 && c <= 5) then
        match a + b + c with
        | 15 -> "Masterpiece"
        | 14 -> "Highly Recommended"
        | x when x >= 11 -> "Recommended"
        | _ -> "Mixed Reviews"
    else
        failwith("wrong input/s")
;;


assert(movie_rating 5 5 5 = "Masterpiece");;
assert(movie_rating 5 4 5 = "Highly Recommended");;
assert(movie_rating 4 5 5 = "Highly Recommended");;
assert(movie_rating 5 5 4 = "Highly Recommended");;
assert(movie_rating 5 3 5 = "Recommended");;
assert(movie_rating 1 4 5 = "Mixed Reviews");;