def to_string(v):
  match v:
    case Maybe/None:
      return "" 
    case Maybe/Some:
      return v.value

