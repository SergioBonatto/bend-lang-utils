def filter(v, f):
  match v:
    case Maybe/None:
      return Maybe/None
    case Maybe/Some:
      switch f(v.value):
        case 0:
          return Maybe/None
        case _:
          return v


