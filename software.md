---
layout: page
title: "Software"
subtitle: "General-purpose research tools, released with tests, archived with DOIs."
permalink: /software/
description: "Open-source software by Tanvir Mahmud Mahim: ramansep, kpenvelope, sqzcomb, absnoise, cavsqueeze, sparq-triage, hamop, fabtwin, vacspin, labplan, fracpll and lockkernel: tools for Raman analysis of 2D materials, nitride semiconductor physics, squeezed-light microcombs, superconducting thermal detectors, spin squeezing, single-photon-emitter screening, materials modelling, yield-aware photonic design, colour-centre spin-photon interfaces, measurement planning, fractional-N frequency-synthesizer design and synchronization transitions, maintained under the TaN-MM-Org organization."
---

Twelve research tools grew out of the <a href="{{ '/research/' | relative_url }}">research projects</a>. All are maintained under the <a href="https://github.com/TaN-MM-Org" rel="noopener">TaN-MM-Org</a> organization and installable with a single <a href="https://pypi.org/" rel="noopener">pip</a> command. They follow the same rules. The main results of each release are checked by automated tests that run publicly on every change, against textbook formulas, published results or a second, independent calculation. Built-in physical constants and parameter sets carry a citation to their source. Each release is archived on Zenodo under its own DOI. And each package says plainly what it does not do.

Every package also works with a lab's own measurements. Most can plan a measurement before it is taken (which settings to measure, and how many repeats a target error bar will cost) and then fit the measured data with honest error bars, stopping with an explanation when the data cannot answer the question asked. One of the tools, labplan, is that planning-and-fitting layer on its own, for any model you can write as a Python function.

In September 2026 the documentation of every tool was rewritten in plain language, with worked examples whose printed output is checked by actually running them. Checking each document line by line against its code also turned up real bugs. They are fixed, each with a new test, in a patch release of every tool; the release notes and changelogs list each one.

<section class="project">
<h3>ramansep</h3>
<p class="project-meta">Raman maps of 2D materials · separating strain from doping</p>
<p>When an atomically thin material such as MoS<sub>2</sub> is stretched, or gains extra electric charge, its Raman peaks shift. But both effects shift the same peaks, so a single measurement cannot tell them apart. ramansep untangles the two by combining peaks that respond differently, turning a Raman map into separate maps of strain and charge, each with honest error bars. It can also combine more than two peaks, and then it checks itself: it flags any pixel where strain and charge alone cannot explain the data, which no two-peak analysis can do. It ships published coefficient sets for MoS<sub>2</sub> and graphene, and its test suite reproduces the edge-charge result of the nanoribbon study on the Research page. Latest release (0.11.1): mistakes in the analysis settings are now reported straight away, instead of showing up as a map full of failed pixels, and impossible calibration inputs are refused.</p>
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
<p>Calculates how holes (missing electrons) behave when trapped in thin layered stacks of nitride semiconductors such as GaN and AlN, the physics behind the hole-mass study on the Research page. It solves the standard six-band quantum model of the valence bands together with the electrostatics of the trapped charge, using published, cited material parameters. Recently added: realistic finite barriers, so a neighbouring layer no longer has to be treated as an impenetrable wall: material properties can change from layer to layer, and the results are checked against exact textbook solutions. Latest release (0.11.1): two inputs that used to crash or return a meaningless answer are now refused with a clear message.</p>
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
<p>Tiny ring resonators can produce "squeezed" light: light whose noise, measured the right way, drops below the usual quantum limit, a resource for precision measurement and quantum computing. sqzcomb predicts how much squeezing a detector will actually see from such a ring, including everything that eats it along the way: losses, imperfect detectors, and how the light is extracted. It covers pairs of coupled rings, which its test suite drives past the well-known single-ring extraction limit, and it can also quantify the quantum entanglement between pairs of comb lines. Its tests check it against textbook formulas. Latest release (0.12.1): measurement planning now also works for a perfectly efficient detector, where it used to fail.</p>
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
<p>In certain superconducting devices, the current is carried by a handful of quantum levels whose occupation flickers randomly even in perfect equilibrium. absnoise computes that intrinsic flicker and what it means for using such devices as extremely sensitive thermometers and photon-energy detectors: how precisely temperature can be read, how much noise is unavoidable, and where the fundamental limits sit. It ships junction recipes taken from published devices. It also works in reverse: given a noisy measured readout record, it recovers the hidden level occupation and the device's flip rates, and these estimates are tested on simulated records. Latest release (0.10.1): fixes a crash on older NumPy versions, one noise calculation that used the wrong operating point, and a failure for perfectly clean contacts.</p>
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
<p>Simulates how an enormous number of atomic spins inside a resonator can be steered into a collectively quieter, "squeezed" state, a route to better clocks and magnetometers. Its solver's cost is set by the shape of the spin ensemble rather than its size (its documentation works an example with 10<sup>15</sup> spins), and it cross-checks itself against exact solutions for small ensembles and against an independent second method. Developed for <sup>171</sup>Yb<sup>3+</sup>:CaWO<sub>4</sub> crystals and applicable to any spin ensemble coupled to a resonator, it also translates its results directly into the numbers an experiment is designed against (clock stability and magnetic-field sensitivity), and exports its states into the widely used QuTiP toolbox. Latest release (1.15.1): fixes the sign of one reported spin component in the second, trajectory-based method; the squeezing results were not affected.</p>
<p><code>pip install cavsqueeze</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/cavsqueeze" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/cavsqueeze/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22278034" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>SPARQ</h3>
<p class="project-meta">Single-photon emitters · automated screening</p>
<p>Finding a good single-photon emitter (the light source behind many quantum technologies) means measuring hundreds of candidate spots, most of them useless. SPARQ automates that screening. It simulates the standard photon-correlation measurement faithfully, analyzes real measured data with honest uncertainties, and decides on the fly how long to keep measuring each spot, stopping the moment the evidence is sufficient instead of waiting out a fixed dwell time. It also includes machine-learning agents that learn the screening strategy itself. The physics core is tested against exact reference calculations. It ships built-in parameter ranges for four kinds of emitter (NV and SiV centres in diamond, and emitters in hBN and GaN) and lets you add your own. Latest release (0.9.1): unsorted time stamps, histograms coarser than the analysis grid, and one malformed kind of data file used to give wrong answers without any warning; all three are now refused.</p>
<p><code>pip install sparq-triage</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/sparq-triage" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/sparq-triage/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22278040" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>vacspin</h3>
<p class="project-meta">Diamond colour centres · spin-photon interfaces</p>
<p>Certain atomic-scale defects in diamond, such as the silicon-vacancy, germanium-vacancy and tin-vacancy centres, act as tiny quantum memories that talk to light, which makes them building blocks for quantum networks. vacspin computes how such a centre behaves in a real, imperfect sample: how strain in the crystal and applied magnetic fields shift its energy levels, how cleanly it can be read out in a single shot, and how the fluorescence budget splits between its optical transitions. Every built-in parameter set carries its source. The tin-vacancy set uses the device values of a published experiment; for the silicon- and germanium-vacancy centres only the measured energy splittings are built in, and sample-specific values such as strain are left for you to fit from your own data. The lead-vacancy centre is documented but not shipped, because its parameters are not yet fully measured. Latest release (0.3.1): fixes a reported light-matter coupling rate that was about 2.5 times too large (the Purcell factors and efficiencies were not affected), and refuses invalid readout inputs.</p>
<p><code>pip install vacspin</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/vacspin" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/vacspin/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22819698" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>hamop</h3>
<p class="project-meta">Materials modelling · one model, every property</p>
<p>Many properties of a material (its electronic energy levels, how it absorbs light, how well it carries current, even subtle "topological" properties) are usually computed by separate programs with separate conventions, and the answers can quietly drift apart. hamop computes all of them from one and the same simple model of electrons hopping between atoms, so they start from the same description of the material. It handles magnetic fields, spin, disorder and very large systems, and it checks itself: its numerical tests (153 tests in all) compare it with exact textbook results, symmetries or a second calculation done a different way, and several key quantities are computed by two independent routes that must agree. It was distilled from the modelling pipeline behind the MoS<sub>2</sub> defect study, generalized so any material model can be pushed through it. Latest release (0.10.1): fixes errors in models where neighbouring orbitals overlap (part of the overlap was counted twice, and transport results were slightly off), keeps the optical data when spin is added to a model, and refuses temperatures it cannot use.</p>
<p><code>pip install hamop</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/hamop" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/hamop/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22311381" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>fabtwin</h3>
<p class="project-meta">Optical coatings · designing for the factory's real errors</p>
<p>Optical filters are built by depositing many thin layers, and no deposition machine hits its targets exactly. The errors are not simple random scatter: they drift, they depend on the recipe, and it is the rare bad runs, not the average one, that decide how many manufactured devices actually work. fabtwin learns a machine's error behaviour from its own production logs, then redesigns the filter so that even the worst runs come out well. The optics behind it is exact, and every derivative it uses is worked out by hand and cross-checked against an independent method. Grown out of our FabGAN-ID paper (<em>IEEE Sensors Journal</em>, 2026), it accepts any lab's own logged data through a documented file format, and states plainly what a model learned from logs can and cannot promise. Latest release (0.6.1): absorbing materials are now refused by the gradient calculation, instead of being silently treated as if they did not absorb light.</p>
<p><code>pip install fabtwin</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/fabtwin" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/fabtwin/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22697049" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>fracpll</h3>
<p class="project-meta">Frequency synthesizers · loop design from measured pieces</p>
<p>Almost every radio, radar and fast chip contains a phase-locked loop: a circuit that multiplies a clean reference clock up to the gigahertz frequency the system actually needs. Designing one raises the same questions in every technology: is the loop stable, and by how much? How much noise does the fractional divider add? What does the closed loop do to the oscillator noise you measured, and how much timing jitter comes out? Will it lock, and how large a timing offset does leakage leave once it has? fracpll answers all of these from measured pieces: your tuning curves, your noise points, your pump current, each behind a mandatory provenance field. It computes the divider control sequence with exact integer arithmetic (its average is exact as a fraction, not approximately), validates the noise formula against a simulation of that exact sequence, and refuses, with an explanation, wherever its averaged model stops being trustworthy. Version 0.2 goes further than any averaged model can: it also simulates the loop edge by edge, exactly as the phase detector and charge pump switch, which shows cycle slips, dead zones, pump mismatch and loops running close to the reference frequency, and it gives the exact stability limit at any loop bandwidth. Version 0.3 explains an effect those edge-by-edge runs revealed: with a fractional divider, the noise near the loop bandwidth is higher than a simple linear model predicts (15 dB higher in the worked example), because each charge-pump pulse lasts a finite time. A new fast model computes this with no fitted numbers and matches the full simulation. Version 0.3.1 fixes a 3 dB error in converting measured noise from dBc/Hz, refuses negative oscillator gain where the simple model cannot handle it, adds support for older NumPy versions, and rewrites the documentation in plain language with worked examples. Its main results are cross-checked against independent exact calculations. Distilled from the GaN-on-SOI PLL co-design study on the Research page, and usable for any charge-pump loop in any technology.</p>
<p><code>pip install fracpll</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/fracpll" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/fracpll/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22829473" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>lockkernel</h3>
<p class="project-meta">Synchronization transitions · exact thresholds and exponents</p>
<p>Fireflies, heart cells, power grids and laser arrays all do the same thing: above a critical coupling strength, a crowd of individually different oscillators suddenly starts beating together. How sharply that order grows near the onset is set by a single object, the locking kernel: how well one oscillator follows the crowd as a function of how detuned it is. lockkernel computes the whole transition exactly for any frequency spread and any kernel, with no fitting and no simulation error near the critical point, to high numerical precision. And it works in reverse for the lab: given a measured synchronization curve, it fits the threshold and the growth exponent with honest error bars, tells you what the exponent reveals about the underlying kernel, refuses to over-claim when the data cannot distinguish the candidates, and prices how many measurement points a target error bar will cost. It is the maintained distribution of the reference code behind the locking-kernel universality study, with the same tests. Latest release (1.1.1): one key coefficient, and the transition amplitude that depends on it, is now accurate at normal working precision; before, it needed about 30 digits to be right.</p>
<p><code>pip install lockkernel</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/lockkernel" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/lockkernel/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22829483" rel="noopener">Archive · Zenodo DOI</a></li>
</ul>
</section>

<section class="project">
<h3>labplan</h3>
<p class="project-meta">Any experiment · plan, fit, and certify a calibration</p>
<p>The question every lab faces before every calibration: which settings should we measure, and how many repeats will the error bar we need actually cost? labplan answers it for any instrument or experiment you can describe with a Python function. It plans the measurement before you take it (telling you which settings are most informative and how many repeats your target error bar will cost), fits your data with honest uncertainties once you have it, tells you when a planned measurement cannot determine what you asked for (and refuses to fit or design with it), and can wrap the result in error bounds whose coverage guarantee does not depend on the model being right. It then writes the record an audit or a lab notebook actually needs: values with error bars, a fingerprint of the raw data, software versions, timestamp and operator. It needs nothing beyond NumPy, and a literature reference is a required field of every model, not a comment. Latest release (0.1.1): error bars no longer depend on the units in which a very small parameter is written.</p>
<p><code>pip install labplan</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/labplan" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/labplan/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22826765" rel="noopener">Archive · Zenodo DOI</a></li>
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
