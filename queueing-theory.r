m = 6 # number of servers
lambda = 72 # arrival rate
mu = 17 # service rate

# efficiency
p = lambda / (m * mu)

# zero customer in the system
i = c(0:(m-1))
first = sum( (m * p) ^ i / factorial(i) )
p_0 = 1 / ( first + (m * p) ^ m / ( factorial(m) * (1-p) ) )

# n customer in the system
p_n = function(p_0, m, p, n){
  if( n <= m){ return( p_0 * ( (m*p)^n / factorial(n)) ) }
  else return( p_0 * ( m^m * p^n) / factorial(m) )
}

p_n(p_0, m, p, 4)

# the mean number of customers waiting in queue
L_q = p_0 * ( ((m^m) * p^(m+1)) / (factorial(m) * (1-p)^2) )

# Mean time customers spend in queue
W_q = L_q / lambda

# Mean time customers spend in the system
W = W_q + 1 / mu

# Mean number of customers in system
L = L_q + lambda / mu
