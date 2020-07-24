data {
    int N;
}
transformed data {
    real theta = 0.25;
}
generated quantities {
    vector[N] y_sim;
    for(i in 1:N) {
        y_sim[i] = binomial_rng(N - i, theta) + i;
    }
}
