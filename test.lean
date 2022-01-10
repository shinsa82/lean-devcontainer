#eval Lean.versionString
#check Nat
#check Nat → Nat
#check λx => x + 1
#check (3,5)
#check Type 
#check List
#check Prod
#check And
#check Prop -- Prop has type Type (= Type 0)

#check List.nil
#check List.cons
#check List.map
#check List.append_nil

#check Nat.add_comm
#print Nat.add_comm

#check id
#check @id

#check @Or.elim
