data {
    int N;
    real heights[N];
    vector[N] weight;
}

parameters {
   real<lower=0> sigma;
   real beta;
   real beta2;
   real alpha;
}

transformed parameters {
    vector[N] mu = alpha + beta*weight + weight.*weight*beta2;
}

model {
   sigma ~ exponential(0.067);
   heights ~ normal(mu, sigma);
   alpha ~ normal(170, 18);
   beta ~ lognormal(0, 1);
   beta2 ~ normal(0, 1);
}

generated quantities {
    real height[N];
    for (i in 1:N) {
        height[i] = normal_rng(mu[i], sigma);
    } 
}