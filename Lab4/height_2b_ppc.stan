data {
    int N;
    real weight[N];
}

generated quantities {
    real alpha = normal_rng(170, 18);
    real sigma = exponential_rng(0.067);
    real beta = lognormal_rng(0, 1); # 1/15
    real height[N];
    for (i in 1:N) {
        height[i] = normal_rng(alpha + beta*weight[i], sigma);
    } 
}