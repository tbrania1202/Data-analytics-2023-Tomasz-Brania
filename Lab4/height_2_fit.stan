data {
    int N;
    real heights[N];
    // real weight[N];
    vector[N] weight;
}

parameters {
   real<lower=0> sigma;
   real beta;
   real alpha;
}

transformed parameters {
//    for (i in 1:N) {
//          real mu[i] = alpha + beta*weight[i];
//    }
    vector[N] mu = alpha + beta*weight;
}

model {
   sigma ~ exponential(0.067);
   heights ~ normal(mu, sigma);
   alpha ~ normal(170, 18);
   beta ~ lognormal(0, 1);
}

generated quantities {
    real height[N];
    for (i in 1:N) {
        height[i] = normal_rng(mu[i], sigma);
    } 
}