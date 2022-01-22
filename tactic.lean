example (p q : Prop) : p ∧ q → q ∧ p := by
  intro h
  cases h with
  | intro hp hq => constructor; exact hq; exact hp

example (α : Type) (p q : α → Prop) : (∃ x, p x ∧ q x) → ∃ x, q x ∧ p x := by
  intro ⟨w, hpw, hqw⟩
  exact ⟨w, hqw, hpw⟩

example (p q : Nat → Prop) : (∃ x, p x) → ∃ x, p x ∨ q x := by
  intro h
  cases h with
  | intro x px => constructor; apply Or.inl; exact px  

theorem thm1 {p q: Prop}: (p ∧ q) → q := by
  intro pq; cases pq with
  | intro l r => exact r

#print thm1

theorem thm2 {p q: Prop}: (p ∧ q) → q := by
  intro pq
  cases pq 
  case intro l r => exact r
