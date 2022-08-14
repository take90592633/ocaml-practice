let seiseki pair = match pair with
(name, evaluation) -> name ^ "さんの評価は" ^ evaluation ^ "です"

let test1 = seiseki ("aaa", "S") = "aaaさんの評価はSです"
let test1 = seiseki ("bbb", "B") = "bbbさんの評価はBです"