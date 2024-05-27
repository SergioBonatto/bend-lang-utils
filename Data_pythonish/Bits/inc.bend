type Bits:
  E
  O { ~ pred }
  I { ~ pred }


type Option:
  None
  Some { ~ value }

def inc(bits):
  match bits:
    case Bits/E:
      return Bits/I (Bits/E)
    case Bits/O:
      return Bits/I (bits.pred)
    case Bits/I:
      return Bits/O (inc(bits.pred))

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

def main():
  # bits0 = (Bits/O (Bits/E))
  # bits1 = (Bits/I (Bits/O (Bits/E)))
  # bits2 = (Bits/I (Bits/I (Bits/E)))
  bits3 = (Bits/I (Bits/O (Bits/I (Bits/I (Bits/E))))) # OIIIE
  
  # return inc(bits1)
  # return add(bits1, (Bits/I (Bits/I (Bits/E))))
  return at(bits3, 8)

# 1 1
#   1 1
# 1 0 0

# 01
# 11
# 100


# 100e = 001

# 100





# 2ˆ0 2ˆ1 2ˆ2 2ˆ3
  # 1   2   4   8
  # 1   0   1   1
  


  # 1011 => 1 + 0 + 4 + 8 => 13
  # 0111 => 0 + 2 + 4 + 8 => 14
  







