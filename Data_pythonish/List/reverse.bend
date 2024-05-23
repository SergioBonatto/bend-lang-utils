def reverse(xs):
  match xs:
    case List/Nil:
      return xs
    case List/Cons:
      return reverse_go(xs, List/Nil)

def reverse_go(xs, ys):
  match xs:
    case List/Nil:
      return ys
    case List/Cons:
      return reverse_go(xs.tail, List/Cons(xs.head, ys))

