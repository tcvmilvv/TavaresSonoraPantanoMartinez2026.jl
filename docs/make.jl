using Documenter
using TavaresSonoraPantanoMartinez2026

makedocs(
    sitename = "TavaresSonoraPantanoMartinez2026",
    format = Documenter.HTML(),
    modules = [TavaresSonoraPantanoMartinez2026],
    pages = [
        "Home" => "index.md",
        "Supplementary Figures" => "figures.md",
        "Scripts" => "scripts.md",
]
)

deploydocs(
    repo = "github.com/tcvmilvv/TavaresSonoraPantanoMartinez2026.jl"
)
