generated quantities {
    int N = 50;
    int<lower=0, upper=50> y;
    real<lower=0, upper=1> p = beta_rng(2, 8);

    y = binomial_rng(N, p);

}