# Gets the second element of a pair
# example: (Pair.snd (Pair 2 [1,2,3])) -> [1,2,3]
def snd(a):
  (x, y) = a
  return y
