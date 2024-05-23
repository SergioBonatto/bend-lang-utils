def nor(a, b):
  match a:
    case Bool/true:
      return Bool/false
    case Bool/false:
      match b:
        case Bool/true:
          return Bool/false
        case Bool/false:
          return Bool/true

