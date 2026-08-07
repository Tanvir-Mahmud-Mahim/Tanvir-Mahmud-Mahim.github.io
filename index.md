---
layout: page
title: "About"
hide_title: true
permalink: /
description: "Tanvir Mahmud Mahim, Adjunct Lecturer and Research Assistant, Department of EEE, BRAC University. Squeezed-light photonics and NV sensing, electrons and phonons in 2D devices, differentiable design of GaN circuits, and intelligent grid control."
---

<h1 class="intro-name">Tanvir Mahmud Mahim</h1>

<p class="intro-tagline">Adjunct Lecturer and Research Assistant, <strong>Department of Electrical and Electronic Engineering, BRAC University</strong>. I build device models that run without a break from the electronic structure of a material to the terminal behavior of a circuit, and I keep them differentiable, so that a measurement can be explained rather than fitted and a specification can be turned back into a geometry.</p>

A device is understood only when the chain from its constituent atoms to its measured behavior is unbroken. Building that chain, and keeping every link in it, is what my work consists of. Electronic structure comes from density functional theory and Wannier interpolation; carrier and phonon transport from six-band envelope functions, self-consistent electrostatics and Boltzmann theory; electromechanical and optical response from finite-element multiphysics; and terminal behavior from compact models exercised in a circuit simulator and committed to layout on an open toolchain. Four material systems are treated in this way: <strong>4H-silicon carbide</strong> for integrated photonics, <strong>diamond</strong> for color-center magnetometry, the <strong>III-nitrides</strong> for power and radio-frequency electronics, and the <strong>transition-metal dichalcogenides</strong> for monolayer logic.

An unbroken chain can be run in either direction, and I use both. Run forward it adjudicates. When three independent measurements of the same GaN/AlN hole gas return parameters that contradict one another, a calculation that introduces no adjustable quantity can establish which of those numbers the band structure accounts for and which belong instead to the conditions under which they were taken. Run backward it designs. Because the governing physics is written to admit gradients throughout, a target specification can be converted into the geometry that meets it, and the search can be held to what a real process will yield rather than to a nominal tolerance. Adjoint methods, learned generative process twins and reinforcement learning each supply the search; the physics supplies the gradients. Code and datasets are released with every project.

<a href="{{ '/research/#quantum-optics' | relative_url }}"><strong>Squeezed-light photonics and NV sensing</strong></a>, conducted with Dr. A. S. M. Mohsin. The optical model is carried in full, from full-vector mode solving through Lugiato–Lefever propagation to Heisenberg–Langevin noise analysis, and terminates in quantities a detector can register. An auxiliary Purcell-extraction ring in a 4H-SiC soliton-crystal microcomb lifts detectable squeezing past the conventional 3 dB limit to 8.5 dB, and a pick-and-place diamond micromembrane sensor localizes single vortices in tantalum circuits to 13 nm. Where the measurement is itself the bottleneck, the machine learning goes inside the instrument rather than after it.

<a href="{{ '/research/#quantum-materials-mems' | relative_url }}"><strong>Electrons and phonons in 2D devices</strong></a>, conducted with Prof. Md. Mosaddequr Rahman. Carriers and lattice vibrations are followed through nitride and monolayer channels from the envelope functions and phonon eigenvectors upward, and are not allowed to stop at the band structure. A parameter-free treatment of the polarization-induced GaN/AlN hole gas reproduces both measured masses and shows that the disputed light-hole mass is a property of the field dependence rather than of the dispersion. Two Raman modes in a monolayer nanoribbon separate edge charge from edge strain, turning a spectroscopic observation into a quantitative electrostatic measurement. One percent of biaxial compression in a WSe<sub>2</sub> ferroelectric transistor more than doubles the hole mobility while leaving the memory window intact.

<a href="{{ '/research/#wbg-devices' | relative_url }}"><strong>Differentiable design of GaN circuits</strong></a>, conducted with Dr. Nadim Chowdhury at BUET. The gradients are carried through the compact models and the loop equations themselves, so that a circuit becomes an object of optimization: adjoint co-design of a monolithic GaN-on-SOI fractional-N phase-locked loop that locks from 218 to 423 K, and a graph reinforcement-learning framework built with GlobalFoundries, Inc. that sizes analog transistors and transfers across four technology nodes. Alongside this I worked as a consultant to GIXSystems.ai on the technology development of a 100 V GaN-on-Si power HEMT, taped out with X-FAB in Erfurt.

<a href="{{ '/research/#control-energy' | relative_url }}"><strong>Intelligent grid control</strong></a>, conducted with Dr. A. H. M. A. Rahim, who retired in December 2024. Controllers that revise their own inference rules under reinforcement learning hold a microgrid and a doubly-fed induction generator through faults severe enough to defeat fixed-gain schemes. The same collaboration produced a custom-built bifacial photovoltaic module and the <a href="{{ '/research/#photovoltaics' | relative_url }}">efficiency model</a> that describes it. This is the earliest of the four strands and the one with the longest published record.

I completed the B.Sc. in Electrical and Electronic Engineering at BRAC University in December 2022 with High Distinction, and joined the department as a Teaching Assistant, then as a Research Assistant, and since June 2025 as an Adjunct Lecturer. The <a href="{{ '/research/' | relative_url }}">Research</a> page presents all seventeen projects in full, with figures, code and data.

I welcome correspondence on any of these topics, as well as inquiries regarding collaboration, at [tanvir.mahim@bracu.ac.bd](mailto:tanvir.mahim@bracu.ac.bd).

## Research interests

<ul class="interests">
  <li>Quantum Optics and Photonics</li>
  <li>2D Quantum Materials</li>
  <li>Microelectromechanical Systems (MEMS)</li>
  <li>Wide Bandgap (WBG) Semiconductor Devices</li>
  <li>Electronic Design Automation (EDA)</li>
  <li>Machine Learning</li>
</ul>

## News

<ul class="news">
  <li>
    <span class="news-date">Jun 2026</span>
    <span class="news-body">Our paper on adaptive Takagi–Sugeno–Kang fuzzy inference with reinforcement learning for low-voltage ride-through of DFIG wind turbines is published in <em>Engineering Science and Technology, an International Journal</em>. <a href="{{ '/publications/' | relative_url }}">Details</a></span>
  </li>
  <li>
    <span class="news-date">Dec 2025</span>
    <span class="news-body">Joined <strong>GIXSystems.ai</strong> (USA) as a consultant, working on the technology development of a 100 V GaN-on-Si power HEMT discrete device, with tape-out at X-FAB in Erfurt, Germany.</span>
  </li>
  <li>
    <span class="news-date">Sep 2025</span>
    <span class="news-body">Our review of the challenges and prospects in agrivoltaics appears online in <em>Advanced Energy and Sustainability Research</em> (Wiley, open access); it runs in the January 2026 issue.</span>
  </li>
  <li>
    <span class="news-date">Aug 2025</span>
    <span class="news-body">BRAC University <a href="https://www.bracu.ac.bd/news/former-current-eee-faculty-members-publish-2-papers-top-journals" rel="noopener">featured our work in its news</a>, highlighting the <em>IEEE Transactions on Fuzzy Systems</em> and <em>IEEE Sensors Journal</em> papers with Prof. Md. Mosaddequr Rahman and Prof. A. H. M. A. Rahim.</span>
  </li>
  <li>
    <span class="news-date">Jul 2025</span>
    <span class="news-body">Began research in quantum optics and photonics with Dr. A. S. M. Mohsin, covering soliton-crystal microcombs, NV micromembrane vortex sensing, and closed-loop machine learning for quantum photonic instrumentation. <a href="{{ '/research/' | relative_url }}">Read more</a></span>
  </li>
  <li>
    <span class="news-date">Jul 2025</span>
    <span class="news-body">Our hierarchical inverse-design framework for unit-cell CMUTs is published in the <em>IEEE Sensors Journal</em>, with the dataset released on Zenodo.</span>
  </li>
  <li>
    <span class="news-date">Jun 2025</span>
    <span class="news-body">Appointed <strong>Adjunct Lecturer</strong> in the Department of EEE, BRAC University, teaching Solid-State Devices, Numerical Methods, and Microprocessor &amp; Embedded Systems.</span>
  </li>
  <li>
    <span class="news-date">May 2025</span>
    <span class="news-body">Started work on wide-bandgap electronic devices with Dr. Nadim Chowdhury at BUET, including a collaboration with <strong>GlobalFoundries, Inc.</strong> (Santa Clara, USA) on graph reinforcement learning for transferable analog transistor sizing.</span>
  </li>
  <li>
    <span class="news-date">Feb 2025</span>
    <span class="news-body">Our adaptive fuzzy attention inference controller for microgrids under extreme grid-bus faults appears in <em>IEEE Transactions on Fuzzy Systems</em>.</span>
  </li>
  <li>
    <span class="news-date">Jul 2024</span>
    <span class="news-body">Began research on 2D quantum materials and MEMS with Prof. Md. Mosaddequr Rahman, spanning nanoribbon transistors, ferroelectric WSe<sub>2</sub> logic, and fabrication-aware inverse design.</span>
  </li>
  <li>
    <span class="news-date">Jul 2024</span>
    <span class="news-body">Our weather-responsive multidimensional efficiency model for custom-built bifacial panels is published in the <em>IEEE Journal of Photovoltaics</em>.</span>
  </li>
  <li>
    <span class="news-date">Mar 2024</span>
    <span class="news-body">Our comparative review of mono- and bifacial photovoltaic technologies appears in the <em>IEEE Journal of Photovoltaics</em>.</span>
  </li>
  <li>
    <span class="news-date">Aug 2023</span>
    <span class="news-body">Profiled by the <strong>Aspire Institute</strong> in its <a href="https://www.youtube.com/shorts/wTAnvPs7qkI" rel="noopener">First-Gen Friday series</a>, during the Aspire Leaders Program, which was founded at Harvard University in 2017 and became an independent institute in 2021.</span>
  </li>
  <li>
    <span class="news-date">Dec 2022</span>
    <span class="news-body">Completed the B.Sc. in Electrical and Electronic Engineering at BRAC University with High Distinction.</span>
  </li>
</ul>
