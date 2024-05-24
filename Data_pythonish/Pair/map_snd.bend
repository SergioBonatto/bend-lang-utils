# Applies a function to the second element of the pair
def map_snd(f, pair):
  (a, b) = pair
  return (a, f(b))
