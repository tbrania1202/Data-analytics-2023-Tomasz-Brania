generated quantities {
    int N = 50;
    int<lower=0, upper=50> y;
    real<lower=0, upper=1> p = normal_rng(0, 1);

    y = binomial_rng(N, p);

}