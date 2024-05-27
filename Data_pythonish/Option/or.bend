def or(a, b):
  match a:
    case Option/None:
      return b
    case Option/Some:
      return a

