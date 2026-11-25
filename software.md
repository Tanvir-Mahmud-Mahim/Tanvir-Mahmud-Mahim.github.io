---
layout: page
title: "Software"
subtitle: "Twelve free research tools, tested in public and archived with DOIs."
permalink: /software/
description: "Open-source software by Tanvir Mahmud Mahim: ramansep, kpenvelope, sqzcomb, absnoise, cavsqueeze, sparq-triage, vacspin, hamop, fabtwin, fracpll, lockkernel and labplan: tools for Raman analysis of 2D materials, nitride semiconductor devices, squeezed light, superconducting thermal detectors, spin squeezing, single-photon-emitter screening, materials modeling, yield-aware optical design, color-center spin-light interfaces, frequency-synthesizer design, synchronization and measurement planning, maintained under the TaN-MM-Org organization."
---

Twelve research tools grew out of the <a href="{{ '/research/' | relative_url }}">research projects</a>. They are free and open source, maintained under the <a href="https://github.com/TaN-MM-Org" rel="noopener">TaN-MM-Org</a> organization, and each installs with one <code>pip install</code> command.

All twelve follow the same rules:

- **Checked in public.** Automated tests run on every change and compare the main results with textbook formulas, published results or a second, independent calculation.
- **Numbers with sources.** Built-in physical constants and parameter sets carry a citation.
- **Honest about limits.** Each package says plainly what it does not do, and stops with an explanation when the data cannot answer the question asked.
- **Archived.** Each release is archived on Zenodo with its own DOI.

Every package also works with a lab's own measurements. Most can plan a measurement before it is taken (which settings to measure, and how many repeats a target error bar will cost) and then fit the measured data with honest error bars. labplan is that planning-and-fitting layer on its own, for any model you can write as a Python function.

## The tools at a glance

<div class="table-scroll">
<table class="tool-table">
<thead><tr><th>Tool</th><th>What it is for</th><th>Latest</th></tr></thead>
<tbody>
<tr><td><a href="#ramansep">ramansep</a></td><td>Raman maps of 2D materials: separate strain from extra charge</td><td class="ver">0.17.0</td></tr>
<tr><td><a href="#kpenvelope">kpenvelope</a></td><td>Nitride semiconductors (GaN, AlN): from layers to transistors</td><td class="ver">0.38.0</td></tr>
<tr><td><a href="#sqzcomb">sqzcomb</a></td><td>Squeezed light from ring resonators</td><td class="ver">0.19.0</td></tr>
<tr><td><a href="#absnoise">absnoise</a></td><td>Built-in noise of superconducting junctions and thermal detectors</td><td class="ver">0.17.0</td></tr>
<tr><td><a href="#cavsqueeze">cavsqueeze</a></td><td>Spin ensembles in resonators driven into quieter states</td><td class="ver">1.21.0</td></tr>
<tr><td><a href="#sparq">SPARQ</a></td><td>Screening candidate single-photon sources</td><td class="ver">0.16.0</td></tr>
<tr><td><a href="#vacspin">vacspin</a></td><td>Diamond color centers as quantum memories that talk to light</td><td class="ver">0.11.0</td></tr>
<tr><td><a href="#hamop">hamop</a></td><td>One material model, every property</td><td class="ver">0.16.0</td></tr>
<tr><td><a href="#fabtwin">fabtwin</a></td><td>Optical coatings designed for a machine's real errors</td><td class="ver">0.13.0</td></tr>
<tr><td><a href="#fracpll">fracpll</a></td><td>Frequency synthesizers (phase-locked loops) from measured parts</td><td class="ver">0.9.0</td></tr>
<tr><td><a href="#lockkernel">lockkernel</a></td><td>When a crowd of oscillators starts to beat together</td><td class="ver">1.7.0</td></tr>
<tr><td><a href="#labplan">labplan</a></td><td>Plan, fit and document a calibration of any model</td><td class="ver">0.7.0</td></tr>
</tbody>
</table>
</div>

The latest releases (November 2026) each work through the limits that the tool's own documentation listed. A limit was closed only where the new result could be checked against an exact answer or an independent calculation; the others are still listed, with the reason. Each release also fixes the problems found in a fresh check of the code, with a test for each fix. The full list of changes is in each tool's changelog on GitHub.

## The tools

<section class="project" id="ramansep">
<h3>ramansep</h3>
<p class="project-meta">Raman maps of 2D materials · separating strain from doping</p>
<p>When an atomically thin material such as MoS<sub>2</sub> is stretched, or gains extra electric charge, its Raman peaks shift. But both effects shift the same peaks, so a single measurement cannot tell them apart. ramansep untangles the two by combining peaks that respond differently, turning a Raman map into separate maps of strain and charge, each with honest error bars. It can also combine more than two peaks, and then it checks itself: it flags any pixel where strain and charge alone cannot explain the data, which no two-peak analysis can do. It ships cited coefficient sets for MoS<sub>2</sub> and graphene, and its test suite reproduces the edge-charge result of the nanoribbon study on the Research page.</p>
<p class="release-note"><strong>Latest release (0.17.0).</strong> It can now choose how smooth a strain-and-charge map should be from the data itself, instead of asking you to set it, and it takes correlated errors in the map inversion. Large maps are much faster: a 200 by 200 map went from about 2 s to 0.01 s. A fix: a calibration matrix that is almost singular is now refused; before, it could give a wildly wrong strain with only a warning.</p>
<p><code>pip install ramansep</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/ramansep" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/ramansep/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22014913" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/ramansep/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="kpenvelope">
<h3>kpenvelope</h3>
<p class="project-meta">Nitride semiconductors · from a stack of layers to a working transistor</p>
<p>It started with one question: what energy levels do holes (missing electrons) have when they are trapped in a thin GaN layer? That is the physics behind the hole-mass study on the Research page, and the package still answers it with the standard six-band model of the valence bands, solved together with the electrostatics of the trapped charge. It has since grown to cover the whole path from a stack of layers to a working transistor: the charges and electron densities of nitride stacks, with fits to measured C-V and Hall data; current, traps, self-heating and breakdown in 2D and 3D devices; quantum transport and electron mobility from the device's own wavefunctions; and the process steps that build a device's shape and doping. A browser app runs many of these calculations with no code. Every material number comes with a written source.</p>
<p class="release-note"><strong>Latest release (0.38.0).</strong> Tunneling between energy bands and the device's own heating are now solved together. On the test junction that takes about 120 solver steps instead of 518, and it succeeds at voltages where the old method, which solved them in turns, did not. Masks that flow are now also pushed sideways by the growing oxide. Releases earlier the same week let electrons in the quantum transport give energy to the crystal's vibrations, and added the vibrations of layered stacks, alloys and wurtzite crystals.</p>
<p><code>pip install kpenvelope</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/kpenvelope" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/kpenvelope/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22015269" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/kpenvelope/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="sqzcomb">
<h3>sqzcomb</h3>
<p class="project-meta">Microcombs · squeezed light · quantum noise</p>
<p>Tiny ring resonators can produce "squeezed" light: light whose noise, measured the right way, drops below the usual quantum limit, a resource for precision measurement and quantum computing. sqzcomb predicts how much squeezing a detector will actually see from such a ring, including everything that eats it along the way: losses, imperfect detectors, and how the light is extracted. It covers pairs of coupled rings, which its test suite drives past the well-known single-ring extraction limit, and it can also quantify the quantum entanglement between pairs of comb lines. Its tests check it against textbook formulas and independent calculations.</p>
<p class="release-note"><strong>Latest release (0.19.0).</strong> It finds the best fixed measurement angle across a frequency band for two coupled rings as well as one, and plans the gain a target squeezing needs when the ring is detuned. The worst-case angle search is much faster: 1000 frequencies went from 5 to 10 s to under a second. It also explains why a spectrum analyzer that averages in decibels needs no correction for squeezing ratios. Inputs that gave a wrong or empty (NaN) answer without an error are now refused.</p>
<p><code>pip install sqzcomb</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/sqzcomb" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/sqzcomb/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22015375" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/sqzcomb/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="absnoise">
<h3>absnoise</h3>
<p class="project-meta">Superconducting junctions · noise limits of thermal detectors</p>
<p>In certain superconducting devices, the current is carried by a handful of quantum levels whose occupation flickers randomly even in perfect equilibrium. absnoise computes that intrinsic flicker and what it means for using such devices as extremely sensitive thermometers and photon-energy detectors: how precisely temperature can be read, how much noise is unavoidable, and where the fundamental limits sit. It ships junction recipes taken from published devices. It also works in reverse: given a noisy measured readout record, it recovers the hidden level occupation and the device's flip rates, and these estimates are tested on simulated records.</p>
<p class="release-note"><strong>Latest release (0.17.0).</strong> It now models readouts that average over each sample and records of finite length, gives each state its own noise width when decoding a trace, and picks the best set of temperatures to measure at. Calibration at low temperature is about 8 to 70 times faster, with the same results to nine digits. Twelve small bugs are fixed, mostly inputs that gave nonsense without a warning.</p>
<p><code>pip install absnoise</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/absnoise" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/absnoise/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22048608" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/absnoise/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="cavsqueeze">
<h3>cavsqueeze</h3>
<p class="project-meta">Spin ensembles in resonators · spin squeezing</p>
<p>Simulates how an enormous number of atomic spins inside a resonator can be steered into a collectively quieter, "squeezed" state, a route to better clocks and magnetometers. Its solver's cost is set by the shape of the spin ensemble rather than its size (its documentation works an example with 10<sup>15</sup> spins), and it cross-checks itself against exact solutions for small ensembles and against an independent second method. Developed for <sup>171</sup>Yb<sup>3+</sup>:CaWO<sub>4</sub> crystals and applicable to any spin ensemble coupled to a resonator, it also translates its results directly into the numbers an experiment is designed against (clock stability and magnetic-field sensitivity), and exports its states into the widely used QuTiP toolbox.</p>
<p class="release-note"><strong>Latest release (1.21.0).</strong> A new exact reference keeps the cavity itself for a few spins, which measures the error of leaving it out. It showed that the documented sign of the detuning was backwards (corrected in the documentation; no number changes) and added a small frequency shift from thermal photons. The calibration now takes error bars on the atom numbers, and the shot planner no longer asks for one shot too many.</p>
<p><code>pip install cavsqueeze</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/cavsqueeze" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/cavsqueeze/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22278034" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/cavsqueeze/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="sparq">
<h3>SPARQ</h3>
<p class="project-meta">Single-photon emitters · automated screening</p>
<p>Finding a good single-photon emitter (the light source behind many quantum technologies) means measuring hundreds of candidate spots, most of them useless. SPARQ automates that screening. It simulates the standard photon-correlation measurement faithfully, analyzes real measured data with honest uncertainties, and decides on the fly how long to keep measuring each spot, stopping the moment the evidence is sufficient instead of waiting out a fixed dwell time. It also includes machine-learning agents that learn the screening strategy itself, from our <a href="https://doi.org/10.1021/acsphotonics.6c01984" rel="noopener">SPARQ paper</a> (<em>ACS Photonics</em>, 2026). The physics core is tested against exact reference calculations. It ships built-in parameter ranges for four kinds of emitter (NV and SiV centers in diamond, and emitters in hBN and GaN) and lets you add your own.</p>
<p class="release-note"><strong>Latest release (0.16.0).</strong> Saturation fits now give honest intervals when the counts scatter more than photon counting alone explains, for example with a drifting focus: with 1% drift, 38 of 40 intervals covered the true value in a test, against 19 before. A stationarity check now works with few counts, and profile intervals are about 4.5 times faster. Inputs that gave wrong answers without a word are now refused.</p>
<p><code>pip install sparq-triage</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/sparq-triage" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/sparq-triage/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22278040" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/sparq-triage/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="vacspin">
<h3>vacspin</h3>
<p class="project-meta">Diamond color centers · spin-photon interfaces</p>
<p>Certain atomic-scale defects in diamond, such as the silicon-vacancy, germanium-vacancy and tin-vacancy centers, act as tiny quantum memories that talk to light, which makes them building blocks for quantum networks. vacspin computes how such a center behaves in a real, imperfect sample: how strain in the crystal and applied magnetic fields shift its energy levels, how cleanly it can be read out in a single shot, and how the fluorescence budget splits between its optical transitions. Every built-in parameter set carries its source. The tin-vacancy set uses the device values of a published experiment; for the silicon- and germanium-vacancy centers only the measured energy splittings are built in, and sample-specific values such as strain are left for you to fit from your own data. The lead-vacancy center is documented but not shipped, because its parameters are not yet fully measured. It grew out of our study of fast tin-vacancy readout on thin-film lithium niobate, now published in <a href="https://doi.org/10.1364/OE.618386" rel="noopener"><em>Optics Express</em></a> and described on the <a href="{{ '/research/#quantum-optics' | relative_url }}">Research</a> page.</p>
<p class="release-note"><strong>Latest release (0.11.0).</strong> The readout model can now let the spin turn bright and dark any number of times during the readout, with spin relaxation (T1), and lifetimes can be fitted together with a measured detector timing response. In one documented case the old shortcut gave a fidelity of 0.722 where the full model gives 0.752; the README says when to switch. Every earlier result is unchanged.</p>
<p><code>pip install vacspin</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/vacspin" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/vacspin/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22819698" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/vacspin/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="hamop">
<h3>hamop</h3>
<p class="project-meta">Materials modeling · one model, every property</p>
<p>Many properties of a material (its electronic energy levels, how it absorbs light, how well it carries current, even subtle "topological" properties) are usually computed by separate programs with separate conventions, and the answers can quietly drift apart. hamop computes all of them from one and the same simple model of electrons hopping between atoms, so they start from the same description of the material. It handles magnetic fields, spin, disorder and very large systems, and it checks itself: its numerical tests compare it with exact textbook results, symmetries or a second calculation done a different way, and several key quantities are computed by two independent routes that must agree. It was distilled from the modeling pipeline behind the MoS<sub>2</sub> defect study, generalized so any material model can be pushed through it.</p>
<p class="release-note"><strong>Latest release (0.16.0).</strong> It computes the topological (Z2) indices of three-dimensional crystals, and its geometry, curvature and bond-current tools now accept orbitals that overlap. The density of states is about 25 times faster. A Chern number for bands that touch is now refused instead of being returned as 0, and invalid inputs such as NaN give an error instead of silent nonsense.</p>
<p><code>pip install hamop</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/hamop" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/hamop/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22311381" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/hamop/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="fabtwin">
<h3>fabtwin</h3>
<p class="project-meta">Optical coatings · designing for the factory's real errors</p>
<p>Optical filters are built by depositing many thin layers, and no deposition machine hits its targets exactly. The errors are not simple random scatter: they drift, they depend on the recipe, and it is the rare bad runs, not the average one, that decide how many manufactured devices actually work. fabtwin learns a machine's error behavior from its own production logs, then redesigns the filter so that even the worst runs come out well. The optics behind it is exact, and every derivative it uses is worked out by hand and cross-checked against an independent method. Grown out of our <a href="https://doi.org/10.1109/JSEN.2026.3732239" rel="noopener">FabGAN-ID paper</a> (<em>IEEE Sensors Journal</em>, 2026), it accepts any lab's own logged data through a documented file format, and states plainly what a model learned from logs can and cannot promise.</p>
<p class="release-note"><strong>Latest release (0.13.0).</strong> It models errors in each layer's refractive index during a monitored run, and monitoring through a plate that absorbs, checked against the independent tmm package. Scoring designs is about 6 times faster. Five fixes, among them a negative layer thickness that gave more light out than in.</p>
<p><code>pip install fabtwin</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/fabtwin" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/fabtwin/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22697049" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/fabtwin/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="fracpll">
<h3>fracpll</h3>
<p class="project-meta">Frequency synthesizers · loop design from measured pieces</p>
<p>Almost every radio, radar and fast chip contains a phase-locked loop: a circuit that multiplies a clean reference clock up to the gigahertz frequency the system actually needs. Designing one raises the same questions in every technology: is the loop stable, and by how much? How much noise does the fractional divider add? What does the closed loop do to the oscillator noise you measured, and how much timing jitter comes out? Will it lock, and how large a timing offset does leakage leave once it has? fracpll answers all of these from measured pieces: your tuning curves, your noise points, your pump current, each with a required note of where it came from. It computes the divider's control sequence with exact integer arithmetic, checks its noise formula against a simulation of that exact sequence, and refuses, with an explanation, wherever its averaged model stops being trustworthy. It can also simulate the loop edge by edge, exactly as the phase detector and charge pump switch, which shows cycle slips, dead zones and pump mismatch, and gives the exact stability limit at any loop bandwidth. Those runs revealed that, with a fractional divider, the noise near the loop bandwidth is higher than a simple linear model predicts (15 dB higher in the worked example), because each charge-pump pulse lasts a finite time; a fast model computes this with no fitted numbers. Distilled from the GaN-on-SOI PLL study on the Research page, it works for any charge-pump loop in any technology.</p>
<p class="release-note"><strong>Latest release (0.9.0).</strong> New: the closed-loop bandwidth and peaking of the per-cycle model, the design of third-order loop filters, and correlated inputs in the error bar of the stability margin. An important fix: a loop with extra poles could be reported stable with a 171° margin when it was really unstable. Fractional counts that were silently cut to whole numbers are now refused.</p>
<p><code>pip install fracpll</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/fracpll" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/fracpll/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22829473" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/fracpll/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="lockkernel">
<h3>lockkernel</h3>
<p class="project-meta">Synchronization transitions · exact thresholds and exponents</p>
<p>Fireflies, heart cells, power grids and laser arrays all do the same thing: above a critical coupling strength, a crowd of individually different oscillators suddenly starts beating together. How sharply that order grows near the onset is set by a single object, the locking kernel: how well one oscillator follows the crowd as a function of how detuned it is. lockkernel computes the whole transition exactly for any frequency spread and any kernel, with no fitting and no simulation error near the critical point, to high numerical precision. And it works in reverse for the lab: given a measured synchronization curve, it fits the threshold and the growth exponent with honest error bars, tells you what the exponent reveals about the underlying kernel, refuses to over-claim when the data cannot distinguish the candidates, and prices how many measurement points a target error bar will cost. It is the maintained distribution of the reference code behind the locking-kernel universality study, with the same tests.</p>
<p class="release-note"><strong>Latest release (1.7.0).</strong> Amplitudes now reach 40 to 60 digits instead of stopping near 20, the rule for the growth exponent covers line shapes whose top is not rounded, and two-peaked lines can be used in the dynamics. Input checks were added where bad settings gave impossible results.</p>
<p><code>pip install lockkernel</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/lockkernel" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/lockkernel/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22829483" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/lockkernel/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

<section class="project" id="labplan">
<h3>labplan</h3>
<p class="project-meta">Any experiment · plan, fit, and certify a calibration</p>
<p>The question every lab faces before every calibration: which settings should we measure, and how many repeats will the error bar we need actually cost? labplan answers it for any instrument or experiment you can describe with a Python function. It plans the measurement before you take it (telling you which settings are most informative and how many repeats your target error bar will cost), fits your data with honest uncertainties once you have it, tells you when a planned measurement cannot determine what you asked for (and refuses to fit or design with it), and can wrap the result in error bounds whose coverage guarantee does not depend on the model being right. It then writes the record an audit or a lab notebook actually needs: values with error bars, a fingerprint of the raw data, software versions, timestamp and operator. It needs nothing beyond NumPy, and a literature reference is a required field of every model, not a comment.</p>
<p class="release-note"><strong>Latest release (0.7.0).</strong> Fits with errors on both axes can now take a correlation between the error of a setting and the error of its reading, and a new Monte Carlo propagation drops the straight-line approximation. Three wrong answers are fixed, one of them an error bar 40% too small.</p>
<p><code>pip install labplan</code></p>
<ul class="pub-actions">
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/labplan" rel="noopener">Code · GitHub</a></li>
<li><a class="chip chip-data" href="https://pypi.org/project/labplan/" rel="noopener">Install · PyPI</a></li>
<li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22826765" rel="noopener">Archive · Zenodo DOI</a></li>
<li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/labplan/blob/main/CHANGELOG.md" rel="noopener">Changelog</a></li>
</ul>
</section>

## Citing the tools

Each repository carries a <code>CITATION.cff</code> file with citation details that GitHub shows directly, and each release has its own Zenodo DOI. If one of these tools contributes to a publication, please cite the versioned DOI you used.

## Contributing

Issues and pull requests are welcome on each repository. A change that touches the physics should come with a test, and a constant with its source.

## Support this work

This software is developed at the Department of Electrical and Electronic Engineering, BRAC University, and released openly under the Apache-2.0 license. The <a href="{{ '/support/' | relative_url }}">Support</a> page lists every way to help, from citing the tools to a small monthly donation.

<p class="support-cta">
<a class="btn-support" href="{{ '/support/' | relative_url }}">Support this work</a>
</p>
