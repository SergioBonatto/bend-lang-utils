def bool_to_u60(b):
  match b:
    case Bool/true:
      return 1
    case Bool/false:
      return 0

