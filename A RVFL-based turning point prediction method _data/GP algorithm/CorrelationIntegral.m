function Cm_N_r_t = correlationintegral(m,x,r,tau)
N = length(x);
M = N-(m-1);
X = zeros(M,m);
for j = 1:1:M
    X(j,:) = x(j:1:j+(m-1));
end
sita_sum = 0;
for j = 1:1:M
    for i = j+1:1:M
        d = norm(X(i,:)-X(j,:),inf);
        if r-d<0
            sita = 0;
        else
            sita = 1;
        end
        sita_sum = sita_sum+sita;
    end
end
Cm_N_r_t = 2/(M*(M-1))*sita_sum;
