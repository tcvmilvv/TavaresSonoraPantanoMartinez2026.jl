# Scripts

This section contains example scripts designed to demonstrate how to perform the analyses and process the molecular dynamics data described in this work. These scripts serve as templates, allowing users to reproduce the results and customize inputs to suit their specific analysis needs. Each script is organized and annotated for clarity, ensuring ease of use and reproducibility. 

## Recommended Workflow for Reproducibility 

A step-by-step workflow designed to ensure reproducibility in the molecular dynamics analysis is demonstrated here. Follow the steps below to reproduce the analysis and modify them as needed for your specific datasets or research goals. 

```julia
#
# Package environment and installation:
#
import Pkg
Pkg.update()
# Create and/or activate environment
Pkg.activate("ZIKASolvents"; shared=true) 
# Install packages with the versions used in these analyses:
Pkg.add(name="ComplexMixtures", version="2.14")
Pkg.add(name="LaTeXStrings", version="1.4")
Pkg.add(name="PDBTools", version="3.6")
Pkg.add(name="Plots", version="1.41")

# Load required packages
using ComplexMixtures
using PDBTools
using Plots
using LaTeXStrings

# Define custom elements and residues for CG simulations with SIRAH
custom_elements!(SIRAH)
custom_protein_residues!(SIRAH)

# Load the PDB file
ats = readPDB("zikv_structure.pdb")
```

## Analyses

Coordination Number of Chains K, M, and O and the WT4 Water Molecules

Example script for calculating the coordination number of chains K, M, and O with respect to the WT4 water molecules in a coarse-grained molecular dynamics simulation.

```julia
# Step 1: Define the solute, solute groups and solvent selections
solute = AtomSelection(select(ats, "chain K or chain M or chain O"),
    nmols = 1
    )

solvent = AtomSelection(select(ats, "resname WT4"), 
    natomspermol=4)

# Step 2: Load the trajectory file
trajectory = Trajectory(
    "./trajectory.xtc",
    solute,
    solvent
    )

# Step 3: Set options for coordination number calculation
options = Options(bulk_range=(8.0, 12.0))

# Step 4: Calculate the coordination number
r = coordination_number(trajectory, options)

# Step 5: Save the results as a JSON file
save("./kmo_wt4.json", r)
```

## Coordination Number of Groups (K, M, and O) and Sodium Ions

Example script for calculating the coordination number of chains K, M, and O divided into groups with respect to the solvent (sodium ions) in a coarse-grained molecular dynamics simulation.

```julia
# Step 1: Define the solute, solute groups and solvent selections
protein = select(ats, "chain K or chain M or chain O")

solute = AtomSelection(protein,
    nmols = 1,
    group_atom_indices = [
        findall(Select("chain K"), ats),
        findall(Select("chain M"), ats),
        findall(Select("chain O"), ats),
    ],
    group_names = [ "K", "M", "O" ]
  )
solvent = AtomSelection(select(ats, "resname NaW"), 
    natomspermol=4)

# Step 2: Load the trajectory file
trajectory = Trajectory(
    "./trajectory.xtc",
    solute,
    solvent
)

# Step 3: Set options for coordination number calculation
options = Options(bulk_range=(8.0, 12.0))

# Step 4: Calculate the coordination number
r = coordination_number(trajectory, options)

# Step 5: Save the results as a JSON file
save("./kmo_groups_naw.json", r)
```

## Residue Contributions of chain K

Example script for calculating the residue contributions of chains K with respect to the WT4 water molecules in a coarse-grained molecular dynamics simulation.

```julia
# Step 1: Load the Coordination Number JSON file
r = load("./kmo_wt4.json")

# Step 2: Select residues from chain K, segment S1
chaink = select(ats, "chain K and segname S1")

# Step 3: Calculate the initial residue contributions for segment S1
rc = ResidueContributions(r, chaink; dmin=3, dmax=8, type=:coordination_number)

# Step 4: Loop through segments S2 to S60 and compute total residue contributions
for iseg in 2:60
    # Select residues for the current chain
    chain_selection = select(ats, "chain K and segname S$iseg")
    
    # Calculate the residue contributions for the current chain
    rc_i = ResidueContributions(r, chain_selection; dmin=3, dmax=8, type=:coordination_number)
    
    # Sum up the contributions
    rc += rc_i
end

# Step 5: Average the residue contributions over all chains K
rc = rc/60

# Step 6: Save the contributions per residue as a JSON file
save("./rc_k_wt4", rc)
```