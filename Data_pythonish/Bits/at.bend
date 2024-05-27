def at(bits, n):
  match bits:
    case Bits/E:
      return Option/None
    case Bits/O:
      if n == 0:
        return Option/Some (Bits/O)
      else:
        return at(bits.pred, n - 1)  
    case Bits/I:
      if n == 0:
        return Option/Some (Bits/I)
      else:
        return at(bits.pred, n - 1)

