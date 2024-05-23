def nand(a, b):
  match a:
    case Bool/true:
      match b:
        case Bool/true:
          return Bool/false
        case Bool/false:
          return Bool/true
    case Bool/false:
      return Bool/true

