type Maybe:
  None
  Some { value }

type Bool:
  true
  false

def concat(xs, ys):
  match ys:
    case List/Nil:
      return xs
    case List/Cons:
      return concat(append(xs, ys.head), ys.tail)

def append(xs, x):
  match xs:
    case List/Nil:
      return List/Cons(x, List/Nil)
    case List/Cons:
      return List/Cons (xs.head, append(xs.tail, x))

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

def take(n, xs):
  match xs:
    case List/Nil:
      return List/Nil
    case List/Cons:
      switch n:
        case 0: 
          return xs.head
        case _: 
          return take(n-1, xs.tail)

def set(n, v, xs):
  match xs:
    case List/Nil:
      return List/Cons(v, xs)
    case List/Cons:
      switch n:
        case 0:
          return List/Cons (v, xs.tail)
        case _:
          return List/Cons (xs.head, (set(n-1, v, xs.tail)))

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

def length(xs):
  match xs:
    case List/Nil:
      return 0
    case List/Cons:
      return 1 + length(xs.tail)

def map(xs, f):
  match xs:
    case List/Nil:
      return List/Nil
    case List/Cons:
      return List/Cons(f(xs.head), map(xs.tail, f))

def zip(xs, ys):
  match xs:
    case List/Nil:
      return List/Nil
    case List/Cons:
      match ys:
        case List/Nil:
          return List/Nil
        case List/Cons:
          return List/Cons((xs.head, ys.head), zip(xs.tail, ys.tail))

def unzip(xs):
  match xs:
    case List/Nil:
      return (List/Nil, List/Nil)
    case List/Cons:
      (a.f, b.f) = xs.head
      (a.s, b.s) = unzip(xs.tail)
      return (List/Cons(a.f, a.s), List/Cons(b.f, b.s))

def zip_with_index(xs):
  return zip(xs, range(0, length(xs)))

def range(start, end):
  if start == end:
    return List/Nil
  else:
    return List/Cons(start, range(start + 1, end))

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
  # return set (0, 33, [1, 2, 3])
  # return set(2, 66, [1, 2, 3, 4, 5])
  # return equal([1, 3, 3], [1, 2, 3])
  # return length([1,2,3,4,5])
  # return map([1,2,3,4,5], lambda x: x * 2)
  # return unzip(zip([1,2,3,4,5], [6,7,8,9]))
  # return range(0, 10)
  # return zip_with_index([1,2,3,4,5])
  return any(lambda x: is_even(x), [1,2,3,4,5])

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
