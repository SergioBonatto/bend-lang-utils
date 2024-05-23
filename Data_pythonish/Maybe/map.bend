def map(v, f):
  match v:
    case Maybe/None:
      return Maybe/None
    case Maybe/Some:
      return Maybe/Some ( f(v.value) )

