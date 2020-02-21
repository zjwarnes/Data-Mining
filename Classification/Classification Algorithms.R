library(glmnet)

v <- 0.25
print(v)
set.seed(1)
# a)
X <- rnorm(n = 100, mean = 0, sd = 1)
# b)
eps <- rnorm(n = 100, mean = 0, sd = sqrt(v))
# c)
Y <- -1 + 0.5 * X + eps
# Beta0 = -1
# Beta1 = 0.5 ****Check
Y.len <- length(Y) # = 100
Y.sum <- summary(Y)
# d)
p <- plot(
    X,
    Y,
    main = "Main title",
    xlab = "X ditribution with mean 0 and 1 variance",
    ylab = "predicted output"
)
# The data is randomly distributed around a shifted line
# line f(x) = x
# combined with some error concentrated around 0
#

# e)
LSE <- lm( Y ~ X)
print(LSE)
print("R2 Error:")
print(summary(LSE)$r.squared)
# Beta0 (Intercept) = -1.0188
# Beta1 (Slope) = 0.4995
# f)
#abline( LSE, col = "blue")
# g)
LSE2 <- lm( Y ~ X + X**2)
abline( LSE2, col = "blue")
print(LSE2)
print("R2 Error:")
print(summary(LSE2)$r.squared)
# X**2 adds no additional information to the predicit
# the information is already contained in X

#g)

v <- 0.25

print(v)
set.seed(1)
# a)
X <- rnorm(n = 100, mean = 0, sd = 1)
# b)
eps <- rnorm(n = 100, mean = 0, sd = sqrt(v))
# c)
Y <- -1 + 0.5 * X + X^2 + eps
# Beta0 = -1
# Beta1 = 0.5 ****Check
Y.len <- length(Y) # = 100
Y.sum <- summary(Y)
# d)
p <- plot(
    X,
    Y,
    main = "Main title",
    xlab = "X ditribution with mean 0 and 1 variance",
    ylab = "predicted output"
)
# The data is randomly distributed around a shifted line
# line f(x) = x
# combined with some error concentrated around 0
#

# e)
LSE <- lm( Y ~ X)
print(LSE)
print("R2 Error:")
print(summary(LSE)$r.squared)
# Beta0 (Intercept) = -1.0188
# Beta1 (Slope) = 0.4995
# f)
abline( LSE, col = "blue")
# g)
LSE2 <- lm( Y ~ X + X**2)
abline( LSE2, col = "blue")
print(LSE2)
print("R2 Error:")
print(summary(LSE2)$r.squared)
