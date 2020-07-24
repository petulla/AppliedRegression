
parameters {
  real alpha;  //  treatment
  real beta;  // control
}
model {
  250 ~ binomial_logit(500, alpha);
  200 ~ binomial_logit(500, beta);
}
generated quantities {
  real delta = alpha - beta;
}
    