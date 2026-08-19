---
layout: page
title: "Software"
subtitle: "General-purpose research tools, released with tests, archived with DOIs."
permalink: /software/
description: "Open-source software by Tanvir Mahmud Mahim: ramansep, kpenvelope and sqzcomb, tools for Raman analysis of 2D materials, wurtzite k·p subband physics and squeezed-light microcomb design, maintained under the TaN-MM-Org organization."
---

Three general-purpose tools distilled from the <a href="{{ '/research/' | relative_url }}">research projects</a> are maintained under the <a href="https://github.com/TaN-MM-Org" rel="noopener">TaN-MM-Org</a> organization. Each follows the same released-with-tests practice: every physical claim in a release is backed by a test that runs publicly on GitHub's infrastructure at every change, closed-form limits are reproduced by the machinery rather than asserted, and each release is archived on Zenodo under its own DOI. Shipped material constants are cited to their sources, and each package states plainly what it does not yet do.

<section class="project">
  <h3>ramansep</h3>
  <p class="project-meta">Raman spectroscopy of 2D materials · linear inversion · uncertainty propagation</p>
  <p>Separates strain from carrier density in Raman maps of 2D materials by a two-mode linear inversion, with propagated uncertainties and conditioning diagnostics. It ships cited coefficient sets for monolayer MoS<sub>2</sub>, and its test suite reproduces the published edge-charge separation of the nanoribbon study from those coefficients. This is the material-agnostic engine behind the nanoribbon edge-charge analysis on the Research page.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/ramansep" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22014913" rel="noopener">Archive · Zenodo DOI</a></li>
  </ul>
</section>

<section class="project">
  <h3>kpenvelope</h3>
  <p class="project-meta">Six-band k·p · self-consistent Poisson · wurtzite heterostructures</p>
  <p>A six-band k·p envelope-function solver for wurtzite heterostructures, solved self-consistently with Poisson's equation for polarization-induced carrier gases. It ships the cited GaN and AlN parameter sets used in the hole-mass study, verified in the test suite against closed-form zone-center splittings and quasi-cubic masses. This is the engine class behind the GaN/AlN hole-mass analysis on the Research page.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/kpenvelope" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22015269" rel="noopener">Archive · Zenodo DOI</a></li>
  </ul>
</section>

<section class="project">
  <h3>sqzcomb</h3>
  <p class="project-meta">Lugiato–Lefever · linearized quantum noise · detected squeezing spectra</p>
  <p>Computes the output squeezing spectra a homodyne detector would report from Kerr-microcomb steady states, through linearized fluctuation analysis and input-output theory. Its test suite reproduces the closed-form parametric-oscillator spectrum to ten decimal places and recovers the 3 dB extraction limit at critical coupling from the machinery itself.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/TaN-MM-Org/sqzcomb" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22015375" rel="noopener">Archive · Zenodo DOI</a></li>
  </ul>
</section>

## Citing the tools

Each repository carries a <code>CITATION.cff</code> file with the citation metadata GitHub renders directly, and each release has its own Zenodo DOI. If one of these tools contributes to a publication, please cite the versioned DOI you used.

## Contributing

Issues and pull requests are welcome on each repository. The contribution bar is the same as the release bar: a change that touches physics arrives with a test, and constants arrive with their source.

## Support this work

This software is developed at the Department of Electrical and Electronic Engineering, BRAC University, and released openly under the Apache-2.0 license. Support of any kind reaches it in three ways, none of which involves this website handling payment data:

<ul>
  <li><strong>Use it and cite it.</strong> Citations and issue reports are the strongest support an early research tool can receive.</li>
  <li><strong>Institutional and grant support.</strong> For collaboration, sponsored development of these tools, or grant partnerships, write to <a href="mailto:tanvir.mahim@bracu.ac.bd">tanvir.mahim@bracu.ac.bd</a>.</li>
  <li><strong>Small recurring donations.</strong> A <a href="https://www.patreon.com/u40002728" rel="noopener">Patreon page</a> collects small monthly contributions toward compute time and open-access publication fees. All payment handling happens on Patreon's own platform.</li>
</ul>

No payment is ever collected on this site itself; it is static HTML and carries no payment forms.
