generated quantities {
    real mu = normal_rng(170, 18);
    real sigma = exponential_rng(0.067); # 1/15
    real height = normal_rng(mu, sigma);
}