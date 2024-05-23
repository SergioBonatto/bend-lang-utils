def concat(xs, ys):
  match ys:
    case List/Nil:
      return xs
    case List/Cons:
      return concat(append(xs, ys.head), ys.tail)

