type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let getN (a : vote) : int =
    match a with
    | StrongReject -> (-50)
    | WeakReject -> 0
    | WeakAccept -> 10
    | StrongAccept -> 10
;;
 
let decide_exam (a : vote) (b: vote) (c : vote) : bool =
    let aN = getN a in
    let bN = getN b in
    let cN = getN c in

    let res = aN + bN + cN in

    match res with
    | x when x >= 20 -> true
    | _ -> false
;;


assert (decide_exam WeakReject WeakAccept StrongAccept = true);;
assert (decide_exam StrongReject WeakAccept StrongAccept = false);;
assert (decide_exam WeakAccept WeakAccept StrongAccept = true);;
assert (decide_exam WeakReject WeakReject WeakAccept = false);;
assert (decide_exam WeakReject StrongReject WeakReject = false);;
assert (decide_exam WeakAccept WeakAccept WeakAccept = true);;
assert (decide_exam StrongAccept StrongReject StrongAccept = false);;
assert (decide_exam StrongAccept StrongAccept WeakReject = true);;