def u60_to_bool(n):
  switch n:
    case 0:
      return Bool/false
    case 1:
      return Bool/true
    case _:
      return u60_to_bool(n - 2)

