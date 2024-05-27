def flatten(v):
  match v:
    case Option/None:
      return Option/None
    case Option/Some:
      return v.value

