data {
    int N;
}
transformed data {
    real intercept = 161.0;
    real age10 = 0.26;
    real interceptse = 7.3;
    real age10se = 16.0;
    int v = 73;
}
generated quantities {
    matrix[N, v] y_sim;
    
    for (i in 1:N) {
        for(ii in 18:90) {
            real ageco = age10 * ii;
            real ise = normal_rng(0, interceptse);
            real agese = normal_rng(0, age10se);
            y_sim[i, ii - 17] = intercept + ise + ageco + agese;
        }
    }
}
