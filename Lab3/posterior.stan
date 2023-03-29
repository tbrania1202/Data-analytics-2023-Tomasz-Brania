data {
    int N;
    int<lower=0, upper=N> y;
}

parameters{
    real<lower=0, upper=1> p;
}

model {
    p ~ beta(2, 8);
    y ~ binomial(N, p);
}

generated quantities {
   int y_pred = binomial_rng(N, p);
}