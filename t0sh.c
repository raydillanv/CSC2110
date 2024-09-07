// CSC 2110, Computer Organization
// Tutorial 0: The Raspberry Pi
// by William H. Hooper

// Make this fit for permutation

// perm(n, k) returns the number of permutations
//(ways to arrange in order) k items from n total, where 0 <= k <= n.
// perm(n, k) = 1     if k == 0,
//            = n * perm(n - 1, k - 1)     otherwise.

long int perm(long int n, long int k)
{

    if (k == 0)
        return 1;
    else
        return n * perm(n - 1, k - 1);
}
