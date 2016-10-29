module Examples where

import LamTerm

-- | This is the λ-term (λx.λy.x)(λz.z).
t1 :: Term
t1 = App (Lam 'x' $ Lam 'y' $ Var 'x') (Lam 'z' $ Var 'z')

-- | This is the λ-term (λy.z)(λy.x).
t2 :: Term
t2 = App (Lam 'y' $ Var 'z') (Lam 'y' $ Var 'x')

-- | This is the λ-term (λu.w)(λu.v).
t3 :: Term
t3 = App (Lam 'u' $ Var 'w') (Lam 'u' $ Var 'v')
