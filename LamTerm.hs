module LamTerm where

-- | We'll represent variables names with characters.
type Sym = Char

-- |Untyped lambda terms.
data Term
        = Var Sym
        | App Term Term
        | Lam Sym Term
        deriving (Eq, Read, Show)
