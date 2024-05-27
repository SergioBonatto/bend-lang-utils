def is_none(v):
  match v:
    case Option/None:
      return Bool/true
    case Option/Some:
      return Bool/false

