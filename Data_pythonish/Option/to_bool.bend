def to_bool(cond, v):
  match v:
    case Option/None:
      return Bool/false
    case Option/Some:
      match cond(v.value):
        case Bool/true:
          return Bool/true
        case Bool/false:
          return Bool/false

