---
layout: page
title: "Research"
subtitle: "Device physics carried through the instrument, so that the model ends at the number a measurement returns."
permalink: /research/
description: "Research of Tanvir Mahmud Mahim: squeezed-light photonics and NV sensing, electrons and phonons in 2D devices, differentiable design of GaN circuits, intelligent grid control, and photovoltaic modeling. Code and data released openly."
---

Each project below is built as one differentiable description running from a material's electronic structure to the quantity an instrument reports: nothing is fitted where it can be computed, and the chain inverts, whether for a hidden quantity or for a geometry.

Work marked <span class="tag tag-review">Under review</span> is currently in peer review. The <a href="{{ '/publications/' | relative_url }}">Publications</a> page lists only accepted records. Code and datasets are released openly as each project reaches maturity.

<h2 id="quantum-optics">Squeezed-light photonics and NV sensing</h2>

<p class="section-lead">Conducted with Dr. A. S. M. Mohsin, Department of EEE, BRAC University, since July 2025. This work develops differentiable models of quantum photonic hardware, including squeezed-light sources, nitrogen-vacancy magnetometers and single-photon instrumentation, together with learned controllers that close the loop around them.</p>

<section class="project">
  <h3>Exceeding the 3 dB squeezing-extraction limit in silicon-carbide microcombs</h3>
  <p class="project-meta">4H-SiC-on-insulator · soliton crystals · continuous-variable quantum optics<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/sic-microcomb-squeezing.jpg' | relative_url }}" alt="Photonic-molecule geometry with a main soliton-crystal ring coupled to an auxiliary Purcell-extraction ring, the comb-tooth and squeezed-vacuum mode structure, and finite-element mode profile and dispersion engineering of the 4H-SiC waveguide core." width="960" height="617" loading="lazy">
    <figcaption><b>(a)</b> Photonic molecule: a two-FSR soliton-crystal main ring side-coupled to an auxiliary extraction ring. <b>(b)</b> Even comb teeth, and the odd squeezed-vacuum modes the auxiliary ring reaches. <b>(c–e)</b> Finite-element mode profile of the 1.85 µm × 500 nm 4H-SiC core, and the dispersion engineering that fixes the operating geometry.</figcaption>
  </figure>

  <p>This work develops an open and reproducible pipeline for engineering strongly squeezed quantum states in soliton-crystal microcombs on 4H-silicon-carbide-on-insulator. Full-vector finite-element modeling, Lugiato–Lefever simulation and linearized Heisenberg–Langevin analysis are chained into a single workflow running from material parameters through to experimentally detectable quantum noise. In a single critically coupled resonator the requirement for parametric gain and the requirement for output coupling oppose one another, and detectable squeezing saturates at 3 dB however hard the device is pumped. An auxiliary ring of twice the free spectral range Purcell-extracts the odd-mode quadrature lattice while leaving the classical comb untouched. At a fixed 8.3 mW pump the optimal extraction rate lies near ten cavity linewidths and yields <strong>8.5 dB of detectable squeezing over 1.74 GHz</strong>, in two dominant squeezed supermodes with an entangled odd-mode lattice. Third-order dispersion shifts the crystal repetition rate measurably yet leaves the squeezing unchanged until it destroys the crystal, which answers one of the two open problems the original photonic-molecule proposal left standing; the design of the molecule itself is the other.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/sic-molecule-squeezer" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21471674" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>Imaging single vortices in tantalum superconducting circuits</h3>
  <p class="project-meta">Diamond NV magnetometry · time-dependent Ginzburg–Landau · superconducting-qubit loss<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/nv-vortex-sensing.jpg' | relative_url }}" alt="Three-panel figure: simulated vortex matter in a patterned tantalum film, a pick-and-place diamond micromembrane carrying shallow nitrogen-vacancy centers above the film, and the reconstructed nitrogen-vacancy plane field map." width="1205" height="422" loading="lazy">
    <figcaption><b>Target:</b> vortex matter in a patterned Ta film, from time-dependent Ginzburg–Landau simulation at measured parameters. <b>Platform:</b> a pick-and-place diamond micromembrane with NV centers 6 nm deep, held at 25 nm standoff. <b>Outcome:</b> an NV-plane field map inverted to 13 nm vortex localization, with <em>T</em>₁ and <em>T</em>₂ mapping onto vortex drag and pinning.</figcaption>
  </figure>

  <p>Vortex motion is a confirmed loss channel in the clean-limit tantalum films that hold record transmon coherence, but no probe available today reports which vortex sits where, how strongly it is pinned, and how much it dissipates. The measurement that identified the loss left two questions open: which pinning-site density and geometry suffice, and how pinning can be verified hole by hole rather than inferred from an ensemble-averaged quality factor. This work supplies the quantitative link. Time-dependent Ginzburg–Landau simulation anchored to the measured vortex viscosity generates field-cooled vortex configurations whose stray fields reach <strong>8 mT per vortex at 25 nm standoff</strong>, thousands of times above the noise floor. Physics-informed inversion of the Pearl-vortex kernel <strong>localizes every vortex to about 13 nm</strong> and classifies pinning-site occupancy without error at 10 µs pixel times out to a 300 nm standoff. The two noise channels then separate the two parameters of the loss model: spin relaxation reads the viscous drag, spin-echo dephasing reads the pinning stiffness at a contrast above one thousand, and covariance magnetometry resolves correlated hopping.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/nv-membrane-vortex-sensing" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21498663" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>SPARQ: autonomous triage of solid-state single-photon emitters</h3>
  <p class="project-meta">With the University of Memphis, USA · spiking networks · Hanbury Brown–Twiss instrumentation<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/sparq-emitter-triage.jpg' | relative_url }}" alt="SPARQ architecture: a confocal emitter field feeding Hanbury Brown-Twiss detection, a spiking front-end and a soft actor-critic agent; the physics-in-the-loop training loop with a stochastic twin and WGAN-GP critic; and level-structure graph conditioning across NV, hBN, GaN and SiV platforms." width="926" height="673" loading="lazy">
    <figcaption><b>(a)</b> The closed loop: confocal emitter field → HBT detection → event-driven spiking front-end → soft actor–critic agent with prioritized replay, actuating a per-site photon budget. <b>(b)</b> Physics-in-the-loop training against a stochastic twin, with a WGAN-GP critic as sim-to-real diagnostic. <b>(c)</b> Level-structure graph conditioning that carries the estimator zero-shot across NV, hBN, GaN and SiV platforms.</figcaption>
  </figure>

  <p>Hanbury Brown–Twiss autocorrelation is the minutes-per-site bottleneck in developing solid-state single-photon sources. SPARQ turns it into a closed-loop, event-driven instrument rather than an offline fitting procedure. At its center is a stochastic differentiable twin of the HBT chain, validated against the numerically exact master-equation correlation function at reduced <em>χ</em>² of 0.86 to 1.21. A spiking network trained through the twin's photon-sparse statistics tracks the Monte-Carlo Bayes envelope, <strong>reaches the accuracy of a strong multi-start fit six times faster</strong>, and commits its median decision 312 ms into the exposure at nanojoule energies. Adjoint gradients through the twin co-optimize the measurement protocol with the estimator, worth 2.7 accuracy points at the sparsest budgets. A soft actor–critic agent triages emitter fields <strong>1.7× faster</strong> than quality-matched raster screening.</p>

  <p>An oracle bound of 8.8× establishes that the physics-trained posterior, rather than the sophistication of the policy, is the decisive lever, which is worth stating because it directs subsequent effort. On openly published quantum-dot data the twin-trained estimator transfers zero-shot at twice the accuracy of conventional peak-area analysis, within 24% of the information floor, leaving an adversarial refiner nothing to add. Conditioning on each platform's level structure as a template graph recovers 92% of the oracle transfer gap across nitrogen-vacancy, hexagonal boron nitride, GaN and silicon-vacancy emitters.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/a-spiking-RL-triage-of-solid-state-single-photon-emitters" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21352759" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>PILOT-Q: photon-efficient neural inference at the standard quantum limit</h3>
  <p class="project-meta">With the University of Memphis, USA · photonic computing · shot-noise-limited operation<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/pilotq-photonic-inference.jpg' | relative_url }}" alt="PILOT-Q framework: delocalized photonic inference from a central light server to drone, camera and IoT nodes; one in-physics layer annotated with trim error, shot noise, dark counts and ADC quantization; photon-budget-aware training; and closed-loop confidence-gated operation." width="974" height="706" loading="lazy">
    <figcaption><b>(a)</b> Delocalized photonic inference: one central light server broadcasting weight-encoded light to remote nodes. <b>(b)</b> A single in-physics layer with its four impairments: weight-trim error, standard-quantum-limit shot noise, dark counts and <em>b</em>-bit ADC quantization. <b>(c)</b> Photon-budget-aware training through the stochastic twin. <b>(d)</b> Confidence-gated operation, re-exposing only uncertain inputs at higher photon budget.</figcaption>
  </figure>

  <p>Delocalized photonic inference broadcasts network weights as light to edge clients that perform the matrix–vector product optically. Its useful operating points sit near one photon per multiply–accumulate, where the arithmetic is governed by the shot noise of direct detection, yet such links are trained in clean digital arithmetic and their photon budget is provisioned statically for the hardest input. PILOT-Q closes both loops. A differentiable stochastic twin covering differential-rail detection with exact standard-quantum-limit statistics, dark counts, weight-trim error and quantization is validated against the analytic shot-noise law to within 9% over three orders of magnitude in photon budget. Training through it raises photon-starved accuracy <strong>from 51.6% to 78.6% at one photon per MAC</strong> at no cost to the clean ceiling, and cuts the budget for matched accuracy by <strong>1.4 to 3.1×</strong> on three open benchmarks.</p>

  <p>Two results are reported because they are negative. Shot-noise-aware training alone confers the robustness; sampling the full impairment stack during training adds nothing and costs ceiling accuracy. And an oracle analysis bounds even ideal per-input adaptivity near 2.0× over conventionally trained static provisioning, because accuracy is steep in the photon budget at the quantum limit. Training, not run-time adaptivity, is therefore the substrate-level lever here, which is the opposite of what shallow additive-noise hardware favors.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/photon-budget-aware-closed-loop-operation-of-delocalized-photonic-neural-inference-at-the-SQL" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21326386" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>FabGAN-ID: learned fabrication twins for yield-aware photonic design</h3>
  <p class="project-meta">Generative process models · differentiable CVaR optimization · photonic sensor front-ends<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/fabgan-id-yield-aware.jpg' | relative_url }}" alt="FabGAN-ID pipeline from process traces through a GAN fabrication twin and a differentiable CVaR loop to a yield-qualified sensor, with plots showing the learned twin reproducing heavy error tails and the yield tail lifted by 7.2 percent." width="925" height="706" loading="lazy">
    <figcaption>Process traces feed a conditional GAN fabrication twin, which sits inside a differentiable conditional-value-at-risk loop. <b>Left:</b> the learned twin reproduces the heavy tails of the true thickness-error distribution that Gaussian models miss. <b>Right:</b> the 5% CVaR yield floor of a 532 nm notch filter, lifted by 7.2 points over the nominal design.</figcaption>
  </figure>

  <p>Robust photonic design conventionally assumes Gaussian process variation. FabGAN-ID replaces that assumption with a learned generative fabrication twin placed inside a fully differentiable optimization loop: a conditional, moment-matched Wasserstein GAN learns the joint distribution of fabrication errors from only <strong>400 historical process traces</strong>, capturing the systematic, correlated and heavy-tailed variation that governs yield in practice. Coupled to an exact differentiable physics solver, it enables direct optimization of conditional value-at-risk, <strong>improving the yield floor of a 532 nm fluorescence-rejection notch filter by 7.2%</strong> over the nominal design and outperforming every Gaussian-based robustification method on the true fabrication process. It also supports analytic policy-gradient optimization for specification-conditioned correction policies, where model-free reinforcement learning fails. Released with 48,300 spectra and 400 fabrication traces.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Learned-generative-process-twins-for-yield-aware-inverse-design-of-multilayer-photonic-sensor" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21315794" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<h2 id="quantum-materials-mems">Electrons and phonons in 2D devices</h2>

<p class="section-lead">Conducted with Prof. Md. Mosaddequr Rahman, Department of EEE, BRAC University, from July 2024 to July 2026. This work follows carriers and lattice vibrations through nitride and monolayer channels, from envelope functions and phonon eigenvectors upward to the masses, lifetimes and circuit-level metrics that experiments report, and applies physics-in-the-loop inverse design to micromachined transducers.</p>

<section class="project">
  <h3>Resolving the conflicting hole masses of the GaN/AlN two-dimensional hole gas</h3>
  <p class="project-meta">Six-band envelope functions · self-consistent Poisson · polarization-induced 2DHG · magnetotransport<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/gan-2dhg-hole-masses.png' | relative_url }}" alt="Two panels: the GaN on AlN heterostructure carrying the polarization-induced two-dimensional hole gas with the computed hole distribution inset, and a chart of what quantum oscillations, cyclotron resonance and two-carrier Hall measurement each return, the four places their results disagree, and which of those this work resolves." width="1600" height="873" loading="lazy">
    <figcaption><b>(a)</b> The heterostructure on which all three experiments were performed. The hole gas is balanced by the fixed polarization charge at an atomically sharp interface, giving a confining field of 8.0 MV cm<sup>-1</sup>; the inset shows the hole distribution computed here, of root-mean-square width 0.36 nm. <b>(b)</b> What each probe returns, the four places where the reported parameters disagree, and which of those this work resolves. No device is proposed or fabricated.</figcaption>
  </figure>

  <p>Quantum oscillations in pulsed fields to 72 T, terahertz cyclotron resonance to 31 T and a two-carrier analysis of the Hall effect have all been applied to the same polarization-induced GaN/AlN two-dimensional hole gas, and the band-resolved parameters they return disagree. This work solves the six-band envelope-function problem self-consistently with Poisson's equation at the measured sheet density, with a finite AlN barrier and <strong>no adjustable quantity</strong>, so that any difference in conclusion follows from the analysis rather than from the inputs. The calculation reproduces both measured masses, giving a heavy-hole mass of 1.92 to 1.99 <em>m</em><sub>0</sub> across the published range of the valence band offset against a measured 1.92 ± 0.16 <em>m</em><sub>0</sub>, and a zero-field light-hole mass of 0.26 to 0.33 <em>m</em><sub>0</sub> against the 0.30 <em>m</em><sub>0</sub> obtained by extrapolating the measurement to zero field. The band structure is therefore not in question, and the reported light-hole mass of 0.53 <em>m</em><sub>0</sub> is <strong>a property of the field dependence rather than of the dispersion</strong>. The heavy-hole masses returned by the two magneto-optical probes differ by a third because at the highest field applied the heavy-hole cyclotron product <em>ω</em><sub>c</sub><em>τ</em> is 0.82, so that the resonance is overdamped, whereas the light-hole product is 3.8 and the light masses agree to seven percent.</p>

  <p>Turning to scattering, the ratio of transport to quantum lifetime carries neither the disorder amplitude nor the effective mass, and therefore isolates the range of the disorder; its measured value requires forward-peaked long-range scattering rather than the short-range mechanism to which it has been attributed. With the interband Bloch overlap computed from the envelope functions rather than carried as a parameter, no elastic mechanism reproduces the measured ratios of both subbands, the closest simultaneous account being wrong by a factor of two, which places the two-carrier decomposition of the mobilities itself under question. The density dependence of both masses is predicted as a direct test.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/gan-2dhg-masses-lifetimes" rel="noopener">Code · GitHub</a></li>
  </ul>
</section>

<section class="project">
  <h3>Two Raman phonons that measure edge charge in monolayer nanoribbon transistors</h3>
  <p class="project-meta">Monolayer TMDs · frozen-phonon DFT · tip-enhanced Raman · width scaling<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/raman-edge-charge-nanoribbon.jpg' | relative_url }}" alt="Tip-enhanced Raman measurement of a monolayer nanoribbon transistor, spectra comparing ribbon center and edge, a plot separating edge charge from edge strain, and normalized on-current versus nanoribbon width for two gate stacks." width="1076" height="672" loading="lazy">
    <figcaption><b>(a)</b> Tip-enhanced Raman on a 1H-monolayer nanoribbon channel, with the edge damage halo and band-edge profile inset. <b>(b)</b> At the ribbon edge the A′₁ mode shifts by 0.5 cm⁻¹ while 2LA(M) does not. That is the signature that separates charge from strain. <b>(c)</b> Edge: charge, no strain. Interior: strain, no charge. <b>(d)</b> Width scaling: critical width falls from 252 nm on a 90 nm SiO₂ gate to 18 nm on a thin high-κ gate.</figcaption>
  </figure>

  <p>Patterning a monolayer cuts its lattice, and the exposed edge carries fixed charge and strain together. Neither has been measured separately at such an edge, because one Raman frequency responds to both at once, and without a measured edge charge the width limit of a nanoribbon transistor cannot be predicted. Frozen-phonon density functional theory on the four 1H monolayers MoS<sub>2</sub>, WS<sub>2</sub>, MoSe<sub>2</sub> and WSe<sub>2</sub> makes the strain lever arm of the disorder-activated 2LA(M) overtone several times that of A′₁, while <strong>only A′₁ renormalizes with carrier density</strong>. The pair is therefore an orthogonal probe. Applied to published tip-enhanced Raman maps of patterned MoS<sub>2</sub> nanoribbons it returns an edge excess of <strong>2.3 × 10<sup>12</sup> ± 7.6 × 10<sup>11</sup> cm<sup>-2</sup> of band electrons with strain below 0.03%</strong>, and identifies an interior feature in the same map as pure 0.134% tension carrying no charge.</p>

  <p>Carried into a self-consistent electrostatic and transport model, charge of that size accounts for a reported depletion-to-enhancement transition on thick oxide, yet is electrostatically invisible on a thin high-κ gate, where the damage halo left by the etch instead sets a critical width of 18 nm rather than the 252 nm of the thick-oxide stack. As-grown defect density, inverted here from published disorder-activated Raman ratios, rescales the current a ribbon delivers but barely moves that width. The result is a non-destructive optical route to the electronic state of a patterned edge, needing only two phonon frequencies a nanoscale Raman probe already resolves.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Width-scaling-in-monolayer-semiconductor-nanoribbon-transistors" rel="noopener">Code · GitHub</a></li>
  </ul>
</section>

<section class="project">
  <h3>Strain and ferroelectricity together in WSe<sub>2</sub> nonvolatile logic</h3>
  <p class="project-meta">van der Waals ferroelectrics · two-valley Boltzmann transport · nonvolatile circuits<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/wse2-ferroelectric-fefet.jpg' | relative_url }}" alt="Strained p-type MFMIS ferroelectric field-effect transistor stack with monolayer WSe2 channel and CuInP2S6 gate, a valence-band diagram showing suppressed intervalley scattering under compression, and the multiscale simulation chain." width="1077" height="425" loading="lazy">
    <figcaption><b>(a)</b> Strained p-type MFMIS stack: monolayer WSe<sub>2</sub> channel, h-BN, floating gate and a CuInP<sub>2</sub>S<sub>6</sub> van der Waals ferroelectric under biaxial compression. <b>(b)</b> Compression lowers the Γ valley and suppresses intervalley scattering. <b>(c)</b> The multiscale chain, from strained two-valley transport through multidomain ferroelectric kinetics to nonvolatile-logic metrics.</figcaption>
  </figure>

  <p>Strain engineering and van der Waals ferroelectrics have each advanced two-dimensional electronics, but their combination has not been examined. This work is an end-to-end multiscale study of a p-type ferroelectric field-effect transistor that unites them: a monolayer WSe<sub>2</sub> channel under process-induced biaxial compression, gated through a CuInP<sub>2</sub>S<sub>6</sub> metal-ferroelectric-metal-insulator-semiconductor stack. A two-valley Boltzmann transport model, calibrated against published full-band calculations and strained-transistor measurements, feeds self-consistent electrostatics coupled to a multidomain Preisach and Landau-Khalatnikov description of the ferroelectric. <strong>One percent of compression more than doubles the hole mobility</strong> by suppressing intervalley scattering, and the benefit transfers intact to the nonvolatile domain: retained on-current rises 1.8× while the 1.24 V memory window of a 30 nm stack moves by about three percent. Strain and polarization are therefore independent design variables. At circuit level the resulting complementary nonvolatile inverters and latches restore their state after complete power loss in under 2 ns, <strong>cut worst-case static power by eight orders of magnitude</strong> against the reported resistor-loaded CIPS latch, and gain 2.3× in energy–delay product.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Process-induced-compressive-strain-with-a-van-der-Waals-ferroelectric-gate-in-a-single-device" rel="noopener">Code · GitHub</a></li>
  </ul>
</section>

<section class="project">
  <h3>PARL-ID: fabrication-aware inverse design across MEMS and photonics</h3>
  <p class="project-meta">Physics-informed neural networks · neural adjoint · CVaR reinforcement learning<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/parl-id-inverse-design.jpg' | relative_url }}" alt="PARL-ID three-stage architecture: a multi-physics physics-informed neural network forward surrogate, a neural-adjoint inverse engine, and a reinforcement-learning fabrication loop, validated on a unit-cell CMUT testbench and photonic benchmarks." width="1190" height="688" loading="lazy">
    <figcaption>Three stages: a multi-physics PINN forward surrogate with hard boundary-condition encoding, a neural-adjoint inverse engine performing projected gradient descent over the fabrication-feasible set, and a GCN-SAC fabrication loop whose reward is the tail risk (CVaR) over sampled process corruptions. One architecture, two sensor domains: MEMS ultrasonics and integrated photonics.</figcaption>
  </figure>

  <p>PARL-ID unifies physics-informed neural networks, adjoint optimization and reinforcement learning into a single inverse-design framework for robust sensor design. Validated on CMUTs and on photonic benchmarks, it improves optimization efficiency while producing fabrication-tolerant designs that outperform conventional data-driven inverse design. It is the direct successor to the published CMUT framework described below: whereas that work identified the optimal network hierarchy for a nominal design, the present framework optimizes for designs that remain within specification under process variation.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Fabrication-Aware-Physics-Informed-Adjoint-Framework-With-RL-in-the-Loop-for-Inverse-Design-of-CMUT" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21290617" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>Hierarchical inverse design of unit-cell CMUTs</h3>
  <p class="project-meta">Attentive gated recurrent networks · membrane-displacement maximization<span class="sep">|</span><span class="tag tag-published">Published · IEEE Sensors Journal 2025</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/cmut-hierarchical-inverse-design.jpg' | relative_url }}" alt="Hierarchical inverse-design network: unit-cell CMUT thickness parameters enter a stack of gated recurrent layers, pass through an attention dot-product block and fully connected dense layers, and emerge as an optimized device profile." width="1280" height="641" loading="lazy">
    <figcaption>The hierarchical inverse-design network. Unit-cell CMUT thickness parameters enter a stack of GRU layers, pass through an attention block, and emerge from fully connected dense layers as an optimized device profile. Figure from the <em>IEEE Sensors Journal</em> paper.</figcaption>
  </figure>

  <p>Inverse design automates a procedure that is otherwise a manual parameter sweep over microelectromechanical device profiles. In this published work a probabilistic search algorithm derives the best machine-learning architecture, which turns out to be attentive gated recurrent layers feeding fully connected dense layers. That network maps a target acoustic response back to unit-cell CMUT geometry and maximizes membrane displacement without the exhaustive finite-element sweeps that unit-cell design normally demands.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1109/JSEN.2025.3569424" rel="noopener">Paper · IEEE Sensors Journal</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21290617" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<h2 id="wbg-devices">Differentiable design of GaN circuits</h2>

<p class="section-lead">Conducted with Dr. Nadim Chowdhury, Department of EEE, BUET, from May 2025 to June 2026. This work carries gradients through the compact models and the loop equations of a GaN circuit, so that the circuit may be designed by optimization, and develops reinforcement-learning methods that transfer across process nodes.</p>

<section class="project">
  <h3>Co-designing a monolithic GaN-on-SOI fractional-N PLL</h3>
  <p class="project-meta">200 V GaN-on-SOI · E-mode HEMT varactors · extreme-temperature timing · design partnership with the Palacios Group, MIT<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/gan-soi-pll-codesign.jpg' | relative_url }}" alt="Three panels: manual GaN PLL design failing to reach its 50 MHz target, the co-design engine combining a PINN varactor surrogate with adjoint gradients and reinforcement learning, and the resulting fractional-N synthesizer locking across 218 to 423 kelvin." width="1280" height="646" loading="lazy">
    <figcaption><b>Problem:</b> manual design, with measured parasitics, mismatch and leakage, misses the 50 MHz target and only unlocks above 233 K. <b>Engine:</b> a PINN varactor surrogate <em>C</em>(<em>V</em>,<em>T</em>), a differentiable fractional-N loop and noise model, adjoint gradients over twelve design parameters, a GCN-SAC certificate and WGAN-GP variability, all on an open toolchain of OpenVAF, ngspice and gdstk. <b>Result:</b> a synthesizer locking 10/10 at 46.5 MHz across 218–423 K.</figcaption>
  </figure>

  <p>This work develops a physics-informed machine-learning framework for the automated co-design of a monolithic fractional-N phase-locked loop in 200 V GaN-on-SOI technology. Physics-informed neural networks, adjoint-based gradient optimization and graph-neural reinforcement learning jointly optimize circuit performance, thermal robustness and manufacturability. These three objectives are conventionally traded off manually and in sequence. The resulting PLL shows substantially reduced phase error and jitter, improved lock yield, a compact layout implementation, and reliable fractional-N operation across a wide temperature range.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Physics-Informed-Machine-Learning-and-Adjoint-Co-Design-of-Monolithic-GaN-HEMT-Varactor-PLL" rel="noopener">Code · GitHub</a></li>
  </ul>
</section>

<section class="project">
  <h3>Transferable analog transistor sizing with graph reinforcement learning</h3>
  <p class="project-meta">With GlobalFoundries, Inc., Santa Clara, USA · interval type-2 fuzzy rewards · 180/130/65/45 nm<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/graph-rl-transistor-sizing.jpg' | relative_url }}" alt="Transistor sizing loop: a circuit graph encoded by a graph convolutional network feeds a soft actor-critic agent driving ngspice across open PDKs, with an interval type-2 fuzzy reward and a physics-in-the-loop adjoint supplying exact gradients to the actor." width="1131" height="522" loading="lazy">
    <figcaption>Devices are nodes and nets are edges. A GCN encoder feeds a soft actor–critic agent that drives ngspice across open PDKs at 180/130/65/45 nm. An interval type-2 TSK fuzzy reward with a non-zero footprint of uncertainty shapes the return, while a physics-in-the-loop adjoint supplies exact gradients of a differentiable figure of merit straight to the actor. The pretrained encoder transfers to new topologies.</figcaption>
  </figure>

  <p>Developed with GlobalFoundries, Inc., this work presents a graph-based reinforcement-learning framework for automatic transistor sizing that combines graph convolutional networks, interval type-2 fuzzy reward learning and physics-guided adjoint optimization. Whereas conventional approaches rely on black-box circuit simulation and fixed weighted objectives, the present framework incorporates uncertainty-aware reward modeling and physics-informed gradients, improving both optimization quality and sample efficiency. Validated across multiple technology nodes and amplifier benchmarks, it consistently outperforms existing Bayesian-optimization and reinforcement-learning methods while transferring across circuit topologies.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Physics-Guided-Graph-RL-with-an-Adaptive-Fuzzy-Reward-for-Transferable-Analog-Transistor-Sizing" rel="noopener">Code · GitHub</a></li>
  </ul>
</section>

<h2 id="control-energy">Intelligent grid control</h2>

<p class="section-lead">Conducted with Dr. A. H. M. A. Rahim (retired December 2024) from May 2023 to June 2024. This work develops controllers that adapt their own inference rules, applied to grid-connected machines under fault conditions.</p>

<section class="project">
  <h3>Fuzzy inference with reinforcement learning for DFIG low-voltage ride-through</h3>
  <p class="project-meta">Takagi–Sugeno–Kang inference · doubly-fed induction generators · extreme grid sags<span class="sep">|</span><span class="tag tag-published">Published · JESTECH 2026</span></p>
  <p>Grid stability under fault conditions is the principal constraint on the level of wind generation a network can accommodate. This work couples a Takagi–Sugeno–Kang fuzzy conditional inference engine to reinforcement learning, so that the controller adapts its own rule consequents rather than relying on a fixed rule base. It sustains a doubly-fed induction generator through voltage sags severe enough to defeat conventional ride-through schemes.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1016/j.jestch.2026.102435" rel="noopener">Paper · Elsevier JESTECH</a></li>
  </ul>
</section>

<section class="project">
  <h3>Adaptive fuzzy attention control of a microgrid under grid-bus fault</h3>
  <p class="project-meta">Double Q-learning · prioritized rewards · attention-weighted inference<span class="sep">|</span><span class="tag tag-published">Published · IEEE Trans. Fuzzy Systems 2025</span></p>
  <p>A double Q-learning scheme with prioritized reward drives an attention-weighted fuzzy inference controller, keeping a microgrid stable through an extreme fault on the grid bus. This is the regime in which fixed-gain controllers fail, because the operating point departs further from nominal than their tuning assumes.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1109/TFUZZ.2025.3539325" rel="noopener">Paper · IEEE TFS</a></li>
  </ul>
</section>

<h2 id="photovoltaics">Photovoltaic modeling: from cell physics to systems</h2>

<p class="section-lead">Conducted with Dr. A. H. M. A. Rahim and Prof. Md. Mosaddequr Rahman between 2023 and 2026. A custom-built bifacial module was characterized experimentally and then modeled from the one-diode equations upward.</p>

<section class="project">
  <h3>Weather-responsive efficiency model for a custom-built bifacial panel</h3>
  <p class="project-meta">One-diode model · air-pressure and humidity terms · multiple cell technologies<span class="sep">|</span><span class="tag tag-published">Published · IEEE J. Photovoltaics 2024</span></p>
  <p>Standard efficiency-rating models account only for irradiance and ambient temperature. Starting from the derivation of the one-diode model toward a photovoltaic efficiency rating, this work introduces air pressure and humidity as additional, carefully constructed dimensions, and validates the resulting model against modules based on several different cell technologies, including a bifacial panel constructed and characterized in-house.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1109/JPHOTOV.2024.3421252" rel="noopener">Paper · IEEE JPV</a></li>
    <li><a class="chip chip-paper" href="https://doi.org/10.1109/TENSYMP55890.2023.10223485" rel="noopener">Panel build · IEEE TENSYMP</a></li>
  </ul>
</section>

<section class="project">
  <h3>Mono- and bifacial photovoltaic technologies compared</h3>
  <p class="project-meta">TOPCon · silicon heterojunction · next-generation bifacial cells<span class="sep">|</span><span class="tag tag-published">Published · IEEE J. Photovoltaics 2024</span></p>
  <p>Next-generation bifacial cells are central to the development of high-efficiency modules. This review compares the emerging technologies, including TOPCon and silicon heterojunction, with their monofacial equivalents on a common basis.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1109/JPHOTOV.2024.3366698" rel="noopener">Paper · IEEE JPV</a></li>
  </ul>
</section>

<section class="project">
  <h3>Agrivoltaics: challenges and prospects</h3>
  <p class="project-meta">Dual land use · standards · community acceptance · policy<span class="sep">|</span><span class="tag tag-published">Published · Adv. Energy Sustain. Res. 2026</span></p>
  <p>Agri-photovoltaics enables the dual use of land for agriculture and electricity generation. This review surveys recent agri-PV prospects across continents, together with the standards, community-acceptance and policy questions that determine whether the economic benefit reaches the farmers working beneath the arrays.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1002/aesr.202500227" rel="noopener">Paper · Wiley AESR (open access)</a></li>
  </ul>
</section>
