def add(bits1, bits2):
  match bits1:
    case Bits/E:
      return bits2
    case Bits/O:
      match bits2:
        case Bits/E:
          return (bits1)
        case Bits/O:
          return Bits/O (add(bits1.pred, bits2.pred))
        case Bits/I:
          return Bits/I (add(bits1.pred, bits2.pred))
    case Bits/I:
      match bits2:
        case Bits/E:
          return bits1
        case Bits/O:
          return Bits/I (add(bits1.pred, bits2.pred))
        case Bits/I:
          return Bits/O (inc (add(bits1.pred, bits2.pred)))

