def to_string(v):
  match v:
    case Option/None:
      return "" 
    case Option/Some:
      return v.value

