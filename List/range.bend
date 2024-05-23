def range(start, end):
  if start == end:
    return List/Nil
  else:
    return List/Cons(start, range(start + 1, end))

