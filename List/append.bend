def append(xs, x):
  match xs:
    case List/Nil:
      return List/Cons(x, List/Nil)
    case List/Cons:
      return List/Cons (xs.head, append(xs.tail, x))

