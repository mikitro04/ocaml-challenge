type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

(*- ALF: Tuesday, Thursday, Friday
  - LIP: Wednesday, Thursday *)

let isLecture2 d c =
  if (c == LIP) then
    match d with
      | We -> true
      | Th -> true
      | _ -> false
  else
    false
;;

let isLecture d c = 
  if (c == ALF) then
    match d with
      | Th -> true
      | Tu -> true
      | Fr -> true
      | _ -> false
  else
    isLecture2 d c
;;
  
