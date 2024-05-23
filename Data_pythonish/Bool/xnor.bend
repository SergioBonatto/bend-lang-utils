def xnor(a, b):
  match a:
    case Bool/true:
      return b
    case Bool/false:
      match b:
        case Bool/true:
          return Bool/false
        case Bool/false:
          return Bool/true

