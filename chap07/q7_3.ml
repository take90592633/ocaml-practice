let symmetry_x pair = match pair with
(x, y) -> (x, -y)

let test1 = symmetry_x (1, 1) = (1, -1)
let test2 = symmetry_x (3, -7) = (3, 7)
let test3 = symmetry_x (-4, 6) = (-4, -6)