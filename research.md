---
layout: page
title: "Research"
subtitle: "Device physics carried through the instrument, so that the model ends at the number a measurement returns."
permalink: /research/
description: "Research of Tanvir Mahmud Mahim: squeezed-light microcombs, diamond quantum sensing and photonic machine learning; GaN and 2D semiconductor devices and physics-guided design; and learning-based grid control and bifacial photovoltaics. Code and data released openly."
---

Each project below is built as a single description that runs from a material's electronic structure to the quantity an instrument reports: nothing is fitted where it can be computed. And because the model's sensitivities can be traced end to end, the chain also runs in reverse: to recover a hidden quantity from data, or to turn a target specification into a geometry.

Work marked <span class="tag tag-review">Under review</span> is currently in peer review. The <a href="{{ '/publications/' | relative_url }}">Publications</a> page lists only accepted records. Code and datasets are released openly as each project reaches maturity.

<h2 id="quantum-optics">Squeezed-light microcombs, diamond quantum sensing and photonic machine learning</h2>

<p class="section-lead">Conducted with Dr. A. S. M. Mohsin, Department of EEE, BRAC University, since January 2025. This work develops models of quantum photonic hardware, together with learned controllers that close the loop around it: squeezed-light sources, nitrogen-vacancy (NV) diamond magnetometers and single-photon instruments.</p>

<section class="project">
  <h3>Overcoming the 3 dB squeezing extraction limit in silicon-carbide microcombs</h3>
  <p class="project-meta">4H-SiC-on-insulator · soliton crystals · continuous-variable quantum optics<span class="sep">|</span><span class="tag tag-published">Published · Optics Express 2026</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/sic-microcomb-squeezing.jpg' | relative_url }}" alt="Photonic-molecule geometry with a main soliton-crystal ring coupled to an auxiliary Purcell-extraction ring, the comb-tooth and squeezed-vacuum mode structure, and finite-element mode profile and dispersion engineering of the 4H-SiC waveguide core." width="960" height="617" loading="lazy">
    <figcaption><b>(a)</b> Photonic molecule: a two-FSR soliton-crystal main ring side-coupled to an auxiliary extraction ring. <b>(b)</b> Even comb teeth, and the odd squeezed-vacuum modes the auxiliary ring reaches. <b>(c–e)</b> Finite-element mode profile of the 1.85 µm × 500 nm 4H-SiC core, and the dispersion engineering that fixes the operating geometry.</figcaption>
  </figure>

  <p>Squeezed light is light whose noise, in the right measurement, falls below the usual quantum limit, a resource for precision measurement and quantum computing. This work builds an open, reproducible pipeline for producing strongly squeezed light in microcombs (micro-rings that turn one pump laser into many evenly spaced colors) on 4H-silicon-carbide-on-insulator. Modeling of the waveguide, simulation of the comb dynamics (Lugiato–Lefever) and a linearized quantum-noise analysis are chained into one workflow, running from material parameters to the noise a detector would record. A single ring faces a built-in trade-off: the coupling that builds up light inside the ring and the coupling that lets the squeezing out oppose each other, so detectable squeezing stalls at 3 dB no matter how hard the ring is pumped. The fix is a second, auxiliary ring, with resonances spaced twice as far apart, which pulls the squeezed modes out while leaving the classical comb untouched. At a fixed 8.3 mW pump, the best extraction rate lies near ten cavity linewidths, and the full two-ring model predicts <strong>7.9 dB of detectable squeezing over 1.81 GHz</strong>, rising to 8.5 dB near the boundary of comb stability, and concentrated in two dominant squeezed supermodes with an entangled odd-mode lattice. One more result: third-order dispersion shifts the comb's repetition rate measurably, yet leaves the squeezing unchanged right up to the point where it destroys the soliton crystal. Together with the explicit two-ring design, that answers the two open problems the original photonic-molecule proposal left standing: how much higher-order dispersion the squeezing tolerates, and the design of the molecule itself.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1364/OE.612248" rel="noopener">Paper · Optics Express (open access)</a></li>
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/sic-molecule-squeezer" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21995634" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>Listening to vortex noise: which trapped vortices cause loss in tantalum qubits</h3>
  <p class="project-meta">Diamond NV spin sensors · vortex noise · superconducting-qubit loss<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/nv-vortex-noise-loss.png' | relative_url }}" alt="Three parts: a tantalum film with holes under a diamond membrane, holding flux in a hole (no core, silent) and a vortex between holes (moving core, noisy); simulated static field and spin relaxation maps of a 2 by 2 micrometre film, where all trapped flux is bright in the field map but only the vortices between holes are bright in the noise map; and the link from NV noise to microwave loss per vortex." width="1600" height="598" loading="lazy">
    <figcaption><b>Left:</b> after cooling in a small magnetic field, a tantalum film holds two kinds of trapped flux. Flux held in a hole has no core and stays silent. A vortex between holes has a core that moves, so it makes noise. A diamond membrane with NV spin sensors sits on top. <b>Middle:</b> a simulated 2 × 2 µm film. In the static field map every trapped flux quantum is bright. In the noise map (spin relaxation, 1/<em>T</em>₁) only the vortices between holes light up. <b>Right:</b> the fluctuation–dissipation theorem turns the measured noise into the microwave loss that each vortex adds.</figcaption>
  </figure>

  <p>Vortices are tiny whirlpools of magnetic flux. They get trapped when a superconducting film is cooled in a stray magnetic field. When a microwave current pushes a vortex, its core moves and wastes energy. This loss has been seen in tantalum, the film used in record-coherence qubits, and patterned holes reduce it. But a resonator measurement gives only the total loss. It cannot say which trapped flux is lossy. A static magnetic image cannot say either: flux held in a hole and a vortex between holes look alike from above.</p>

  <p>This work shows that the noise of a vortex answers the question, and also measures its loss. A basic law of physics, the fluctuation–dissipation theorem, says that anything that absorbs energy when driven must also jitter on its own. So a lossy vortex is noisy, and flux held in a hole is silent. A diamond spin sensor (a nitrogen-vacancy, or NV, centre) can hear this noise. The calculation uses measured tantalum values, plus an assumed film thickness and penetration depth, which are scanned. It finds that one moving vortex makes an NV spin 50 nm away relax at <strong>1.4 × 10<sup>5</sup> per second at 2 K, about 6,000 times the rate caused by the superconducting film's own noise</strong>. Simulations of cooled films confirm the picture. Flux held in holes is as bright as a vortex in a static image, but adds no noise. Under a 5 GHz drive, each vortex between holes wastes energy within 6% of the textbook value for a freely moving vortex, while flux held in a hole wastes at most 9% as much.</p>

  <p>For vortices held only weakly in place, the noise therefore works as a calibrated loss meter, with no free parameter. In a test on noisy simulated data, it recovered the loss of each vortex within 1.5% whenever the vortex's pinning frequency was below about 2 GHz. It also gives a design rule. Stronger pinning lowers the loss only if it pushes the pinning frequency above the qubit frequency. For a 5 GHz qubit on tantalum, that needs a pinning stiffness above 2.3 × 10<sup>−4</sup> N/m. Holes work differently, because they hold flux without a core. In simulated 2 × 2 µm films at one cooling field, holes cut the number of lossy vortices from 19 to 2 or 3, although the count also depends on how the film is cooled. The proposed experiment needs only parts that already exist. It would count the lossy vortices at 2 K and predict their loss before the qubit is cooled to millikelvin temperatures, assuming the vortex drag does not change with temperature.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/nv-membrane-vortex-sensing" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.23022201" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>SPARQ: autonomous triage of solid-state single-photon emitters</h3>
  <p class="project-meta">With the University of Memphis, USA · spiking networks · adaptive photon-correlation measurement<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/sparq-hbt-triage-pipeline.png' | relative_url }}" alt="Measurement pipeline: a laser excites one candidate site, the light is split onto two single-photon detectors and a time tagger builds the photon-pair histogram; an early-decision estimator and an exposure controller decide to keep measuring, certify or reject. Below: the spiking network's running estimate for a single emitter and for three emitters; the simulator that makes the training data; and the level-structure graphs that tell the estimator the emitter type." width="1600" height="1042" loading="lazy">
    <figcaption><b>(a)</b> The measurement. A laser excites one candidate site. The light is split onto two single-photon detectors, and a time tagger builds up the photon-pair histogram <em>g</em><sup>(2)</sup>(<em>τ</em>), shown after 0.1 s and 1 s. An estimator updates the chance that the site is a single emitter while the data come in. An exposure controller then decides to keep measuring, certify the site, or reject it. <b>(b)</b> The spiking network's estimate after each 31 ms slice of a 1 s exposure, for a simulated single emitter (<em>g</em><sup>(2)</sup>(0) = 0.10) and for three emitters together (0.79). <b>(c)</b> A three-level emitter model drives the photon-counting simulator that makes the training data. Small graphs of each emitter type's energy levels tell one estimator which type it is measuring.</figcaption>
  </figure>

  <p>A single-photon emitter gives out light one photon at a time, and many quantum technologies need one. A sample holds many candidate spots, and only a minority are single emitters. The standard test, the Hanbury Brown–Twiss measurement, splits the light onto two detectors and records the time gaps between photons arriving at each. It is slow, because the useful photon pairs build up at a rate set by the square of the brightness. This work asks how much of that time can be saved.</p>

  <p>Three parts work together. A spiking neural network reads the photon data in short slices and updates its verdict after each one, so it can decide early. A reinforcement-learning controller chooses, spot by spot, whether to measure longer, certify, or reject. A small graph of each emitter type's energy levels lets one estimator handle several types. All parts are trained on simulated data from a standard emitter model, which is first checked against the exact solution.</p>

  <p>In simulation, the spiking network reaches the 90% accuracy target with <strong>6 times less measuring time than a standard least-squares fit</strong>. It can also decide early: typically 312 ms into a 1 s exposure, at 86% accuracy. In the closed-loop tests, a standard (non-spiking) network supplied the estimates. Adapting the time spent on each spot then screens simulated 48-spot fields <strong>1.7 times faster</strong> than a fixed scan, at the same quality. On four emitter types it never saw in training, the energy-level graphs close most of the accuracy gap to a model trained on those types, also in simulation. On real published data from a quantum dot, a network trained only on simulated data estimated the purity value <em>g</em><sup>(2)</sup>(0) from 30 s records with <strong>half the error of the usual peak-area analysis</strong>.</p>

  <p>The paper also reports what did not help. A simple rule that stops once the estimate is confident was faster still: 3.8 times faster than the fixed scan, against 1.7 times for the learned controller. The spiking network showed no energy advantage. The closed-loop results are in simulation only.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/a-spiking-RL-triage-of-solid-state-single-photon-emitters" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21352758" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>PILOT-Q: photon-efficient neural inference at the standard quantum limit</h3>
  <p class="project-meta">With the University of Memphis, USA · photonic computing · shot-noise-limited operation<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/pilotq-thin-client-receiver.png' | relative_url }}" alt="Device-level drawing of the edge device's receiver: weight-encoded light from a fiber passes a silicon Mach-Zehnder modulator with a thermo-optic heater, then a splitter feeds a balanced pair of germanium photodiodes whose difference charge is digitized; red labels mark trim error, shot noise and dark current, and quantization." width="1600" height="1078" loading="lazy">
    <figcaption>The edge device's receiver, drawn from standard silicon-photonic parts. <b>(a)</b> Weight-encoded light arrives by fiber and passes a Mach–Zehnder modulator, which is driven by the input. Drift of the heater that sets its operating point causes the weight (trim) error. <b>(b)</b> A splitter sends the light to a balanced pair of germanium photodiodes. The difference of their charge is digitized by a <em>b</em>-bit converter. Red labels mark where each impairment enters: trim error, shot noise and dark current, and quantization.</figcaption>
  </figure>

  <p>In delocalized photonic inference, a central server sends a neural network's weights as light to small edge devices, which do the multiplications optically. These links work at about one photon per multiplication. There, shot noise, the unavoidable randomness of counting photons, controls the result. Yet such links run models trained with clean digital arithmetic. They also give every input the same photon budget, sized for the hardest one.</p>

  <p>PILOT-Q builds a noise model of the receiver that a network can be trained through. It covers shot noise at the quantum limit, dark counts, weight errors and digitizing. It matches the textbook shot-noise law within 9% over more than two orders of magnitude in photon budget. In simulation, training through it <strong>cuts the photons needed for the same accuracy by 1.4 to 3.1 times</strong> on three open benchmarks. With all impairments on, at one photon per multiplication, accuracy on spoken digits rises <strong>from 51.6% to 78.6%</strong>. Clean accuracy drops by at most 1.7 points.</p>

  <p>Two results are negative, and useful. Adding the other hardware faults during training made results worse: shot noise alone gives the robustness. And a controller that re-measures only uncertain inputs adds little. On handwritten digits (MNIST), even a perfect controller that re-measures once, and knows which inputs will be wrong, could save only about 2 times. At the quantum limit, training matters more than run-time tricks. The photon savings lower the server's laser power and the measuring time; the edge device's own energy is set by its electronics.</p>

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

  <p>Designs that must survive manufacturing variation are usually optimized against the assumption that the variation is Gaussian (bell-shaped and independent). Real fabrication error is not: it is systematic, correlated and heavy-tailed, and that is what actually governs yield. FabGAN-ID learns the real distribution from the factory's own record, using a generative network (a conditional, moment-matched Wasserstein GAN) trained on only <strong>400 historical process traces</strong>. Placed inside a fully differentiable optimization loop with an exact physics solver, the learned model lets the designer optimize the worst-case tail of the yield directly (conditional value-at-risk). That <strong>improves the yield floor of a 532 nm fluorescence-rejection notch filter by 7.2%</strong> over the nominal design, and outperforms every Gaussian-based robustification method on the true fabrication process. It also supports analytic policy-gradient optimization of specification-conditioned correction policies, where model-free reinforcement learning fails. Released with 48,300 spectra and 400 fabrication traces.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Learned-generative-process-twins-for-yield-aware-inverse-design-of-multilayer-photonic-sensor" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21315794" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<h2 id="quantum-materials-mems">GaN and 2D semiconductor devices and physics-guided design</h2>

<p class="section-lead">Conducted with Prof. Md. Mosaddequr Rahman, Department of EEE, BRAC University, from July 2024 to July 2026. This work follows charge carriers and lattice vibrations (phonons) through nitride and single-layer semiconductor channels, from the underlying quantum states up to the masses, lifetimes and circuit-level numbers experiments report, and applies physics-in-the-loop inverse design to micromachined transducers. A collaboration with Dr. Nadim Chowdhury at BUET carries the same physics-guided approach into circuit design, described at the end of this section.</p>

<section class="project">
  <h3>Origin of the conflicting hole masses in the GaN/AlN two-dimensional hole gas</h3>
  <p class="project-meta">Six-band band structure · self-consistent electrostatics · Landau levels · two-subband transport<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/gan-2dhg-conflicting-masses.png' | relative_url }}" alt="Two panels: the GaN on AlN layer stack carrying the two-dimensional hole gas, with the computed hole distribution inset; and a chart of what quantum oscillations, cyclotron resonance and two-carrier Hall measurements each report, the four places their results disagree, and how this work accounts for each." width="1600" height="864" loading="lazy">
    <figcaption><b>(a)</b> The layer stack used in the quantum-oscillation and Hall measurements. The holes sit at an atomically sharp GaN/AlN interface, held there by fixed polarization charge, in a field of 8.0 MV cm<sup>−1</sup>. The inset shows the computed hole distribution: centred 0.43 nm from the interface and 0.36 nm wide. <b>(b)</b> What each measurement reports, the four places where the results disagree, and how this work accounts for each. No device is proposed or fabricated.</figcaption>
  </figure>

  <p>A two-dimensional hole gas is a thin sheet of positive charge carriers (holes) trapped at an interface. The one at a GaN/AlN interface could give GaN the p-type transistors that GaN logic circuits need. Three experiments have measured it: quantum oscillations in magnetic fields up to 72 T, terahertz cyclotron resonance up to 31 T, and a two-carrier analysis of the Hall effect. Their results disagree. The heavy-hole mass is 1.92 <em>m</em><sub>0</sub> in one and 2.6 <em>m</em><sub>0</sub> in another (<em>m</em><sub>0</sub> is the mass of a free electron). The light-hole mass, 0.53 <em>m</em><sub>0</sub>, is about twice what theory gives. And the scattering behind the measured mobilities has not been pinned down.</p>

  <p>This work solves the standard six-band model of the valence band together with the electrostatics, at the measured hole density, using published parameters. The heavy-hole mass comes out at <strong>1.92 to 1.99 <em>m</em><sub>0</sub>, matching the measured 1.92 ± 0.16 <em>m</em><sub>0</sub> with nothing adjusted</strong>. The cyclotron value differs because that resonance is overdamped: the heavy holes scatter before they finish enough of an orbit (<em>ω</em><sub>c</sub><em>τ</em> = 0.82 at 31 T, below the value of one a clean resonance needs).</p>

  <p>The light holes carry one real discrepancy. The measured densities and both measured light-hole masses need a light-hole band about one and a half times heavier than calculated. Of all the band parameters, only one, called <em>A</em><sub>6</sub>, can do this without disturbing the heavy holes. Rescaled to fit, it also matches the light-hole mass measured on a second sample, and it gives a mass that rises with magnetic field, by up to 58% of the reported rise. The value it needs is at or slightly beyond the limit the model allows, so it is treated as an effective parameter. An independent measurement of <em>A</em><sub>6</sub> would test it.</p>

  <p>For scattering, no single mechanism explains both subbands at once. The heavy-hole quantum mobility had been estimated from the field where its oscillations first appear. That overestimates it, because the heavy holes carry most of the current. A fit of the published oscillations gives <strong>95 cm<sup>2</sup> V<sup>−1</sup> s<sup>−1</sup> instead of 167 to 200</strong>. With this value, the four measured mobilities fix the kind of disorder. On top of interface roughness, there is smooth, long-range disorder that needs charged line defects threading the hole gas, together with a flatter component. The two-carrier Hall analysis is not the cause of the disagreement.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/gan-2dhg-masses-lifetimes" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21791358" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>Two Raman phonons that measure edge charge in monolayer nanoribbon transistors</h3>
  <p class="project-meta">Monolayer TMDs · frozen-phonon DFT · tip-enhanced Raman · width scaling<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/raman-two-phonon-edge-charge.png' | relative_url }}" alt="Four panels: a monolayer nanoribbon transistor probed by tip-enhanced Raman, with the damage halo and band-edge profile inset; Raman spectra at the ribbon centre and edge; a strain-charge plot separating edge charge from interior strain; and normalized on-current versus nanoribbon width for a thin high-k gate and a 90 nm SiO2 gate." width="1600" height="1012" loading="lazy">
    <figcaption><b>(a)</b> The device: one monolayer ribbon of width <em>W</em> on a gated stack. The etch leaves rough edges and a damaged strip beside each edge, and the fixed charge sits on the edges. The inset sketches the resulting band edge across the ribbon. <b>(b)</b> At the edge, the A′₁ Raman peak shifts by 0.5 cm⁻¹, while the 2LA(M) peak does not. <b>(c)</b> Each peak gives one line in the strain–charge plane. Where the lines cross, the edge has charge but no strain, and an interior spot has strain but no charge. <b>(d)</b> The critical width, where a ribbon loses half its current per width, is 18 nm on a thin high-κ gate and 252 nm on a 90 nm SiO₂ gate.</figcaption>
  </figure>

  <p>Cutting a single-layer semiconductor into a ribbon leaves an edge, and that edge carries fixed electric charge and strain together. A single Raman peak shifts with both, so one peak cannot tell them apart. And without a measured edge charge, nobody can predict how narrow a ribbon transistor can usefully be made.</p>

  <p>The way out is to use two peaks. First-principles calculations on four single-layer materials (MoS<sub>2</sub>, WS<sub>2</sub>, MoSe<sub>2</sub> and WSe<sub>2</sub>) show that the 2LA(M) peak responds several times more strongly to strain than the A′₁ peak. Published measurements show that <strong>A′₁ shifts with charge</strong>. No such measurement exists for 2LA(M), so its charge response is bounded rather than assumed to be zero. Applied to published nanoscale Raman maps of MoS<sub>2</sub> ribbons, this gives what is, to our knowledge, the first measured edge charge for such a ribbon: <strong>an excess of 2.3 × 10<sup>12</sup> ± 7.6 × 10<sup>11</sup> electrons per cm<sup>2</sup>, with strain below 0.03%</strong>. A spot inside the same map turns out to be pure strain (0.134% tension) with no charge.</p>

  <p>In a transistor model, charge of this size matches the width at which a reported switch from normally-on to normally-off operation began on thick oxide, and its direction, but not its full size. On a thin gate insulator with high permittivity (a high-κ gate), the same charge has almost no effect. There, for a gentle etch, the damaged strip left by the etch sets the limit instead. It gives a critical width of 18 nm, just below the narrowest ribbons made so far (25 nm). On a 90 nm SiO<sub>2</sub> gate the critical width is 252 nm. With nothing fitted, the same model predicts the measured current of two published n-type ribbon transistors within 3% and 26%. It over-predicts a p-type one 3.8 times, which the paper traces to a barrier at its contacts. Film quality changes how much current a ribbon carries, but barely moves its critical width. The method needs only two peak positions that a nanoscale Raman probe already measures.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Width-scaling-in-monolayer-semiconductor-nanoribbon-transistors" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22053747" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>What sets the memory window of a 2D ferroelectric transistor</h3>
  <p class="project-meta">CuInP<sub>2</sub>S<sub>6</sub> ferroelectric · monolayer WSe<sub>2</sub> · memory window · strain and interface traps<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/wse2-cips-mfmis-fefet.png' | relative_url }}" alt="Device concept: a strained monolayer WSe2 channel under h-BN, a floating metal gate, a 30 nm CuInP2S6 ferroelectric and a top gate, with a legend of the layers; the light K and heavy Gamma valence-band valleys, pushed apart by compression; and the simulation chain from strained transport to nonvolatile logic." width="1600" height="696" loading="lazy">
    <figcaption><b>(a)</b> The device: a monolayer WSe<sub>2</sub> channel under biaxial compression, 10 nm of h-BN, a floating metal gate, a 30 nm CuInP<sub>2</sub>S<sub>6</sub> (CIPS) ferroelectric layer and a top gate. The stressor layer is schematic. <b>(b)</b> The light K and heavy Γ valleys of the WSe<sub>2</sub> valence band. Compression pushes them apart and suppresses scattering between them. <b>(c)</b> The simulation chain, from strained transport to nonvolatile logic.</figcaption>
  </figure>

  <p>A ferroelectric transistor stores a bit in the direction of a ferroelectric layer's polarization. Its memory window is the gap between its two threshold voltages, one for each stored state. CIPS is a layered ferroelectric that has been stacked on several two-dimensional channels. A natural question is which properties of the channel can change the window.</p>

  <p>This work derives a simple formula for the window, read at a fixed current. It holds when the internal floating gate is an ideal conductor, the ferroelectric carries no extra charge, and the current depends on the channel in the same way on both sweeps. Then the channel's own properties cancel out. The window depends only on the ferroelectric thickness, its switched polarization, and the charge trapped at the channel surface. In simulation the formula agrees with the full model to 0.02%, even while strain changes the hole mobility 26-fold. This checks the maths of the model, not the physics.</p>

  <p>The channel still matters, but only in limited ways. It acts through the polarization left behind after programming. The window stays independent of the channel only when two things hold. The channel must take on charge about ten times more easily than the h-BN layer at full programming. And the read current must stay below the point where switching starts. On the channel side, trapped interface charge is the main limit: the window loses less than 6% up to about 10<sup>12</sup> traps per cm<sup>2</sup> per eV, a level that clean h-BN interfaces meet.</p>

  <p>In the model, strain therefore becomes a pure transport knob. At 1% compression, the hole mobility rises 2.38 times and the stored read current <strong>1.90 times, while the 1.434 V window moves by only 0.22%</strong>. Projected circuits, with an assumed n-type partner transistor, keep their state through power loss, with a static noise margin of 642 mV. Their worst-case static power is 5.0 fW, against 1.8 µW if the same stage used the 5 MΩ load resistor of an earlier CIPS inverter. The work is theoretical: no device was made. It proposes a single fabrication run that could prove these predictions wrong.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Process-induced-compressive-strain-with-a-van-der-Waals-ferroelectric-gate-in-a-single-device" rel="noopener">Code · GitHub</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.22084359" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<section class="project">
  <h3>PARL-ID: fabrication-aware inverse design across MEMS and photonics</h3>
  <p class="project-meta">Physics-informed neural networks · neural adjoint · CVaR reinforcement learning<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/parl-id-inverse-design.jpg' | relative_url }}" alt="PARL-ID three-stage architecture: a multi-physics physics-informed neural network forward surrogate, a neural-adjoint inverse engine, and a reinforcement-learning fabrication loop, validated on a unit-cell CMUT testbench and photonic benchmarks." width="1190" height="688" loading="lazy">
    <figcaption>Three stages: a multi-physics PINN forward surrogate with hard boundary-condition encoding, a neural-adjoint inverse engine performing projected gradient descent over the fabrication-feasible set, and a GCN-SAC fabrication loop whose reward is the tail risk (CVaR) over sampled process corruptions. One architecture, two sensor domains: MEMS ultrasonics and integrated photonics.</figcaption>
  </figure>

  <p>PARL-ID unifies physics-informed neural networks, adjoint (gradient-based) optimization and reinforcement learning into a single framework for designing sensors that stay within specification when manufacturing varies. Validated on micromachined ultrasound transducers (CMUTs) and on photonic benchmarks, it improves optimization efficiency while producing fabrication-tolerant designs that outperform conventional data-driven inverse design. It is the direct successor to the published CMUT framework described below: that work identified the best network architecture for a nominal design; this one optimizes for designs that survive process variation.</p>

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

  <p>Designing a micromachined ultrasound transducer normally means a manual sweep over device profiles. In this published work, a probabilistic search first identifies the machine-learning architecture best suited to the task (attentive gated recurrent layers feeding fully connected dense layers), and that network then maps a target acoustic response back to unit-cell CMUT geometry, maximizing membrane displacement without the exhaustive finite-element sweeps that unit-cell design normally demands.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1109/JSEN.2025.3569424" rel="noopener">Paper · IEEE Sensors Journal</a></li>
    <li><a class="chip chip-data" href="https://doi.org/10.5281/zenodo.21290617" rel="noopener">Data · Zenodo</a></li>
  </ul>
</section>

<p class="section-lead sub-lead" id="wbg-devices"><strong>Physics-guided circuit design.</strong> Conducted in collaboration with Dr. Nadim Chowdhury, Department of EEE, BUET, from May 2025 to June 2026. This work carries gradients through the compact models and the loop equations of a GaN circuit, so that the circuit can be designed by optimization, and develops reinforcement-learning methods that transfer across process nodes.</p>

<section class="project">
  <h3>Co-designing a monolithic GaN-on-SOI fractional-N PLL</h3>
  <p class="project-meta">200 V GaN-on-SOI · E-mode HEMT varactors · extreme-temperature timing<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/gan-soi-pll-codesign.jpg' | relative_url }}" alt="Three panels: manual GaN PLL design failing to reach its 50 MHz target, the co-design engine combining a PINN varactor surrogate with adjoint gradients and reinforcement learning, and the resulting fractional-N synthesizer locking across 218 to 423 kelvin." width="1280" height="646" loading="lazy">
    <figcaption><b>Problem:</b> manual design, with measured parasitics, mismatch and leakage, misses the 50 MHz target and only unlocks above 233 K. <b>Engine:</b> a PINN varactor surrogate <em>C</em>(<em>V</em>,<em>T</em>), a differentiable fractional-N loop and noise model, adjoint gradients over twelve design parameters, a GCN-SAC certificate and WGAN-GP variability, all on an open toolchain of OpenVAF, ngspice and gdstk. <b>Result:</b> a synthesizer locking 10/10 at 46.5 MHz across 218–423 K.</figcaption>
  </figure>

  <p>This work automates the co-design of a complete frequency-synthesizer circuit, a monolithic fractional-N phase-locked loop, in 200 V GaN-on-SOI technology. Physics-informed neural networks, adjoint-based gradient optimization and graph-based reinforcement learning jointly optimize circuit performance, thermal robustness and manufacturability: three objectives that are conventionally traded off by hand, one at a time. The resulting PLL shows substantially reduced phase error and jitter, improved lock yield, a compact layout implementation, and reliable fractional-N operation across a wide temperature range.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Physics-Informed-Machine-Learning-and-Adjoint-Co-Design-of-Monolithic-GaN-HEMT-Varactor-PLL" rel="noopener">Code · GitHub</a></li>
  </ul>
</section>

<section class="project">
  <h3>Transferable analog transistor sizing with graph reinforcement learning</h3>
  <p class="project-meta">With GlobalFoundries, Inc., USA · interval type-2 fuzzy rewards · 180/130/65/45 nm<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/graph-rl-transistor-sizing.jpg' | relative_url }}" alt="Transistor sizing loop: a circuit graph encoded by a graph convolutional network feeds a soft actor-critic agent driving ngspice across open PDKs, with an interval type-2 fuzzy reward and a physics-in-the-loop adjoint supplying exact gradients to the actor." width="1131" height="522" loading="lazy">
    <figcaption>Devices are nodes and nets are edges. A GCN encoder feeds a soft actor–critic agent that drives ngspice across open PDKs at 180/130/65/45 nm. An interval type-2 TSK fuzzy reward with a non-zero footprint of uncertainty shapes the return, while a physics-in-the-loop adjoint supplies exact gradients of a differentiable figure of merit straight to the actor. The pretrained encoder transfers to new topologies.</figcaption>
  </figure>

  <p>Developed with GlobalFoundries, Inc., this framework sizes analog transistors automatically. A graph network reads the circuit (devices as nodes, wires as edges), a reinforcement-learning agent proposes sizes, a fuzzy reward model carries the uncertainty in what "good" means, and physics-supplied gradients guide the search directly. Whereas conventional approaches rely on black-box circuit simulation and fixed weighted objectives, this combination improves both the quality of the result and the number of simulations needed to reach it. Validated across multiple technology nodes and amplifier benchmarks, it consistently outperforms existing Bayesian-optimization and reinforcement-learning methods while transferring across circuit topologies.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/Tanvir-Mahmud-Mahim/Physics-Guided-Graph-RL-with-an-Adaptive-Fuzzy-Reward-for-Transferable-Analog-Transistor-Sizing" rel="noopener">Code · GitHub</a></li>
  </ul>
</section>

<h2 id="control-energy">Learning-based grid control and bifacial photovoltaics</h2>

<p class="section-lead">Conducted with Dr. A. H. M. A. Rahim (retired December 2024) from May 2023 to June 2024. This work develops controllers that adapt their own inference rules, applied to grid-connected machines under fault conditions, and a custom-built bifacial solar module.</p>

<section class="project">
  <h3>Fuzzy inference with reinforcement learning for DFIG low-voltage ride-through</h3>
  <p class="project-meta">Takagi–Sugeno–Kang inference · doubly-fed induction generators · extreme grid sags<span class="sep">|</span><span class="tag tag-published">Published · JESTECH 2026</span></p>
  <p>How much wind generation a grid can accept is limited by what happens during faults. This work couples a Takagi–Sugeno–Kang fuzzy inference engine (control rules expressed in graded, human-readable form) to reinforcement learning, so that the controller adapts its own rules rather than relying on a fixed rule base. It sustains a doubly-fed induction generator, the standard wind-turbine generator, through voltage sags severe enough to defeat conventional ride-through schemes.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1016/j.jestch.2026.102435" rel="noopener">Paper · Elsevier JESTECH</a></li>
  </ul>
</section>

<section class="project">
  <h3>Adaptive fuzzy attention control of a microgrid under grid-bus fault</h3>
  <p class="project-meta">Double Q-learning · prioritized rewards · attention-weighted inference<span class="sep">|</span><span class="tag tag-published">Published · IEEE Trans. Fuzzy Systems 2025</span></p>
  <p>A double Q-learning scheme with prioritized rewards drives an attention-weighted fuzzy inference controller, keeping a microgrid stable through an extreme fault on the grid bus. This is the regime in which fixed-gain controllers fail, because the operating point departs further from nominal than their tuning assumes.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1109/TFUZZ.2025.3539325" rel="noopener">Paper · IEEE TFS</a></li>
  </ul>
</section>

<p class="section-lead sub-lead" id="photovoltaics"><strong>Bifacial photovoltaics.</strong> Conducted with Dr. A. H. M. A. Rahim and Prof. Md. Mosaddequr Rahman. A custom-built bifacial module was characterized experimentally and then modeled from the one-diode equations upward. The agrivoltaics review that closes this section is a later publication, written with Prof. Md. Mosaddequr Rahman and Dr. A. S. Nazmul Huda.</p>

<section class="project">
  <h3>Weather-responsive efficiency model for a custom-built bifacial panel</h3>
  <p class="project-meta">One-diode model · air-pressure and humidity terms · multiple cell technologies<span class="sep">|</span><span class="tag tag-published">Published · IEEE J. Photovoltaics 2024</span></p>
  <p>Standard efficiency-rating models account only for sunlight intensity and ambient temperature. Starting from the derivation of the one-diode model toward a photovoltaic efficiency rating, this work introduces air pressure and humidity as additional, carefully constructed dimensions, and validates the resulting model against modules based on several different cell technologies, including a bifacial panel constructed and characterized in-house.</p>
  <ul class="pub-actions">
    <li><a class="chip chip-paper" href="https://doi.org/10.1109/JPHOTOV.2024.3421252" rel="noopener">Paper · IEEE JPV</a></li>
    <li><a class="chip chip-paper" href="https://doi.org/10.1109/TENSYMP55890.2023.10223485" rel="noopener">Panel build · IEEE TENSYMP</a></li>
  </ul>
</section>

<section class="project">
  <h3>Mono- and bifacial photovoltaic technologies compared</h3>
  <p class="project-meta">TOPCon · silicon heterojunction · next-generation bifacial cells<span class="sep">|</span><span class="tag tag-published">Published · IEEE J. Photovoltaics 2024</span></p>
  <p>Next-generation bifacial cells (panels that collect light on both faces) are central to the development of high-efficiency modules. This review compares the emerging technologies, including TOPCon and silicon heterojunction, with their monofacial equivalents on a common basis.</p>
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

<h2 id="software">Open-source software</h2>

<p class="section-lead">Beyond the per-paper repositories above, twelve general-purpose tools distilled from this research (<strong>ramansep</strong>, <strong>kpenvelope</strong>, <strong>sqzcomb</strong>, <strong>absnoise</strong>, <strong>cavsqueeze</strong>, <strong>SPARQ</strong>, <strong>hamop</strong>, <strong>fabtwin</strong>, <strong>vacspin</strong>, <strong>labplan</strong>, <strong>fracpll</strong> and <strong>lockkernel</strong>) are maintained under the <a href="https://github.com/TaN-MM-Org" rel="noopener">TaN-MM-Org</a> organization, with tested cores, continuous integration and archived DOIs. They have a page of their own: <a href="{{ '/software/' | relative_url }}">Software</a>.</p>
