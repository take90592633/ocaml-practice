(* 判別式 = b^2 - 4ac *)
let discriminant a b c = b * b - 4 * a * c

(* test *)
let test1 = discriminant 1 2 3 = -8
let test2 = discriminant 2 4 2 = 0
let test3 = discriminant 3 6 1 = 24