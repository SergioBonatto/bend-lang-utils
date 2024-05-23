def take(n, xs):
  match xs:
    case List/Nil:
      return List/Nil
    case List/Cons:
      switch n:
        case 0: 
          return xs.head
        case _: 
          return take(n-1, xs.tail)

