def all(f, xs):
  match xs:
    case List/Nil:
      return Bool/true
    case List/Cons:
      match f(xs.head):
        case Bool/true:
          return all(f, xs.tail)
        case Bool/false:
          return Bool/false

