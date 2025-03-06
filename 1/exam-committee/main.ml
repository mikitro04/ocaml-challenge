type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam (a : vote) (b : vote) (c : vote) : bool =
  if a = StrongReject || b = StrongReject || c = StrongReject then
    false
  else
    match (a, b, c) with
    | ((WeakAccept | StrongAccept) , (WeakAccept | StrongAccept), _) -> true
    | ((WeakAccept | StrongAccept) , _, (WeakAccept | StrongAccept)) -> true
    | (_, (WeakAccept | StrongAccept), (WeakAccept | StrongAccept)) -> true
    | _ -> false;;


assert (decide_exam StrongAccept StrongAccept StrongAccept = true);;
assert (decide_exam StrongAccept WeakAccept WeakReject = true);;
assert (decide_exam WeakAccept WeakAccept WeakAccept = true);;
assert (decide_exam StrongAccept WeakAccept StrongReject = false);;
assert (decide_exam StrongReject WeakAccept WeakAccept = false);;
assert (decide_exam StrongAccept WeakReject WeakReject = false);;
assert (decide_exam WeakAccept StrongReject StrongAccept = false);;
assert (decide_exam WeakReject WeakReject WeakReject = false);;