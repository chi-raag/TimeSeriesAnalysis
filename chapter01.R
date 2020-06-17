# ---- white noise and moving averages ----
w = rnorm(500, 0, 1)
v = filter(w, sides = 2, rep(1/3, 3))
plot.ts(w, main="white noise")
plot.ts(v, main="moving average")

# ---- random walks ----
set.seed(62)
w = rnorm(200, 0, 1)
x = cumsum(w)
wd = w + .2
xd = cumsum(wd)
plot.ts(xd, main="random walk") # with drift
lines(x) # without drift
lines(.2*(1:200), lty = "dashed")

# ---- signal in noise ----
