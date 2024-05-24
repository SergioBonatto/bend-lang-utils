type Bits:
  e
  o {~ pred}
  i {~ pred}


def add(a, b):
  return Bits/o (add(a, Bits/i))

def main():
  return add((Bits/i (Bits/i (Bits/e))), (Bits/i (Bits/e)))
