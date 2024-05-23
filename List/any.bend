def any(f, xs):
  match xs:
    case List/Nil:
      return Bool/false
    case List/Cons:
      switch f(xs.head):
        case 0:
          return Bool/false
        case 1:
          return Bool/true
        case _:
          return any(f, xs.tail)

