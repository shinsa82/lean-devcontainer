variable (A B : Prop) -- "variables" cannot be used in Lean 4?

example : A ∧ ¬ B → ¬ B ∧ A :=
  assume h : A ∧ ¬ B,
  and.intro (and.right h) (and.left h)
