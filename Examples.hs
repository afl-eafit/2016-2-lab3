module Examples where

import LamTerm

-- | This is the λ-term (λx.λy.x)(λz.z).
t1 :: Term
t1 = App (Lam 'x' $ Lam 'y' $ Var 'x') (Lam 'z' $ Var 'z')

-- | This is the λ-term λxy.x(xy).
t2 :: Term
t2 = Lam 'x' $ Lam 'y' $ App (Var 'x') (App (Var 'x') (Var 'y'))

-- | This is the λ-term λuv.u(uv).
t3 :: Term
t3 = Lam 'u' $ Lam 'y' $ App (Var 'u') (App (Var 'u') (Var 'y'))
