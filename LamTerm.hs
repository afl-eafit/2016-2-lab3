module LamTerm where

-- | We represent variables names with characters.
type Sym = Char

-- | Untyped λ-terms.
data Term
  = Var Sym
  | App Term Term
  | Lam Sym Term
  deriving (Eq, Read, Show)
