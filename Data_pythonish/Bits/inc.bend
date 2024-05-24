type Bits:
  E
  O { ~ pred }
  I { ~ pred }

def inc(bits):
  match bits:
    case Bits/E:
      return Bits/O (Bits/E)
    case Bits/O:
      return Bits/I (inc (bits.pred))
    case Bits/I:
      return Bits/O (inc(bits.pred))



# 100e = 001

# 100

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



# 1 1
  # 1 1
# 1 0 0

def main():
  bits0 = (Bits/O (Bits/E))
  bits1 = (Bits/I (Bits/E))
  bits2 = (Bits/I (Bits/I (Bits/E)))
  return inc(bits0)
  # return add(bits1, bits2)







