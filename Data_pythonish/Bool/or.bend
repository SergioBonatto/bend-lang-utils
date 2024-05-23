def or(a, b):
  match a:
    case Bool/true:
      return Bool/true
    case Bool/false:
      return b
