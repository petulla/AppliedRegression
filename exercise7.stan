transformed data {
    real theta = 0.5;
    int N = 250;
}
generated quantities {
    vector[N] y_sim;
    for(i in 1:N) {
        y_sim[i] = binomial_rng(1, theta);
    }
}
