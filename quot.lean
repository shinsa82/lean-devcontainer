#check refl
#check (.=.)
#print (.=.)
-- #print (.=.)
#check (.==.)

#check Eq.refl
#check @Eq.refl
#check Eq.refl 5
#check @Eq.symm
#check @Eq.trans
#check @Eq.subst

#print Eq

def mod7Rel (x y : Nat) : Prop :=
  x % 7 = y % 7

#check mod7Rel

theorem thm_1: mod7Rel 3 10 := rfl
#print thm_1

/- Example of an equality proof -/
example: 5=3+2 := Eq.refl   -- error: missing argument a for "a = a"
example: 5=3+2 := Eq.refl 5 -- concrete value for a 
example: 5=3+2 := Eq.refl _ -- auto unification for a; in order to prove 5=5, a should be obviously 5.

example: 5=3+2 := rfl       -- notification
#check rfl
#print rfl

section
  variable (α : Type)
  variable (a b : α)
  variable (f g : α → Nat)
  variable (h₁ : a = b)
  variable (h₂ : f = g)

  example : f a = f b := congrArg f h₁
  example : f a = g a := congrFun h₂ a
  example : f a = g b := congr h₂ h₁
end

#print id
#check Nat
#check @congr
#check @congrArg
#check congrArg id (Eq.refl 5)
#check @congrFun
