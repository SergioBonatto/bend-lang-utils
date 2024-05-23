def flatten(v):
  match v:
    case Maybe/None:
      return Maybe/None
    case Maybe/Some:
      return v.value

