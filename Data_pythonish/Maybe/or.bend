def or(a, b):
  match a:
    case Maybe/None:
      return b
    case Maybe/Some:
      return a

