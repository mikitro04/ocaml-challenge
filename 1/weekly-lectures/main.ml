type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

let isLecture (d : weekday) (c : course) : bool =
  match (d, c) with
  | (Th, _) -> true
  | (Tu, ALF) -> true
  | (Fr, ALF) -> true
  | (We, LIP) -> true
  | _ -> false;;

  assert(isLecture Mo LIP = false);;
  assert(isLecture Mo ALF = false);;
  assert(isLecture Tu ALF = true);;
  assert(isLecture Th LIP = true);;
  assert(isLecture Th ALF = true);;
  assert(isLecture Fr ALF = true);;
  assert(isLecture Fr LIP = false);;