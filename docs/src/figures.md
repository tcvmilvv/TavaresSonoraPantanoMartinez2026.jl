# Supplementary Figures

This Supplementary Information provides an extended set of figures, and data visualizations  that support and expand upon the findings presented in the primary text. The materials compiled here include additional structural characterizations, time-resolved metrics, comparative plots across simulation conditions, and detailed depiction of interaction patterns that were referenced but not shown in full within the main article.

## Overview of Hydration Hotspots Over Time
```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures1.png" style="width:80%">
  <figcaption>Figure S1. Surface-projected solvent-accessible surface area (SASA) per residue for the Zika virus E protein. The color scale represents the magnitude of SASA, with darker regions indicating higher solvent exposure. Protein contours are overlaid to delineate the projected topology of the E protein on the viral surface.</figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures2.gif" style="width:80%">
  <figcaption>Figure S2. Time-resolved surface-projected coordination number of WT4 water molecules around residues of the Zika virus E protein. The animation covers the entire simulation trajectory, divided into 100 consecutive time windows of 20 ns each. Color intensity indicates the local WT4 coordination number. </figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures3.gif" style="width:80%">
  <figcaption>Figure S3. Dynamic mapping of WT4 water coordination on the surface of the Zika virus M protein throughout the simulation. The animation depicts the evolution of local hydration environments over 100 successive 20 ns intervals, revealing a heterogeneous and time-dependent distribution of WT4 molecules.</figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures4.gif" style="width:80%">
  <figcaption>Figure S4. Time-resolved visualization of sodium ions coordination patterns on the E protein surface of the Zika virus.</figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures5.gif" style="width:80%">
  <figcaption>Figure S5. Spatial and temporal dynamics of chloride ions interacting with the Zika virus E protein.</figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures6.gif" style="width:80%">
  <figcaption>Figure S6. Evolution of sodium ions coordination across the ZIKV M protein surface.</figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures7.gif" style="width:80%">
  <figcaption>Figure S7. Fluctuating anionic profiles (Cl-) of the M protein in Zika virus simulations.</figcaption>
</figure>
```

## Specificities per Residue


```@raw html
<style>
/* Container escurecido */
.img-zoom-overlay {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  background: rgba(0,0,0,0.85);
  justify-content: center;
  align-items: center;
  z-index: 9999;
}

/* Imagem ampliada */
.img-zoom-overlay img {
  max-width: 90%;
  max-height: 90%;
  border-radius: 6px;
}
</style>

<script>
function openZoom(src) {
  const overlay = document.getElementById("imgZoomOverlay");
  const zoomImg = document.getElementById("imgZoomLarge");
  zoomImg.src = src;
  overlay.style.display = "flex";
}

function closeZoom() {
  document.getElementById("imgZoomOverlay").style.display = "none";
}
</script>

<div id="imgZoomOverlay" class="img-zoom-overlay" onclick="closeZoom()">
  <img id="imgZoomLarge" src="">
</div>

<figure style="text-align: center; cursor: zoom-in;">
  <img src="../figures/figures8.png" style="width:60%;" onclick="openZoom(this.src)">
  <figcaption>Figure S8. DSSP-based depiction of the envelope protein illustrating its secondary-structure elements together with the residue-specific SASA.</figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures9.png" style="width:130%">
  <figcaption>Figure S9. Sequence-based DSSP map of chain M showing secondary-structure elements alongside the per-residue contribution of WT4 water molecules within 5 Å.</figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures10.png" style="width:80%">
  <figcaption>Figure S10. DSSP-derived linear representation of chain N annotated with residue-specific contributions of WT4 molecules detected within 5 Å.</figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures11.png" style="width:130%">
  <figcaption>Figure S11. Secondary-structure profile of chain O generated via DSSP, coupled with residue-level quantification of WT4 coordination (cutoff 5 Å).</figcaption>
</figure>
```

```@raw html
<figure style="text-align: center;">
  <img src="../figures/figures12.png" style="width:80%">
  <figcaption>Figure S12. DSSP sequence diagram for chain P integrating secondary structure and the spatial contribution of WT4 water molecules at a 5 Å threshold.</figcaption>
</figure>
```