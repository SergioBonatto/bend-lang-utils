def default(v, default):
  match v:
    case Option/None:
      return default
    case Option/Some:
      return v.value
