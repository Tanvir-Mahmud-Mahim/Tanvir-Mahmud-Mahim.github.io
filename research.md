---
layout: page
title: "Research"
subtitle: "Physics-informed, differentiable models of devices — and the optimisation loops that design them."
permalink: /research/
description: "Research highlights of Tanvir Mahmud Mahim: quantum optics and photonics, wide-bandgap devices and EDA, 2D materials and MEMS, and machine learning for power systems and photovoltaics."
---

Classical device design is a search problem dressed up as a simulation problem. A designer runs a solver, reads off a figure of merit, adjusts a parameter, and repeats. My work replaces that outer loop: I write the device physics in a form that is differentiable and fabrication-aware, then let adjoint methods, generative models and reinforcement learning search the design space directly — for photonic and quantum devices, for wide-bandgap power and RF electronics, and for MEMS transducers.

Work below marked <span class="tag tag-review">Under review</span> is in the peer-review process; the <a href="{{ '/publications/' | relative_url }}">Publications</a> page lists only accepted and published records.

## Ongoing

<section class="project">
  <h3>Quantum optics and photonics</h3>
  <p class="project-meta">With Dr. A. S. M. Mohsin, Department of EEE, BRAC University<span class="sep">|</span>July 2025 – present</p>
  <ul class="workitems">
    <li>A numerical model of a photonic-molecule <strong>4H-SiC soliton-crystal microcomb</strong> that enables squeezing extraction beyond the 3&nbsp;dB limit. <span class="tag tag-review">Under review</span></li>
    <li>A theoretical and numerical study of a pick-and-place <strong>diamond micromembrane NV sensor</strong> for imaging single vortices and quantifying vortex-induced losses in tantalum superconducting circuits. <span class="tag tag-review">Under review</span></li>
    <li>Closed-loop machine-learning frameworks for quantum photonic instrumentation and photonic neural inference, in collaboration with the <strong>University of Memphis, USA</strong>: <em>SPARQ</em>, a spiking reinforcement-learning framework for triaging solid-state single-photon emitters, and photon-efficient neural inference over optical links. <span class="tag tag-review">Under review</span></li>
    <li>Learned <strong>generative-process digital twins</strong> for yield-aware inverse design of photonic sensor front-ends. <span class="tag tag-review">Under review</span></li>
  </ul>
</section>

<section class="project">
  <h3>Wide-bandgap devices and electronic design automation</h3>
  <p class="project-meta">With Dr. Nadim Chowdhury, Department of EEE, BUET<span class="sep">|</span>May 2025 – present</p>
  <ul class="workitems">
    <li>Physics-guided <strong>adjoint co-optimisation of a monolithic E-mode GaN-on-SOI fractional-N PLL</strong> with a HEMT varactor — a design partnership with the Palacios Group at MIT. <span class="tag tag-review">Under review</span></li>
    <li>A physics-guided <strong>graph reinforcement-learning framework with an adaptive fuzzy reward</strong> for transferable analog transistor sizing, developed in collaboration with <strong>GlobalFoundries, Inc.</strong> (Santa Clara, USA). <span class="tag tag-review">Under review</span></li>
    <li>Technology development of a <strong>100&nbsp;V GaN-on-Si power HEMT</strong> discrete device as a consultant to GIXSystems.ai (USA), with tape-out at X-FAB in Erfurt, Germany.</li>
  </ul>
</section>

<section class="project">
  <h3>2D materials and MEMS</h3>
  <p class="project-meta">With Prof. Md. Mosaddequr Rahman, Department of EEE, BRAC University<span class="sep">|</span>July 2024 – present</p>
  <ul class="workitems">
    <li>A TCAD-based model relating two <strong>Raman phonon signatures to fixed edge charge</strong> in monolayer semiconductor nanoribbon transistors — turning a spectroscopic measurement into a quantitative electrostatic diagnostic. <span class="tag tag-review">Under review</span></li>
    <li>Combining <strong>strain and ferroelectricity in WSe<sub>2</sub> transistors</strong> for fast, low-power nonvolatile logic. <span class="tag tag-review">Under review</span></li>
    <li>A fabrication-aware, physics-informed <strong>adjoint framework with reinforcement learning</strong> for the inverse design of CMUTs and photonic sensors, extending the published hierarchical framework below. <span class="tag tag-review">Under review</span></li>
  </ul>
</section>

## Completed

<section class="project">
  <h3>Inverse design of capacitive micromachined ultrasonic transducers</h3>
  <p class="project-meta">Published in <em>IEEE Sensors Journal</em>, 2025</p>
  <p>A hierarchical machine-learning scheme — attentive gated recurrent layers feeding fully connected dense layers — that maps a target acoustic response back to the geometry of a CMUT unit cell, maximising membrane displacement without the exhaustive finite-element sweeps that unit-cell design normally demands.</p>
  <ul class="pub-actions">
    <li><a class="chip" href="https://doi.org/10.1109/JSEN.2025.3569424" rel="noopener">DOI: 10.1109/JSEN.2025.3569424</a></li>
  </ul>
</section>

<section class="project">
  <h3>Reinforcement learning and fuzzy inference for power-system control</h3>
  <p class="project-meta">With Dr. A. H. M. A. Rahim (retired December 2024)<span class="sep">|</span>May 2023 – June 2024</p>
  <p>Controllers that learn. An adaptive fuzzy-attention inference scheme holds a microgrid together through an extreme fault on the grid bus, and an adaptive Takagi–Sugeno–Kang fuzzy controller trained by reinforcement learning gives doubly-fed induction generator wind turbines low-voltage ride-through under deep grid sags.</p>
  <ul class="pub-actions">
    <li><a class="chip" href="https://doi.org/10.1109/TFUZZ.2025.3539325" rel="noopener">IEEE TFS 2025</a></li>
    <li><a class="chip" href="https://doi.org/10.1016/j.jestch.2026.102435" rel="noopener">JESTECH 2026</a></li>
  </ul>
</section>

<section class="project">
  <h3>Bifacial photovoltaics and agrivoltaics</h3>
  <p class="project-meta">With Dr. A. H. M. A. Rahim and Prof. Md. Mosaddequr Rahman<span class="sep">|</span>2023 – 2026</p>
  <p>A custom-built bifacial photovoltaic module, built and characterised experimentally, then modelled: first with deep neural networks trained on measured output, and later with a multidimensional efficiency model that folds weather parameters such as air pressure and humidity into the efficiency rating. The programme also produced a comparative review of mono- and bifacial technologies, and a review of the dual-land-use, standards, acceptance and policy questions raised by agrivoltaics.</p>
  <ul class="pub-actions">
    <li><a class="chip" href="https://doi.org/10.1109/JPHOTOV.2024.3421252" rel="noopener">IEEE JPV 2024 — efficiency model</a></li>
    <li><a class="chip" href="https://doi.org/10.1109/JPHOTOV.2024.3366698" rel="noopener">IEEE JPV 2024 — review</a></li>
    <li><a class="chip" href="https://doi.org/10.1002/aesr.202500227" rel="noopener">AESR 2026 — agrivoltaics</a></li>
    <li><a class="chip" href="https://doi.org/10.1109/TENSYMP55890.2023.10223485" rel="noopener">IEEE TENSYMP 2023</a></li>
  </ul>
</section>
