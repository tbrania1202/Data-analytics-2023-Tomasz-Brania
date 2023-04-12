data {
   int N;
   real heights[N];
}

parameters {
   real<lower=0> mu;
   real<lower=0> sigma;
}

model {
   mu ~ normal(170, 18);
   sigma ~ exponential(0.067); # 1/15
   heights ~ normal(mu, sigma);
}

generated quantities {
   real height = normal_rng(mu, sigma);
}