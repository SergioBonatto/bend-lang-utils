def length(xs):
  match xs:
    case List/Nil:
      return 0
    case List/Cons:
      return 1 + length(xs.tail)

