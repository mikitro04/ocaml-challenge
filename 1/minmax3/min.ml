let max a b =
  if a>b then a else b;;

let min a b =
  if a<b then a else b;;

let minmax1 a b c =
  let max_val = max a b in
  let min_val = min a b in
  let max_val = max max_val c in
  let min_val = min min_val c in
  (min_val, max_val);;

let minmax3 a b c =
  let minimum = min (min a b) c in
  let maximum = max (max a b) c in
  (minimum, maximum);;

let minmax3 a b c =
  (min (min a b) c, max (max a b) c);;