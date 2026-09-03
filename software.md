---
layout: page
title: "Software"
subtitle: "General-purpose research tools, released with tests, archived with DOIs."
permalink: /software/
description: "Open-source software by Tanvir Mahmud Mahim: ramansep, kpenvelope, sqzcomb, absnoise, cavsqueeze and sparq-triage — tools for Raman analysis of 2D materials, nitride semiconductor physics, squeezed-light microcombs, superconducting thermal detectors, spin squeezing and single-photon-emitter screening, maintained under the TaN-MM-Org organization."
---

Six research tools grew out of the <a href="{{ '/research/' | relative_url }}">research projects</a>. All are maintained under the <a href="https://github.com/TaN-MM-Org" rel="noopener">TaN-MM-Org</a> organization and installable with a single <a href="https://pypi.org/" rel="noopener">pip</a> command. They share one rule: every physics claim in a release is backed by an automated test that runs publicly at every change, textbook results are reproduced by the code rather than assumed, every built-in physical constant carries a citation to its source, and each release is archived on Zenodo under its own DOI. Each package also states plainly what it does not do yet.

<section class="project">
<h3>ramansep</h3>
<p class="project-meta">Raman maps of 2D materials · separating strain from doping</p>
<p>When an atomically thin material such as MoS<sub>2</sub> is stretched, or gains extra electric charge, its Raman peaks shift — but both effects shift the same peaks, so a single measurement cannot tell them apart. ramansep untangles the two by combining peaks that respond differently, turning a Raman map into separate maps of strain and charge, each with honest error bars. It can also combine more than two peaks, and then it checks itself: it flags any pixel where strain and charge alone cannot explain the data, which no two-peak analysis can do. It ships published coefficient sets for MoS<sub>2</sub> and graphene, and its test suite reproduces the edge-charge result of the nanoribbon study on the Research page.</p>
<p><code>pip install ramansep</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/ramansep" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/ramansep/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22014913" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>kpenvelope</h3>
<p class="project-meta">Nitride semiconductors · confined holes in layered structures</p>
<p>Calculates how holes (missing electrons) behave when trapped in thin layered stacks of nitride semiconductors such as GaN and AlN — the physics behind the hole-mass study on the Research page. It solves the standard six-band quantum model of the valence bands together with the electrostatics of the trapped charge, using published, cited material parameters. Recently added: realistic finite barriers, so a neighbouring layer no longer has to be treated as an impenetrable wall — material properties can change from layer to layer, and the results are checked against exact textbook solutions.</p>
<p><code>pip install kpenvelope</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/kpenvelope" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/kpenvelope/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22015269" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>sqzcomb</h3>
<p class="project-meta">Microcombs · squeezed light · quantum noise</p>
<p>Tiny ring resonators can produce "squeezed" light — light whose noise, measured the right way, drops below the usual quantum limit, a resource for precision measurement and quantum computing. sqzcomb predicts how much squeezing a detector will actually see from such a ring, including everything that eats it along the way: losses, imperfect detectors, and how the light is extracted. It covers pairs of coupled rings, which its test suite drives past the well-known single-ring extraction limit, and it can also quantify the quantum entanglement between pairs of comb lines. Its tests reproduce textbook results to ten decimal places.</p>
<p><code>pip install sqzcomb</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/sqzcomb" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/sqzcomb/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22015375" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>absnoise</h3>
<p class="project-meta">Superconducting junctions · noise limits of thermal detectors</p>
<p>In certain superconducting devices, the current is carried by a handful of quantum levels whose occupation flickers randomly even in perfect equilibrium. absnoise computes that intrinsic flicker and what it means for using such devices as extremely sensitive thermometers and photon-energy detectors: how precisely temperature can be read, how much noise is unavoidable, and where the fundamental limits sit. It ships cited fabrication recipes for real graphene devices. It also works in reverse: given a noisy measured readout record, it recovers the hidden level occupation and the device's flip rates, with tested statistical guarantees.</p>
<p><code>pip install absnoise</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/absnoise" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/absnoise/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22048608" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>cavsqueeze</h3>
<p class="project-meta">Spin ensembles in resonators · spin squeezing</p>
<p>Simulates how an enormous number of atomic spins inside a resonator can be steered into a collectively quieter, "squeezed" state — a route to better clocks and magnetometers. Its solver's cost is set by the shape of the spin ensemble rather than its size, so 10<sup>15</sup> spins are no harder than a thousand, and it cross-checks itself against exact solutions for small ensembles and against an independent second method. Developed for <sup>171</sup>Yb<sup>3+</sup>:CaWO<sub>4</sub> crystals and applicable to any spin ensemble coupled to a resonator, it also translates its results directly into the numbers an experiment is designed against — clock stability and magnetic-field sensitivity — and exports its states into the widely used QuTiP toolbox.</p>
<p><code>pip install cavsqueeze</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/cavsqueeze" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/cavsqueeze/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22278035" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>SPARQ</h3>
<p class="project-meta">Single-photon emitters · automated screening</p>
<p>Finding a good single-photon emitter — the light source behind many quantum technologies — means measuring hundreds of candidate spots, most of them useless. SPARQ automates that screening. It simulates the standard photon-correlation measurement faithfully, analyzes real measured data with honest uncertainties, and decides on the fly how long to keep measuring each spot, stopping the moment the evidence is sufficient instead of waiting out a fixed dwell time. It also includes machine-learning agents that learn the screening strategy itself. The physics core is tested against exact references, ships literature-anchored settings for NV, hBN, GaN and SiV emitters, and lets you register your own emitter platform.</p>
<p><code>pip install sparq-triage</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/sparq-triage" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/sparq-triage/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22278041" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

## Citing the tools

Each repository carries a <code>CITATION.cff</code> file with citation metadata that GitHub renders directly, and each release has its own Zenodo DOI. If one of these tools contributes to a publication, please cite the versioned DOI you used.

## Contributing

Issues and pull requests are welcome on each repository. The contribution bar is the same as the release bar: a change that touches physics arrives with a test, and constants arrive with their source.

## Support this work

This software is developed at the Department of Electrical and Electronic Engineering, BRAC University, and released openly under the Apache-2.0 license. The <a href="{{ '/support/' | relative_url }}">Support</a> page lists every way to help, from citing the tools to a small monthly donation.

<p class="support-cta">
<a class="btn-support" href="{{ '/support/' | relative_url }}">Support this work</a>
</p>
