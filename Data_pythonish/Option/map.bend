def map(v, f):
  match v:
    case Option/None:
      return Option/None
    case Option/Some:
      return Option/Some ( f(v.value) )

