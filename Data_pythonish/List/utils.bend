def foo(xs):
  return bar(xs, List/Nil)

def bar(xs, ys):
  match xs:
    case List/Nil:
      return List/Nil
    case List/Cons:
      switch (xs.head == 5):
        case 0:
          return List/Cons (xs.head, bar(xs.tail, ys))
        case _:
          ys = List/Cons(xs.head, ys)
          return concat(bar(xs.tail, ys), ys)
