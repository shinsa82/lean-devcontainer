variable (A B : Prop) -- "variables" cannot be used in Lean 4?

-- example : A ∧ ¬ B → ¬ B ∧ A :=
--   have h : (A ∧ ¬ B)
--   show ¬ B ∧ A from and.intro (and.right h) (and.left h)

-- show <prop> from <term>
-- suffices <var>:<prop>

#check fun (hp : A) (hq : B) => And.intro hp hq

-- Prop combinators
#check False
#print False
#check True
#print True
#check And
#print And
#check Or
#check Not
#print Not
-- No "Implies": "→" is a primitive combinator

-- Term combinators
#check @And.intro
#check @And.left
#check @And.right

#check @Or.intro_left
#check @Or.intro_right
#check @Or.inl -- shorthand for "intro_left _"
#check @Or.inr -- shorthand for "intro_right _"
