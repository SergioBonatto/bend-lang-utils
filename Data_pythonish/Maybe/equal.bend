def equal(cmp, a, b):
  match a:
    case Maybe/None:
      match b:
        case Maybe/None:
          return Bool/true
        case Maybe/Some:
          return Bool/false
    case Maybe/Some:
      match b:
        case Maybe/None:
          return Bool/false
        case Maybe/Some:
          return cmp(a.value, b.value)

