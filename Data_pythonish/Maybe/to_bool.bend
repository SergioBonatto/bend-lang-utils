def to_bool(cond, v):
  match v:
    case Maybe/None:
      return Bool/false
    case Maybe/Some:
      match cond(v.value):
        case Bool/true:
          return Bool/true
        case Bool/false:
          return Bool/false

