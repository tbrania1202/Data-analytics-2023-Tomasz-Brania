generated quantities {
    real alpha = normal_rng(2.4, 0.15);
    real theta = normal_rng(0.35, 0.005);
    real n = normal_rng(2, 0.01);
    real lambda = exp(alpha + theta*n);

    int y = poisson_rng(lambda);
}