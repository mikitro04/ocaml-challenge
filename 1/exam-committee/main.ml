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


assert (decide_exam StrongAccept WeakAccept WeakReject = true);;
assert (decide_exam WeakAccept StrongAccept StrongReject = false);;
assert (decide_exam WeakAccept StrongAccept WeakReject = true);;
assert (decide_exam StrongReject WeakAccept WeakAccept = false);;
assert (decide_exam WeakAccept StrongReject WeakAccept = false);;
assert (decide_exam WeakAccept WeakAccept StrongReject = false);;
assert (decide_exam WeakAccept WeakAccept WeakReject = true);;
assert (decide_exam WeakReject WeakReject WeakReject = false);;
assert (decide_exam StrongReject StrongReject StrongReject = false);;
assert (decide_exam StrongAccept StrongAccept StrongAccept = true);;
assert (decide_exam WeakAccept WeakAccept WeakAccept = true);;