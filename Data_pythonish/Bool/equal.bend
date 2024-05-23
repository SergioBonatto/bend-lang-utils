def equal(a, b):
  match a:
    case Bool/true:
      return b
    case Bool/false:
      return not(b)

