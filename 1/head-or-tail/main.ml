let hot (): string =
    match Random.int(2) with
    | 0 -> "head"
    | _ -> "tail"
;;