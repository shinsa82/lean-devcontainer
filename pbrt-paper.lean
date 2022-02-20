example (A B C: Prop): (A → B → C) ↔ (A ∧ B → C) := by
  intros;
  constructor;
  {
    intros p1 p2;
    apply p1;
    exact p2.left;
    exact p2.right
  }
  {
    intros p1 pa pb;
    exact p1 ⟨pa, pb⟩
  }
