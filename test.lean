#eval Lean.versionString
#check Nat
#check Nat → Nat
#check λx => x + 1
#check (3,5)
#check Type 
#check List
#check Prod
#check And

#check List.nil
#check List.cons
#check List.map
#check List.append_nil

#check Nat.add_comm
#print Nat.add_comm

#check id
#check @id

#check @Or.elim

#check funext
#check @funext
#print funext

#check @Eq.recOn

-- Type hierarchy
-- Sort 0 = Prop < Sort 1 = Type = Type 0 < Sort 2 = Type 1
#check Prop -- Prop has type Type (= Type 0)
#check Type
#check Type 1
#check Sort 0 -- Sort 0 = Prop
#check Sort 1 -- Sort 1 = Type = Type 0

#check Prop → Prop
#check Type → Type
