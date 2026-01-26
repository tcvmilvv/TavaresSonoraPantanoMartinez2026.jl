# Supplementary Information of _Mapping the Microenvironment in Zika Virus Dynamics_

```@raw html
Camila Assis <b>Tavares</b><sup>1,2</sup>, Martín <b>Soñora</b><sup>3</sup>, Sergio <b>Pantano</b><sup>3</sup>, Leandro <b>Martínez</b><sup>1,2</sup> <br>
```

```@raw html
<span style="font-size:0.8em">
<sup>1</sup> Institute of Chemistry, Universidade Estadual de Campinas (UNICAMP), Campinas, SP, Brazil <br>
<sup>2</sup> Center for Computational Engineering & Science, Universidade Estadual de Campinas (UNICAMP), Campinas, SP, Brazil <br>
<sup>3</sup> Biomolecular Simulations Group, Institut Pasteur de Montevideo, Mataojo 2020, Montevideo, Uruguay<br>
</span>
<br>
```

_Corresponding author:_ [lmartine@unicamp.br](mailto:lmartine@unicamp.br)

## Overview
![](assets/GA.png)

This repository hosts the supplementary material for the study *Mapping the Microenvironment in Zika Virus Dynamics*. The study examines how water molecules and ions are spatially organized within the Zika virus at atomic resolution. Coarse-grained molecular dynamics simulations, analyzed with the **[ComplexMixtures.jl](https://github.com/m3g/ComplexMixtures.jl)** framework, were employed to map these distributions across the viral structure, highlighting localized preferences and differential interactions with the surrounding molecular components.

## Dependencies
This work was developed using the following software and packages:

- **Julia 1.11.2:** Programming language.
- **ComplexMixtures v2.10.1:** For light-material distribution analysis.
- **LaTeXStrings v1.4.0:** For incorporating LaTeX-style formatting in plot labbels and annotations. 
- **PDBTools v2.1.2:** For handling and analyzing PDB files.
- **Plots v1.40.9:** For generating high-quality visualizations.

### Installation
The dependencies can be installed in Julia using:
```julia
using Pkg
Pkg.add([
    "ComplexMixtures",
    "LaTeXStrings",
    "PDBTools",
    "Plots"
])
```
!!! warning "Compatibility"
    Ensure that you are using **Julia 1.11.2** for compatibility with the packages and scipts in the repository.

### Funding
The authors acknowledge the financial support of Fapesp (2018/24293-0, 2023/14353-4). Research developed with the help of Coaraci Supercomputer (2019/17874-0).

## References
[**[1]** L. Martínez, **ComplexMixtures.jl: Investigating the structure solutions of complex-shaped molecules from a  solvent-shell perspective**. _J. Mol. Liq_. 347, 117945, 2022.](https://doi.org/10.1016/j.molliq.2021.117945)


[**[2]** L. Martínez, S. Shimizu, **Molecular interpretation of preferential interactions in protein solvation: a solvent-shell perspective by means of minimum distribution functions**. _J. Chem. Theor. Comp_. 13, 6358-6372, 2017.](https://pubs.acs.org/doi/abs/10.1021/acs.jctc.7b00599)

## Additional Resources
For additional resources and publications related to the scope of this paper, please visit the [**M3G Website**](http://m3g.iqm.unicamp.br).


```@raw html
<a href="http://m3g.iqm.unicamp.br">
    <img align="left" src="assets/m3g.svg" width="60" style="margin-right: 10px;">
</a>
```

 _This work was carried out by the **M3G Group** at Unicamp in collaboration with the **Biomolecular Simulations Group** at the Institut Pasteur de Montevideo._