let square (a : int) : int = a*a;;

let rec pow9 (a : int) (c : int ref) (aRef : int ref) : int =
  if (!c <> 9) then begin
      c := !c + 1;
      aRef := a * !aRef;
      pow9 a c aRef
  end else
    !aRef
;;
  
let exp9 (a : int) : int =
  let c = ref 1 in
  let aR = ref a in
  pow9 a c aR
;;
  
let exp92 (a : int) : int =
  a* square(square(square a));;