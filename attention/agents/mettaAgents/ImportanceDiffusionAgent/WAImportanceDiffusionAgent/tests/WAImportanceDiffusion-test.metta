!(register-module! ../../../../../../../metta-attention)
!(import! &self metta-attention:attention-bank:utilities:helper-functions)
!(import! &self metta-attention:attention-bank:attention-value:getter-and-setter)
!(import! &self metta-attention:attention-bank:bank:atom-bins:atombins)
!(import! &self metta-attention:attention-bank:bank:attention-bank)
!(import! &self metta-attention:attention-bank:bank:attentional-focus:attentional-focus)
!(import! &self metta-attention:attention-bank:bank:importance-index:importance-index)
!(import! &self metta-attention:attention:agents:mettaAgents:Neighbors)
!(import! &self metta-attention:attention:agents:mettaAgents:ImportanceDiffusionAgent:ImportanceDiffusionBase)
!(import! &self metta-attention:attention-bank:bank:stochastic-importance-diffusion:stochastic-importance-diffusion)

!(add-atom (attentionalFocus) (UNORDERED_LINK A B))
!(add-atom (attentionalFocus) (UNORDERED_LINK B A))
!(add-atom (attentionalFocus) (ASYMMETRIC_HEBBIAN_LINK C D))
!(add-atom (attentionalFocus) (ASYMMETRIC_HEBBIAN_LINK C F))
!(add-atom (attentionalFocus) (INHERITANCE_LINK B C))
!(add-atom (attentionalFocus) (HEBBIAN_LINK A C))
!(add-atom (attentionalFocus) (HEBBIAN_LINK G H))
!(add-atom (attentionalFocus) (HEBBIAN_LINK I J))
!(add-atom (attentionalFocus) (HEBBIAN_LINK K L))
!(add-atom (attentionalFocus) C)

!(add-atom (attentionalFocus) (HEBBIAN_LINK (HEBBIAN_LINK K L) L))
!(add-atom (attentionalFocus) (HEBBIAN_LINK G (HEBBIAN_LINK K L)))

!(setAv C (200 0.5 5))
!(setStv (ASYMMETRIC_HEBBIAN_LINK C D) (1 0.9))
!(setStv (ASYMMETRIC_HEBBIAN_LINK C F) (1 0.9))

!(WAImportanceDiffusionAgent-Run (attentionalFocus))

!(getAv D)
!(getAv F)
!(getAv C)
!(getAv (INHERITANCE_LINK B C))
!(getAv (ASYMMETRIC_HEBBIAN_LINK C D))

;;Need tests 
