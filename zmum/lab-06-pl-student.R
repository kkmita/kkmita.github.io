#http://www.milbo.org/doc/earth-notes.pdf
#posit.cloud

hinge_r = function(x,t){
  pmax(0,x-t)
}

hinge_l = function(x,t){
  pmax(0,-(x-t))
}

xs = seq(0, 5, length.out=100)

plot(xs, unlist(lapply(xs, hinge_r, t=2.5)))
plot(xs, unlist(lapply(xs, hinge_l, t=2.5)))

simulate.data <- function(sim) {
  if(sim=="1"){
    # Example 1:
    n = 1000
    p = 50
    X = matrix(0,ncol=p,nrow=n)
    for(j in 2:p) X[,j] = rnorm(n)
    X[,1] = runif(n,0,4)
    y = sqrt(X[,1])  + rnorm(n,sd=0.1)
  }
  if(sim=="2"){
    # Example 2:
    n = 1000
    p = 50
    X = matrix(0,ncol=p,nrow=n)
    for(j in 1:p) X[,j] = rnorm(n)
    y = X[,1]^2  + rnorm(n,sd=0.1)
  }
  if(sim=="3"){
    #Example 3:
    n = 1000
    p = 50
    X = matrix(0,ncol=p,nrow=n)
    for(j in 1:p) X[,j] = rnorm(n)
    #X[,1] = hinge_r(X[,1],0)
    #X[,2] = hinge_r(X[,1],1)
    #y = X[,1] + X[,2]  + rnorm(n,sd=0.1)
    y = hinge_r(X[,1],0) + hinge_r(X[,1],1) + rnorm(n, sd=0.1)
  }

  if(sim=="4"){
    #Example 4:
    n = 1000
    p = 50
    X = matrix(0,ncol=p,nrow=n)
    for(j in 1:p) X[,j] = rnorm(n)
    y = sin(X[,1])  + rnorm(n,sd=0.1)
  }
  if(sim=="5"){
    #Example 5:
    n = 1000
    p = 50
    X = matrix(0,ncol=p,nrow=n)
    for(j in 2:p) X[,j] = rnorm(n)
    X[,1]=sort(rnorm(n))
    y = ifelse(X[,1]<0,1,0)
  }
  if(sim=="6"){
    #Example 3:
    n = 1000
    p = 50
    X = matrix(0,ncol=p,nrow=n)
    for(j in 1:p) X[,j] = rnorm(n)
    #X[,1] = hinge_r(X[,1],0)
    #X[,2] = hinge_r(X[,1],1)
    #y = X[,1] + X[,2]  + rnorm(n,sd=0.1)
    y = hinge_r(X[,1],0) * X[,2] + rnorm(n, sd=0.1)
  }

  return(data.frame(X, y))
}

df = simulate.data("1")

model = earth(y~.,data=df, degree=2 ,trace=3 ,penalty=0, minspan=0)

summary(model)

dfm = df
dfm["yhat"] <- model$fitted.values
dfm <- dfm[order(dfm$X1),]

plot(dfm$X1, dfm$y)
lines(dfm$X1, dfm$yhat, type="l", col="red", lwd="2")
