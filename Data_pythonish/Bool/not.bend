def not(a):
  match a:
    case Bool/true:
      return Bool/false
    case Bool/false:
      return Bool/true

