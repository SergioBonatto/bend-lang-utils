def and(a, b):
  match a:
    case Bool/true:
      return b
    case Bool/false:
      return Bool/false
