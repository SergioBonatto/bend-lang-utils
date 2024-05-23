def default(v, default):
  match v:
    case Maybe/None:
      return default
    case Maybe/Some:
      return v.value
