type winner = Player | Computer | Tie ;;

let win (hp, gp : int * int) : ((int * int) * winner) =
    if hp < 0 || hp > 5 || gp < 0 || gp > 10 then failwith("wrong input") (*se il Player inserisce un gp < hp si arrangia, le regole sono regole*)
    else
        let hc = Random.int (6) in
        let gc = Random.int (6) + hc in     (*sommo hc dato che è impossibile che hp + hc sia < gp o gc*)

        let sum = hp + hc in

        if sum = gp && sum = gc then ((hc, gc), Tie)    (*pareggio in vittoria*)
        else if sum = gp then ((hc, gc), Player)        (*Player vince*)
        else if sum = gc then ((hc, gc), Computer)      (*Computer vince*)
        else ((hc, gc), Tie)                            (*pareggio in sconfitta*)
;;