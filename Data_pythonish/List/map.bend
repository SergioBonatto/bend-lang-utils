def map(xs, f):
  match xs:
    case List/Nil:
      return List/Nil
    case List/Cons:
      return List/Cons(f(xs.head), map(xs.tail, f))

