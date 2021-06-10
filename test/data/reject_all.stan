parameters {
  real A;
}
model {
  A ~ normal(0,1);
  if(1<A)reject("to put some message to stderr");
}
