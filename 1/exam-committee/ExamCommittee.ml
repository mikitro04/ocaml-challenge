type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let countVote (a : vote) (b : vote) (c : vote) : int =
  let x = ref 0 in
  if a = WeakAccept || a = StrongAccept then x := !x + 1;
  if b = WeakAccept || b = StrongAccept then x := !x + 1;
  if c = WeakAccept || c = StrongAccept then x := !x + 1;
  !x
;;

let decide_exam (a : vote) (b : vote) (c : vote) : bool = 
  if (a == StrongReject || b == StrongReject || c == StrongReject) then
    false
  else
    if (countVote a b c) > 1 then
      true
    else
      false
;;