def is_none(v):
  match v:
    case Maybe/None:
      return Bool/true
    case Maybe/Some:
      return Bool/false

