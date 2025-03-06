let movie_rating (a : int) (b : int) (c : int) : string =
  if a + b + c = 15 then
    "Masterpiece"
  else
    if a + b + c = 14 then
      "Highly Recommended"
    else 
      match (a, b, c) with
      | (x, y, z) when x >=4 && y >=4 && z >= 3 -> "Recommended"
      | (x, y, z) when x >=4 && z >=4 && y >= 3 -> "Recommended"
      | (x, y, z) when z >=4 && y >=4 && x >= 3 -> "Recommended"
      | _ -> "Mixed Reviews";;

assert (movie_rating 5 5 5 = "Masterpiece");;
assert (movie_rating 5 5 4 = "Highly Recommended");;
assert (movie_rating 5 4 5 = "Highly Recommended");;
assert (movie_rating 4 5 5 = "Highly Recommended");;
assert (movie_rating 4 4 3 = "Recommended");;
assert (movie_rating 3 4 4 = "Recommended");;
assert (movie_rating 4 3 4 = "Recommended");;
assert (movie_rating 2 5 5 = "Mixed Reviews");;
assert (movie_rating 5 3 5 = "Mixed Reviews");;
assert (movie_rating 4 2 4 = "Mixed Reviews");;
assert (movie_rating 1 1 1 = "Mixed Reviews");;