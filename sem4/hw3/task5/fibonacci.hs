fibonacci :: Integer -> Integer
fibonacci n = helper (0, 1) n where
    helper (acc1, acc2) n | n > 0 = helper (acc2, acc1 + acc2) (n - 1)
                          | n < 0 = helper (acc2 - acc1, acc1) (n + 1)
                          | otherwise =  acc1
