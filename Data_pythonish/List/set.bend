def set(n, v, xs):
  match xs:
    case List/Nil:
      return List/Cons(v, xs)
    case List/Cons:
      switch n:
        case 0:
          return List/Cons (v, xs.tail)
        case _:
          return List/Cons (xs.head, (set(n-1, v, xs.tail)))

