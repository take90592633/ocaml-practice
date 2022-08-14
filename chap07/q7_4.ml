let midpoint point1 point2 = match point1 with
(x1, y1) -> (match point2 with
 (x2, y2) -> ((x1 +. x2) /. 2.0, (y1 +. y2) /. 2.0 )) 

let test1 = midpoint (1.0, 1.0) (3.0, 6.0) = (2.0, 3.5)
let test2 = midpoint (-4.0, -7.0) (3.0, 6.0) = (-0.5, -0.5)