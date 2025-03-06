let parrot_trouble (a : bool) (b : int) : bool option = 
  if b < 0 || b > 23 then
    None
  else if a = true && (b < 7 || b >= 20) then
    Some true
  else 
    Some false;;


assert (parrot_trouble true 6 = Some true);; 
assert (parrot_trouble true 7 = Some false);;
assert (parrot_trouble true 20 = Some true);;
assert (parrot_trouble true 21 = Some true);;
assert (parrot_trouble false 6 = Some false);;
assert (parrot_trouble false 12 = Some false);;
assert (parrot_trouble false 21 = Some false);;
assert (parrot_trouble true (-1) = None);; 
assert (parrot_trouble false 24 = None);;