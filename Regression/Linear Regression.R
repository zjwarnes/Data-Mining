

linearRegression <- function(X1, X2, X3){
    B0 <- 50
    B1 <- 20
    B2 <- 0.07
    B3 <- 35
    B4 <- 0.01
    B5 <- -10

    Y <- B0 + B1 * X1 + B2 * X2 + B3 * X3 + B4 * (X1 * X2) + B5 * (X1 * X3)
}
GPA = 4.0
IQ = 110
GENDER = 1
print( linearRegression( GPA, IQ, GENDER))
GPA = 4.0
IQ = 110
GENDER = 0
print( linearRegression( GPA, IQ, GENDER))


GPA = 2
IQ = 110
GENDER = 1
print( linearRegression( GPA, IQ, GENDER))
GPA = 2
IQ = 110
GENDER = 0
print( linearRegression( GPA, IQ, GENDER))