def is_some(v):
  match v:
    case Option/None:
      return Bool/false
    case Option/Some:
      return Bool/true

