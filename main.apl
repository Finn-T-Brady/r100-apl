ind←{⍵,(1+⍵),(2+⍵)}⋄rules ←2 2 2⍴0 1 1 1 0 1 1 0⋄calc←{(1+⍺[ind ⍵])⌷rules}⋄parse ← {(⍵{(0 0,⍺,0 0)calc ⍵}⊢)¨⍳(2+≢⍵)}⋄r110 ← {⍪{parse⍣⍵ ⊢ 1}¨⍳⍵}⌈⋄rule110 ← {⍪(⍵{{' ',⍵}⍣(⍺-⍵) ⊢ ' ■'[1+(parse⍣⍵ ⊢ 1)]}¨¯1+⍳(1+⍵))}