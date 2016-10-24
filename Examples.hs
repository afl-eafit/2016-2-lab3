module Examples where

import LamTerm

--This is the λ-term (λx.λy.x)(λz.z)

t1 :: Term
t1 = App (Lam 'x' $ Lam 'y' $ Var 'x') (Lam 'z' $ Var 'z')
