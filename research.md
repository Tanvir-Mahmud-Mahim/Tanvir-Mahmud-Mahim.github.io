---
layout: page
title: "Research"
subtitle: "Device physics modeled from first principles, and inverted to determine the designs that meet a specification."
permalink: /research/
description: "Research of Tanvir Mahmud Mahim: squeezed-light photonics and NV sensing, electrons and phonons in 2D devices, differentiable design of GaN circuits, intelligent grid control, and photovoltaic modeling. Code and data released openly."
---

The projects below are grouped into the four lines of work named in my curriculum vitae, followed by the photovoltaic modeling that preceded them. All of them rest on the same spine. Electronic structure is obtained from density functional theory and Wannier interpolation; carrier and phonon transport from envelope functions, self-consistent electrostatics and Boltzmann theory; electromechanical and optical response from finite-element multiphysics; and terminal behavior from compact models exercised in a circuit simulator and committed to layout. Nothing is fitted where it can be computed.

Because that spine is differentiable from end to end, it does two jobs. Run forward it settles what a measurement means, which matters most where independent experiments on one sample return numbers that contradict each other. Run backward it converts a specification into a geometry, and holds the result to the variation a real fabrication run would impose rather than to a nominal tolerance. Adjoint methods, learned generative process twins and reinforcement learning supply the search; the physics supplies the gradients.

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

  <p>This work develops an open and reproducible pipeline for engineering strongly squeezed quantum states in soliton-crystal microcombs on 4H-silicon-carbide-on-insulator. Full-vector finite-element modeling, Lugiato–Lefever simulation and linearized Heisenberg–Langevin analysis are chained into a single workflow running from material parameters through to experimentally detectable quantum noise. Conventional resonator coupling limits extractable squeezing to 3 dB. Introducing an auxiliary Purcell-extraction ring, which selectively opens a channel to the below-threshold squeezed modes, raises this limit. The optimized design reaches <strong>8.5 dB of detectable squeezing across a 1.74 GHz band</strong> at fixed pump power, while generating dominant squeezed supermodes and entangled quadrature lattices.</p>

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

  <p>This work develops an open-source simulation framework for a nanoscale quantum sensing platform that characterizes vortex dynamics in superconducting tantalum circuits <em>in situ</em>. Time-dependent Ginzburg–Landau simulation, physics-informed inversion and nitrogen-vacancy magnetometry combine to localize individual vortices, identify their pinning states and quantify the dissipation they produce. This provides a route to the systematic study of the vortex-induced losses that limit superconducting quantum devices.</p>

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

  <p>SPARQ reformulates Hanbury Brown–Twiss autocorrelation measurement as a closed-loop, event-driven instrument rather than an offline fitting procedure. At its center is a stochastic differentiable digital twin of the HBT measurement chain, validated against numerically exact master-equation solutions. A spiking neural network trained through that twin matches the accuracy of computationally intensive multi-start fitting while <strong>cutting measurement latency by 6×</strong> and supporting energy-efficient anytime inference. Adjoint optimization tunes excitation power, correlation window and estimator together, an effect that is most pronounced under photon-starved conditions. A soft actor–critic agent with prioritized experience replay then chooses which emitter to measure next, <strong>accelerating large-area screening by 1.7×</strong>. The framework transfers zero-shot to public quantum-dot data and, through platform-randomized graph conditioning, generalizes across emitter platforms it never saw in training.</p>

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

  <p>PILOT-Q addresses inference on optical hardware in which each multiply–accumulate operation is carried by only a few photons. A differentiable stochastic twin of the optical broadcast chain models standard-quantum-limit shot noise, dark counts, residual weight-trim error and quantization. Training through it lifts photon-starved accuracy <strong>from 51.6% to 78.6% at one photon per MAC</strong>, and reduces the photon budget needed for matched accuracy by <strong>1.4–3.1×</strong> across three public benchmarks. A confidence-gated controller reallocates photons to uncertain inputs. Oracle analysis shows that the dominant gain arises from physics-aware training rather than from run-time adaptivity. This is a negative result, and it is reported explicitly because it directs subsequent effort toward the training procedure rather than the run-time controller.</p>

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
    <img src="{{ '/assets/images/research/gan-2dhg-hole-masses.png' | relative_url }}" alt="Two panels: the GaN on AlN heterostructure carrying the polarization-induced two-dimensional hole gas with the computed hole distribution inset, and a chart of what quantum oscillations, cyclotron resonance and two-carrier Hall measurement each return, the four places their results disagree, and which of those this work resolves." width="1550" height="794" loading="lazy">
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

  <p>Edge charge and edge strain both shift the Raman lines of monolayer transition-metal dichalcogenide nanoribbons, and distinguishing between them is the step that converts a spectroscopic observation into a quantitative electrostatic diagnostic. First-principles frozen-phonon calculations show that the <strong>2LA(M) mode is strongly strain-sensitive while A′₁ responds mainly to carrier density</strong>. Two phonons give two independent readouts. Applied to tip-enhanced Raman data, the method quantifies edge charge accumulation and finds negligible edge strain, which explains the observed width-scaling behavior. Edge charge governs the depletion-to-enhancement transition on thick-oxide devices, while on high-κ gated transistors the critical width is set by patterning-induced damage rather than intrinsic defects. This distinction determines the appropriate corrective action in a process flow.</p>

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

  <p>This work develops a multiscale simulation framework for a strain-engineered ferroelectric field-effect transistor built from a monolayer WSe<sub>2</sub> channel and a CuInP<sub>2</sub>S<sub>6</sub> van der Waals ferroelectric gate stack, coupling a calibrated two-valley Boltzmann transport model to self-consistent electrostatics and multidomain ferroelectric dynamics. <strong>One percent biaxial compressive strain more than doubles hole mobility</strong> and raises retained on-current by 1.8× while leaving the memory window intact. This indicates that strain and ferroelectric polarization act as independent design parameters rather than competing ones. At circuit level, the resulting complementary nonvolatile inverters and latches recover their state after complete power loss, <strong>cut worst-case static power by eight orders of magnitude</strong> against prior CIPS latches, and improve the energy–delay product by 2.3×.</p>

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
