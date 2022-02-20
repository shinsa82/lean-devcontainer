namespace any

class Add (a : Type) where
  add : a -> a -> a

#check @Add.add
-- Add.add : {a : Type} → [self : Add a] → a → a → a
#reduce 3+4
#eval 3+4
end any

#print HAdd
#check Int.ofNat
#reduce 1+2
#eval 1+2

section
  set_option pp.explicit true
  set_option pp.universes true
  set_option pp.notation false

  #print HAdd
  #check @instHAdd
  #check instAddNat
  #check 2 + 2 = 4
  #reduce (fun x => x + 2) = (fun x => x + 3)
  #check (fun x => x + 1) 1
end
