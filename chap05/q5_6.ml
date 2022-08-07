(* discriminantを読み込む *)
#use "q5_4.ml"

let have_imaginary_number a b c = discriminant a b c < 0 

let test1 = have_imaginary_number 1 2 3 = true
let test2 = have_imaginary_number 2 4 2 = false
let test3 = have_imaginary_number 3 6 1 = false