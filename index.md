---
layout: page
title: "About"
hide_title: true
permalink: /
description: "Tanvir Mahmud Mahim, Adjunct Lecturer and Research Assistant, Department of EEE, BRAC University. Squeezed-light photonics and NV sensing, electrons and phonons in 2D devices, differentiable design of GaN circuits, and intelligent grid control."
---

<h1 class="intro-name">Tanvir Mahmud Mahim</h1>

<p class="intro-tagline">Adjunct Lecturer and Research Assistant, <strong>Department of Electrical and Electronic Engineering, BRAC University</strong>. I build physics-based computer models of quantum and semiconductor devices that do not stop at the device: they follow the signal through the instrument, all the way to the number a measurement actually returns.</p>

Each device I study is described once, from the electronic structure of its material to the signal its measurement produces. Nothing is adjusted by hand that could instead be computed. A model built this way works in both directions. Run forward, it acts as a referee: when independent experiments on the same sample disagree, it can tell how much of the answer comes from the material and how much from the measurement itself. Run backward, it designs: every step of the model can be differentiated, so a target specification can be turned directly into a device geometry — and the measurement setup becomes something to optimize, not just the device. This approach has carried my work from 2D and GaN electronics to quantum photonics, and it is now aimed at the step that limits quantum hardware most: the measurement itself.

<a href="{{ '/research/#quantum-optics' | relative_url }}"><strong>Squeezed-light photonics and NV sensing</strong></a>, conducted with Dr. A. S. M. Mohsin. The strand's first published result, in <em>Optics Express</em> (2026): adding a second ring to a silicon-carbide microcomb lets it release 7.9 dB of squeezed light, where a single ring can never exceed 3 dB. The strand's other front is sensing. Vortices — tiny whirlpools of magnetic flux — are a confirmed source of energy loss in the tantalum films that hold the record for superconducting-qubit coherence. Yet no existing probe can report which vortex sits where, or how strongly it is held in place. A thin diamond membrane laid on the film can. It senses a field of 8 mT per vortex from 25 nm away, pinpoints each vortex to within 13 nm, and tells without error whether a trapping site is occupied; two independent noise measurements then separate how much a vortex drags from how firmly it is pinned. And where the measurement itself is the bottleneck, the learning moves inside the instrument: an event-driven estimator matches a strong conventional fit six times faster, committing its decision 312 ms into the exposure.

<a href="{{ '/research/#quantum-materials-mems' | relative_url }}"><strong>Electrons and phonons in 2D devices</strong></a>, conducted with Prof. Md. Mosaddequr Rahman. Charge carriers and lattice vibrations are followed through nitride and single-layer channels starting from the underlying quantum states, not from shortcuts. Three findings stand out. In the GaN/AlN system, the measured carrier lifetimes point to disorder that deflects carriers only gently, through small angles — not the short-range mechanism the data had been attributed to — and no single elastic scattering mechanism explains both subbands at once, which puts the standard two-carrier reading of the mobility data in question. In patterned monolayers, our two-phonon method measures the electric charge trapped at a cut edge: charge of that size explains a reported switch in transistor behaviour (from depletion- to enhancement-mode) on thick-oxide devices, yet has no electrostatic effect on a modern thin-gate device, where the damage left by the etch sets the size limit instead. And in a WSe<sub>2</sub> ferroelectric transistor, one percent of compression more than doubles the hole mobility while moving the 1.24 V memory window by only about three percent — so strain and polarization can be tuned independently rather than trading off against each other.

<a href="{{ '/research/#wbg-devices' | relative_url }}"><strong>Differentiable design of GaN circuits</strong></a>, conducted with Dr. Nadim Chowdhury at BUET. Here the gradients run through the circuit equations themselves, so a whole circuit becomes something an optimizer can design. Two examples: a single-chip GaN-on-SOI frequency synthesizer (a fractional-N phase-locked loop) that stays locked from 218 to 423 K — roughly −55 to 150 °C — and a graph reinforcement-learning framework built with GlobalFoundries, Inc. that sizes analog transistors and carries over across four manufacturing technologies. Alongside this I worked as a consultant to GIXSystems.ai on the technology development of a 100 V GaN-on-Si power transistor (HEMT), taped out with X-FAB in Erfurt.

<a href="{{ '/research/#control-energy' | relative_url }}"><strong>Intelligent grid control</strong></a>, conducted with Dr. A. H. M. A. Rahim, who retired in December 2024. Controllers that revise their own decision rules through reinforcement learning hold a microgrid and a wind-turbine generator steady through faults severe enough to defeat fixed-gain schemes. The same collaboration produced a custom-built bifacial photovoltaic module and the <a href="{{ '/research/#photovoltaics' | relative_url }}">efficiency model</a> that describes it. This is the earliest of the four strands and the one with the longest published record.

I completed the B.Sc. in Electrical and Electronic Engineering at BRAC University in December 2022 with High Distinction, and joined the department as a Teaching Assistant, then as a Research Assistant, and since June 2025 as an Adjunct Lecturer. The <a href="{{ '/research/' | relative_url }}">Research</a> page presents all seventeen projects in full, with figures, code and data.

I welcome correspondence on any of these topics, as well as inquiries regarding collaboration, at [tanvir.mahim@bracu.ac.bd](mailto:tanvir.mahim@bracu.ac.bd).

## Research interests

<ul class="interests">
  <li>Quantum Optics and Photonics</li>
  <li>2D Quantum Materials</li>
  <li>Wide Bandgap (WBG) Semiconductor Devices</li>
  <li>Quantum Physics</li>
  <li>Electronic Design Automation (EDA)</li>
  <li>Machine Learning</li>
</ul>

## News

<ul class="news">
  <li>
    <span class="news-date">Sep 2026</span>
    <span class="news-body">Our paper <strong>"Overcoming the 3 dB squeezing extraction limit in silicon carbide microcombs with a photonic molecule"</strong> is published in <em>Optics Express</em> (open access). A second ring lets a microcomb release 7.9 dB of squeezed light, where a single ring can never exceed 3 dB. <a href="https://doi.org/10.1364/OE.612248" rel="noopener">Paper</a> · <a href="{{ '/publications/' | relative_url }}">Details</a></span>
  </li>
  <li>
    <span class="news-date">Sep 2026</span>
    <span class="news-body">The open-source family grows to six tools: <strong>cavsqueeze</strong> (spin squeezing of large ensembles in resonators) and <strong>SPARQ</strong> (automated screening of single-photon emitters) join ramansep, kpenvelope, sqzcomb and absnoise on PyPI, each tested in public and archived with a DOI. <a href="{{ '/software/' | relative_url }}">Details</a></span>
  </li>
  <li>
    <span class="news-date">Aug 2026</span>
    <span class="news-body">Received the <strong>Quality Journal Publication Award</strong> from the <a href="https://www.bracu.ac.bd/research/rmc" rel="noopener">Research Metrics Committee</a> of BRAC University for a second successive cycle. The award recognizes research published in Q1 journals, those ranked in the top quartile of their field.</span>
  </li>
  <li>
    <span class="news-date">Aug 2026</span>
    <span class="news-body">Released <strong>absnoise</strong>, a fourth open-source tool, covering the occupation noise of Andreev bound states and the sensitivity limits of the proximity Josephson thermal detectors built on them. All four tools are installable from PyPI and archived on Zenodo under versioned DOIs. <a href="{{ '/software/' | relative_url }}">Details</a></span>
  </li>
  <li>
    <span class="news-date">Aug 2026</span>
    <span class="news-body">All three research tools are now installable directly from PyPI (<code>pip install ramansep</code>, <code>kpenvelope</code>, <code>sqzcomb</code>) through automated, tested release pipelines. sqzcomb v0.2 adds the photonic molecule, with its test suite driving a coupled two-ring design past the single-ring 3 dB detected-squeezing limit. <a href="{{ '/software/' | relative_url }}">Details</a></span>
  </li>
  <li>
    <span class="news-date">Aug 2026</span>
    <span class="news-body">Released three open-source research tools under the <a href="https://github.com/TaN-MM-Org" rel="noopener">TaN-MM-Org</a> organization: <strong>ramansep</strong>, <strong>kpenvelope</strong> and <strong>sqzcomb</strong>, each with a tested core and continuous integration. <a href="{{ '/software/' | relative_url }}">Details</a></span>
  </li>
  <li>
    <span class="news-date">Jun 2026</span>
    <span class="news-body">Our paper on adaptive Takagi–Sugeno–Kang fuzzy inference with reinforcement learning for low-voltage ride-through of DFIG wind turbines is published in <em>Engineering Science and Technology, an International Journal</em>. <a href="{{ '/publications/' | relative_url }}">Details</a></span>
  </li>
  <li>
    <span class="news-date">Dec 2025</span>
    <span class="news-body">Joined <strong>GIXSystems.ai</strong> (USA) as a consultant, working on the technology development of a 100 V GaN-on-Si power HEMT discrete device, with tape-out at X-FAB in Erfurt, Germany.</span>
  </li>
  <li>
    <span class="news-date">Late 2025</span>
    <span class="news-body">Received the <strong>Quality Journal Publication Award</strong> from the <a href="https://www.bracu.ac.bd/research/rmc" rel="noopener">Research Metrics Committee</a> of BRAC University, for research published in Q1 journals.</span>
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
    <span class="news-body">Began research on squeezed-light photonics and NV sensing with Dr. A. S. M. Mohsin, covering soliton-crystal microcombs, NV micromembrane vortex sensing, and closed-loop machine learning for quantum photonic instrumentation. <a href="{{ '/research/' | relative_url }}">Read more</a></span>
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
    <span class="news-body">Started work on the differentiable design of GaN circuits with Dr. Nadim Chowdhury at BUET, including a collaboration with <strong>GlobalFoundries, Inc.</strong> (Santa Clara, USA) on graph reinforcement learning for transferable analog transistor sizing.</span>
  </li>
  <li>
    <span class="news-date">Feb 2025</span>
    <span class="news-body">Our adaptive fuzzy attention inference controller for microgrids under extreme grid-bus faults appears in <em>IEEE Transactions on Fuzzy Systems</em>.</span>
  </li>
  <li>
    <span class="news-date">Jul 2024</span>
    <span class="news-body">Began research on electrons and phonons in 2D devices with Prof. Md. Mosaddequr Rahman, spanning nanoribbon transistors, ferroelectric WSe<sub>2</sub> logic, and fabrication-aware inverse design.</span>
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
