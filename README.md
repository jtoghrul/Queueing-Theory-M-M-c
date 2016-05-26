# Queueing-Theory-M-M-c

I will try to explain some basics of Queueing Theory and how to implement M/M/c in R.

Queueing theory –  is the mathematical study of waiting lines, or queues. 

**Kendall**’s notation to describe a queueing system: A / B / m / K / n / D

* A - distribution function of the interarrival times;
* B - distribution function of the service times;
* m - number of servers;
* K - capacity of the system, the maximum number of customers in the system including the one being serviced;
* n - population size, number of sources of customers;
* D - service discipline (FIFO, LIFO, RS – Random Service, Priority, etc.).

We look at M/M/c with FIFO service discipline with:

* Arrival rate – Poisson distribution;
* Service rate – Exponential distribution;


Time rate is important in QT. Time units could be : second, minute, hour, day, etc.

Parameters:

* **m** – number of servers;  
* **lambda** – arrival rate / time unit;  
* **mu** – service rate / time unit;  

Queueing Theory can asnwer following questions:

* Efficiency of each server (p);
* Probability of zero or n customer in the system (p_0, p_n);
* The mean number of customers waiting in queue (L_q);
* Mean time customers spend in queue (W_q);
* Mean time customers spend in system (W);
* Mean number of customers in system (L).

