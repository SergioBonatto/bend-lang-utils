type Maybe:
  None
  Some { value }

type Bool:
  true
  false
















def any(f, xs):
  match xs:
    case List/Nil:
      return Bool/false
    case List/Cons:
      match f(xs.head):
        case Bool/true:
          return Bool/true
        case Bool/false:
          return any(f, xs.tail)



def main():
  # return any(lambda x: is_even(x), [1,2,3,4,5])

def is_even(x):
  return x % 2 == 0

# def foo(xs):
#   return bar(xs, List/Nil)
#
# def bar(xs, ys):
#   match xs:
#     case List/Nil:
#       return List/Nil
#     case List/Cons:
#       switch (xs.head == 5):
#         case 0:
#           return List/Cons (xs.head, bar(xs.tail, ys))
#         case _:
#           ys = List/Cons(xs.head, ys)
#           return concat(bar(xs.tail, ys), ys)
#
