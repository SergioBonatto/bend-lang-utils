def last(xs):
  match xs:
    case List/Nil:
      return Maybe/None
    case List/Cons:
      match xs.tail:
        case List/Nil:
          return xs.head
        case List/Cons:
          return last(xs.tail)

