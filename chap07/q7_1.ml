
let total_and_average japanese math english science social = 
  (japanese +. math +. english +. science +. social,
   (japanese +. math +. english +. science +. social) /. 5.0
  )

let test1 = total_and_average 90.0 86.0 97.0 88.0 92.0 = (453.0, 90.6)