# Examples inspired by David Foster Wallace's # (2/21/1962 to 9/12/2008) _Infinite Jest_

DON_G = { name:  "Don Gately", occupation: "Live-in Staff" }
JOELLE_VD = { name:  "Joelle van Dyne", occupation: "Radio Personality" }
PAT_M =  { name:  "Pat Monteseian", occupation: "Staff" }
KATE_G = { name:  "Kate Gompert", occupation: "None" }
BRUCE_G = { name:  "Bruce Green", occupation: "Fan of Mildred" }

#Build an AoH using the  above constants
def assembled_aoh
[DON_G, JOELLE_VD, PAT_M, KATE_G, BRUCE_G]
end

#Build an Aoh using the  above constants via literal syntax
#Remember to use $ with global variables
def literal_aoh
[
  $DON_G = { name:  "Don Gately", occupation: "Live-in Staff" },
$JOELLE_VD = { name:  "Joelle van Dyne", occupation: "Radio Personality" },
$PAT_M =  { name:  "Pat Monteseian", occupation: "Staff" },
$KATE_G = { name:  "Kate Gompert", occupation: "None" },
$BRUCE_G = { name:  "Bruce Green", occupation: "Fan of Mildred" }
  ]
end

#Return the value at the given co-ords (row & key)
def aoh_lookup(aoh, row, key)
  aoh[row][key]
end

#Update the value at the given co-ords (row & key)
#Return the updated AoH
def aoh_update(aoh, row, key, new_value)
aoh[row][key] = new_value
aoh
end
