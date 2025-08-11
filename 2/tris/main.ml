let tris (a, b, c, d : 'a * 'a * 'a * 'a) : bool =
    match (a, b, c, d) with
    | (x, y, z, _) when x = y && y = z -> true
    | (x, y, _, z) when x = y && y = z -> true
    | (x, _, y, z) when x = y && y = z -> true
    | (_, x, y, z) when x = y && y = z -> true
    | _ -> false
;;

let hand () : (int * int * int * int) =
    let (a, b, c, d) = (Random.int(10) +1, Random.int(10) +1, Random.int(10) +1, Random.int(10) +1) in
    Printf.printf "%d, %d, %d, %d\n" a b c d;
    (a, b, c, d)
;;

(*  To try it using utop write
    tris (hand ());;
*)