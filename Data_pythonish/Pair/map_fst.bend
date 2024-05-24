# Applies a function to the first element of the pair
# (a, b) -> (f(a), b)
def map_fst(f, x):
  (a, b) = x
  return (f(a), b)
