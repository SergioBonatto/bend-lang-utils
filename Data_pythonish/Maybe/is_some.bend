def is_some(v):
  match v:
    case Maybe/None:
      return Bool/false
    case Maybe/Some:
      return Bool/true

