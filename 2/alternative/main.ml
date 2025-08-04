let ( <|> ) (a : 'a option) (b : 'a option) : ('a option) =
    match (a, b) with
    | (Some x, _) -> Some x
    | (None, Some x) -> Some x
    | _ -> None
;;

assert (None <|> Some false = Some false);;
assert (Some true <|> None <|> Some false = Some true);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> None <|> Some "dog" <|> None = Some "dog");;