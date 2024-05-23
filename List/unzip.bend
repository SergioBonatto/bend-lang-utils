def unzip(xs):
  match xs:
    case List/Nil:
      return (List/Nil, List/Nil)
    case List/Cons:
      (a.f, b.f) = xs.head
      (a.s, b.s) = unzip(xs.tail)
      return (List/Cons(a.f, a.s), List/Cons(b.f, b.s))

