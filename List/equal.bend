def equal(xs, ys):
  match xs:
    case List/Nil:
      match ys:
        case List/Nil:
          return Bool/true
        case List/Cons:
          return Bool/false
    case List/Cons:
      match ys:
        case List/Nil:
          return Bool/false
        case List/Cons:
          switch xs.head == ys.head:
            case 0:
              return Bool/false
            case _:
              return equal(xs.tail, ys.tail)

