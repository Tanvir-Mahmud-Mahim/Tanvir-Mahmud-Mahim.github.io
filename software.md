---
layout: page
title: "Software"
subtitle: "Twelve free research tools, tested in public and archived with DOIs."
permalink: /software/
description: "Open-source software by Tanvir Mahmud Mahim: ramansep, kpenvelope, sqzcomb, absnoise, cavsqueeze, sparq-triage, vacspin, hamop, fabtwin, fracpll, lockkernel and labplan: tools for Raman analysis of 2D materials, nitride semiconductor devices, squeezed light, superconducting thermal detectors, spin squeezing, single-photon-emitter screening, materials modeling, yield-aware optical design, color-center spin-light interfaces, frequency-synthesizer design, synchronization and measurement planning, maintained under the TaN-MM-Org organization."
---

Twelve research tools grew out of the <a href="{{ '/research/' | relative_url }}">research projects</a>. They are free and open source, live under the <a href="https://github.com/TaN-MM-Org" rel="noopener">TaN-MM-Org</a> organization on GitHub, and each installs with one <code>pip install</code> command.

All twelve are built the same way. Automated tests run in public on every change and compare the main results with textbook formulas, published results or a second calculation done another way. Built-in constants carry a citation. Each package says what it does not do, and stops with an explanation when the data cannot answer the question. Each release is archived on Zenodo with its own DOI.

They are also made for a lab's own measurements. Most can plan a measurement before it is taken (which settings to measure, and how many repeats a target error bar will cost) and then fit the data with error bars. labplan does just that planning and fitting, for any model you can write as a Python function.

## Which tool does what

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

The latest releases came out in November 2026. Each one closes limits that the tool's own documentation listed, wherever the new result could be checked against an exact answer or a second, independent calculation; the limits that could not be closed that way are still listed, with the reason. Each release also fixes the bugs found in a new review of the code, and its changelog on GitHub lists every change.

## The tools in detail

<section class="project" id="ramansep">
<h3>ramansep</h3>
<p class="project-meta">Raman maps of 2D materials · separating strain from doping</p>
<p>When an atomically thin material such as MoS<sub>2</sub> is stretched, or picks up extra electric charge, its Raman peaks shift. Both effects move the same peaks, so one peak alone cannot tell them apart. ramansep combines peaks that respond differently and turns a Raman map into separate maps of strain and charge, each with error bars. With three or more peaks it also flags any pixel that strain and charge alone cannot explain. It ships cited coefficients for MoS<sub>2</sub> and graphene, and its tests reproduce the edge-charge result of the nanoribbon study on the Research page.</p>
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
<p>It began with one question: what energy levels do holes (missing electrons) have when they are trapped in a thin GaN layer? That is the physics behind the hole-mass study on the Research page. The package has since grown to cover the path from a stack of layers to a working transistor: the charges and electron densities of nitride stacks, with fits to measured C-V and Hall data; current, traps, self-heating and breakdown in 2D and 3D devices; quantum transport; electron mobility; and the process steps that give a device its shape and doping. A browser app runs many of these calculations without code, and every material number in it has a written source.</p>
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
<p>Tiny ring resonators can make squeezed light: light whose noise drops below the usual quantum limit when it is measured the right way. sqzcomb predicts how much of that squeezing a detector will see after everything that eats it on the way, such as losses, imperfect detectors and the way the light is coupled out. It also handles pairs of coupled rings, which its tests drive past the single-ring limit, and the entanglement between pairs of comb lines.</p>
<p class="release-note"><strong>Latest release (0.19.0).</strong> It finds the best fixed measurement angle across a frequency band for two coupled rings as well as one, and plans the gain a target squeezing needs when the ring is detuned. The worst-case angle search is much faster: 1000 frequencies went from 5 to 10 s to under a second. Its documentation now shows why a spectrum analyzer that averages in decibels needs no correction for squeezing ratios. Inputs that gave a wrong or empty (NaN) answer without an error are now refused.</p>
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
<p>In some superconducting devices the current is carried by a few quantum levels whose occupation flickers at random, even in perfect equilibrium. absnoise computes that flicker and what it means for using such devices as very sensitive thermometers and photon-energy detectors: how precisely they can read temperature, and where the hard limits are. It ships junction recipes taken from published devices. It also works backward: from a noisy measured readout, it recovers the hidden level occupation and the flip rates.</p>
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
<p>It simulates how a huge number of spins inside a resonator can be driven into a collectively quieter, squeezed state, a route to better clocks and magnetometers. The cost of its solver depends on the shape of the spin ensemble rather than its size (one documented example has 10<sup>15</sup> spins), and it checks itself against exact results for small ensembles and against a second method. It was built for <sup>171</sup>Yb<sup>3+</sup>:CaWO<sub>4</sub> crystals but works for any spin ensemble in a resonator. It turns its results into the numbers an experiment is designed against, clock stability and magnetic-field sensitivity, and it exports its states to the QuTiP toolbox.</p>
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
<p>Finding a good single-photon source (the light source behind many quantum technologies) means measuring hundreds of candidate spots, most of them useless. SPARQ automates that screening. It simulates the standard photon-correlation measurement, analyzes real data with error bars, and decides spot by spot how long to keep measuring, stopping as soon as the evidence is enough instead of waiting out a fixed time. It also includes the machine-learning agents from our <a href="https://doi.org/10.1021/acsphotonics.6c01984" rel="noopener">SPARQ paper</a> (<em>ACS Photonics</em>, 2026). It ships parameter ranges for four kinds of emitter (NV and SiV centers in diamond, and emitters in hBN and GaN), and you can add your own.</p>
<p class="release-note"><strong>Latest release (0.16.0).</strong> Saturation fits now give correct intervals when the counts scatter more than photon counting alone explains, for example with a drifting focus: with 1% drift, 38 of 40 intervals covered the true value in a test, against 19 before. A stationarity check now works with few counts, and profile intervals are about 4.5 times faster. Inputs that gave wrong answers without any warning are now refused.</p>
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
<p>Some atom-sized defects in diamond, such as the silicon-, germanium- and tin-vacancy centers, are tiny quantum memories that talk to light, which makes them building blocks for quantum networks. vacspin computes how such a center behaves in a real sample: how strain and magnetic fields shift its energy levels, how cleanly it can be read in a single shot, and how its light splits between its optical lines. The tin-vacancy set uses the values of a published experiment. For the silicon- and germanium-vacancy centers only the measured energy splittings are built in, and sample values such as strain are left for you to fit. The lead-vacancy center is documented but not shipped, because its parameters are not fully measured yet. vacspin grew out of our tin-vacancy readout study, published in <a href="https://doi.org/10.1364/OE.618386" rel="noopener"><em>Optics Express</em></a> and described on the <a href="{{ '/research/#snv-readout' | relative_url }}">Research</a> page.</p>
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
<p>Many properties of a material, such as its energy levels, how it absorbs light, how well it carries current and its topological properties, are usually computed by separate programs with separate conventions, and the answers can drift apart without anyone noticing. hamop computes all of them from one simple model of electrons hopping between atoms. It handles magnetic fields, spin, disorder and very large systems. Its tests compare it with textbook results, with symmetries or with a second calculation done another way. It was distilled from the modeling behind our MoS<sub>2</sub> defect study and works with any material model.</p>
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
<p>Optical filters are built from many thin layers, and no deposition machine hits its targets exactly. The errors are not simple random scatter: they drift, they depend on the recipe, and the rare bad runs, not the average one, decide how many filters work. fabtwin learns a machine's errors from its own production logs and then redesigns the filter so that even the bad runs come out well. Its optics is exact, and each derivative it uses is checked against an independent method. It grew out of our <a href="https://doi.org/10.1109/JSEN.2026.3732239" rel="noopener">FabGAN-ID paper</a> (<em>IEEE Sensors Journal</em>, 2026), reads any lab's logs in a documented format, and says clearly what a model learned from logs can and cannot promise.</p>
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
<p>Almost every radio, radar and fast chip has a phase-locked loop: a circuit that multiplies a clean reference clock up to the frequency the system needs. fracpll answers the usual design questions from your own measured parts (tuning curves, noise points, pump current): is the loop stable and by how much, how much noise the fractional divider adds, how much timing jitter comes out, and whether it will lock. Every input carries a note of where it came from. It computes the divider's control sequence with exact integer arithmetic, can simulate the loop edge by edge as the phase detector and charge pump switch, and refuses, with an explanation, where its simpler model stops being trustworthy. Those edge-by-edge runs showed that a fractional divider raises the noise near the loop bandwidth (by 15 dB in the worked example) because each charge-pump pulse lasts a finite time, and a fast model now predicts this without fitted numbers. It grew out of the GaN-on-SOI synthesizer study on the Research page and works for any charge-pump loop in any technology.</p>
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
<p>Fireflies, heart cells, power grids and laser arrays all do the same thing: above a critical coupling, a crowd of slightly different oscillators suddenly starts beating together. How sharply that order grows near the onset is set by one object, the locking kernel. lockkernel computes the whole transition exactly for any spread of frequencies and any kernel, with no fitting and no simulation error near the critical point. It also works the other way: from a measured synchronization curve it fits the threshold and the growth exponent with error bars, says what the exponent reveals about the kernel, refuses to over-claim when the data cannot tell the candidates apart, and tells you how many measurement points a target error bar will cost. It is the maintained version of the code behind the locking-kernel universality study.</p>
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
<p>Before every calibration, a lab has to decide which settings to measure and how many repeats the error bar it needs will cost. labplan answers that for any instrument or experiment you can describe with a Python function. It plans the measurement, fits the data once you have it, and tells you when a planned measurement cannot determine what you asked for. It can also wrap the result in error bounds that hold even if the model is wrong. Then it writes the record an audit or a lab notebook needs: values with error bars, a fingerprint of the raw data, software versions, time and operator. It needs only NumPy, and every model must carry a literature reference.</p>
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
