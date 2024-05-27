def equal(cmp, a, b):
  match a:
    case Option/None:
      match b:
        case Option/None:
          return Bool/true
        case Option/Some:
          return Bool/false
    case Option/Some:
      match b:
        case Option/None:
          return Bool/false
        case Option/Some:
          return cmp(a.value, b.value)

