def is_false(b):
  match b:
    case Bool/true:
      return Bool/false
    case Bool/false:
      return Bool/true
