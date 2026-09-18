---
layout: page
title: "About"
hide_title: true
permalink: /
description: "Tanvir Mahmud Mahim, Adjunct Lecturer and Research Assistant, Department of EEE, BRAC University. Squeezed-light photonics and NV sensing, electrons and phonons in 2D devices, differentiable design of GaN circuits, and intelligent grid control."
---

<h1 class="intro-name">Tanvir Mahmud Mahim</h1>

<p class="intro-tagline">Adjunct Lecturer and Research Assistant, <strong>Department of Electrical and Electronic Engineering, BRAC University</strong>. I build physics-based computer models of quantum and semiconductor devices that do not stop at the device: they follow the signal through the instrument, all the way to the number a measurement actually returns.</p>

Each device I study is described once, from the material it is made of to the signal its measurement produces. A model built this way works in both directions. Run forward, it acts as a referee: when two experiments on the same sample disagree, it can tell how much of the difference comes from the material and how much from the measurement itself. Run backward, it designs: the model can report how its output responds to every input, so an optimizer can turn a target specification directly into a device, and can tune the measurement setup too, not just the device. This approach has carried my work from 2D and GaN electronics to quantum photonics. It is now aimed at the step that limits quantum hardware most: the measurement itself.

<a href="{{ '/research/#quantum-optics' | relative_url }}"><strong>Squeezed-light photonics and NV sensing</strong></a>, conducted with Dr. A. S. M. Mohsin. Squeezed light is laser light whose noise has been pushed below the usual quantum limit; it is a raw material for precision measurement. Our first published result in this area appeared in <em>Optics Express</em> (2026). A single micro-ring on a silicon-carbide chip can make such light, but building the light up inside the ring and letting it out work against each other, so one ring can never deliver more than 3 dB. Adding a second ring, whose only job is extraction, releases 7.9 dB. The other project is a magnetic sensor. Vortices, tiny whirlpools of magnetic flux, are a known source of energy loss in the tantalum films used in the best superconducting qubits. No existing probe can say which vortex sits where, or how firmly each one is held in place. A thin diamond membrane laid on the film can. From 25 nm above the surface it senses each vortex's 8 mT field, locates it to within 13 nm, and tells without error whether a trapping site is occupied. Two separate noise readings then answer two separate questions: how much a vortex drags as it moves, and how firmly it is pinned. A third project speeds up the measurement itself. A learning method built into the instrument matches the accuracy of the standard analysis six times faster, typically reaching its verdict 312 ms (a third of a second) into the measurement.

<a href="{{ '/research/#quantum-materials-mems' | relative_url }}"><strong>Electrons and phonons in 2D devices</strong></a>, conducted with Prof. Md. Mosaddequr Rahman. Electric charge and heat-carrying vibrations are followed through nitride and single-atom-thick channels, starting from the underlying quantum states rather than from shortcuts. Three findings stand out. In the GaN/AlN system, the measured carrier lifetimes point to disorder that deflects carriers only gently, through small angles, and not to the abrupt, short-range roughness the data had been attributed to. No single such mechanism explains both conduction channels at once, which puts the standard reading of the mobility data in question. In patterned single layers, our two-phonon method measures the electric charge trapped at a cut edge. Charge of that size explains a reported change in how certain transistors switch on, yet has no such effect on a modern thin-gate device; there, the physical damage left by the cutting process sets the size limit instead. And in a WSe<sub>2</sub> ferroelectric transistor, one percent of compression more than doubles how easily charge moves, while shifting the 1.24 V memory window by only about three percent. Strain and memory behaviour can therefore be tuned independently, rather than trading off against each other.

<a href="{{ '/research/#wbg-devices' | relative_url }}"><strong>Differentiable design of GaN circuits</strong></a>, conducted with Dr. Nadim Chowdhury at BUET. Here the design software computes how every circuit output responds to every design choice, so an optimizer can adjust a whole circuit automatically. Two examples. A single-chip GaN frequency synthesizer (the circuit that generates a radio's precise clock signal) stays locked from −55 to 150 °C. And a machine-learning framework built with GlobalFoundries, Inc. sizes the transistors of analog circuits, and carries what it has learned across four different manufacturing technologies. Alongside this I worked as a consultant to GIXSystems.ai on a 100 V GaN power transistor, fabricated with X-FAB in Erfurt.

<a href="{{ '/research/#control-energy' | relative_url }}"><strong>Intelligent grid control</strong></a>, conducted with Dr. A. H. M. A. Rahim, who retired in December 2024. Power-grid controllers that revise their own decision rules as they learn hold a small local grid and a wind turbine steady through faults severe enough to defeat conventional fixed-setting controllers. The same collaboration produced a custom-built two-sided solar module and the <a href="{{ '/research/#photovoltaics' | relative_url }}">efficiency model</a> that describes it. This is the earliest of the four research areas, and the one with the longest published record.

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
    <span class="news-body">The open-source family is now ten tools: <strong>vacspin</strong> (diamond colour-centre spin-photon interfaces, with cited parameters for the silicon-, germanium- and tin-vacancy centres) and <strong>labplan</strong> (plan, fit and certify a calibration of any user-supplied model) join the eight released earlier. Every package now carries a laboratory layer that plans measurements before they are taken and calibrates from the lab's own data with honest uncertainties. <a href="{{ '/software/' | relative_url }}">Details</a></span>
  </li>
  <li>
    <span class="news-date">Sep 2026</span>
    <span class="news-body">A complete written course now covers all eight open-source tools: <strong>Research-Grade Computational Physics in Python</strong>, a 66-page book with 25 runnable code lessons, one module per tool. Every number printed in the book was produced by running the included scripts against the released packages, and each script checks its own textbook results. Available in the <a href="https://www.patreon.com/u40002728" rel="noopener">Patreon shop</a>.</span>
  </li>
  <li>
    <span class="news-date">Sep 2026</span>
    <span class="news-body">The open-source family is now eight tools: <strong>hamop</strong> (one material model, every property) and <strong>fabtwin</strong> (learning a fabrication line's real errors to design for manufacturing yield) join the six released earlier, and all eight shipped major feature releases this month. <a href="{{ '/software/' | relative_url }}">Details</a></span>
  </li>
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
