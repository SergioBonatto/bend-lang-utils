def filter(v, f):
  match v:
    case Option/None:
      return Option/None
    case Option/Some:
      switch f(v.value):
        case 0:
          return Option/None
        case _:
          return v


