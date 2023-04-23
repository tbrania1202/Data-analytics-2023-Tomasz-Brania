data {
    int N;
    real n_i[N];
    int y[N];
}

parameters {
    vector[N] alpha;
    real theta;
}

model {
    alpha ~ normal(2.4, 0.15);
    theta ~ normal(0.35, 0.005);

    for (i in 1:N) {
        y[i] ~ poisson_log(alpha[i] + theta*n_i[i]);
    }
}

generated quantities {
    real y_pred[N];

    for (i in 1:N) {
        y_pred[i] = poisson_log_rng(alpha[i] + theta*n_i[i]);
    }
}