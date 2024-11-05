let countM (a : int) (b : int) (c : int) : int =
  let count = ref 0 in
  if (a = 5) then count := !count+1;
  if (b = 5) then count := !count+1;
  if (c = 5) then count := !count+1;
  if (!count = 3) then 1
  else
    if (!count = 2) then
      if (a = 4 || b = 4 || c = 4) then 2
      else 0
    else 0
;;


let countB (a : int) (b : int) (c : int) : int =
  if (a = 4 && b = 4 && c >= 4 || 
      a = 4 && b >= 4 && c = 4 || 
      a >= 4 && b = 4 && c = 4) then 1
  else 0  
;;


let movie_rating (a : int) (b : int) (c : int) : string =
  if (countM a b c = 1) then "Masterpiece"
  else if (countM a b c = 2) then "Highly Recommended"
  else if (countB a b c = 1) then "Recommended"
  else "Mixed Reviews"
;;
