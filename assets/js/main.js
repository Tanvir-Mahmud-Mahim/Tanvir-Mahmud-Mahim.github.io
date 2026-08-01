/* Theme toggle + mobile navigation. No dependencies. */
(function () {
  'use strict';

  var root = document.documentElement;

  /* ---------------------------------------------------------------- theme */
  function readStored() {
    try { return localStorage.getItem('theme'); } catch (e) { return null; }
  }
  function store(value) {
    try { localStorage.setItem('theme', value); } catch (e) { /* private mode */ }
  }

  var toggle = document.querySelector('.theme-toggle');
  if (toggle) {
    toggle.addEventListener('click', function () {
      var next = root.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
      root.setAttribute('data-theme', next);
      store(next);
      toggle.setAttribute('aria-label', next === 'dark' ? 'Switch to light theme' : 'Switch to dark theme');
    });
  }

  /* Follow the OS only while the visitor has not made an explicit choice. */
  if (window.matchMedia) {
    var mq = window.matchMedia('(prefers-color-scheme: dark)');
    var onChange = function (e) {
      if (!readStored()) { root.setAttribute('data-theme', e.matches ? 'dark' : 'light'); }
    };
    if (mq.addEventListener) { mq.addEventListener('change', onChange); }
    else if (mq.addListener) { mq.addListener(onChange); }
  }

  /* --------------------------------------------------- deep-link scrolling */
  /* Landing on /research/#quantum-optics must put you AT that section.
     Chrome starts its own animated jump because html{scroll-behavior:smooth},
     then abandons it while web fonts swap and the (very tall) page settles —
     leaving the visitor at the top. So we do the jump ourselves, with smooth
     scrolling temporarily off, and repeat it as layout finishes: once now,
     once on window load, once when fonts resolve. Any real scroll input from
     the visitor cancels the remaining attempts so we never fight them. */
  (function () {
    if (!location.hash || location.hash.length < 2) { return; }

    var target;
    try { target = document.getElementById(decodeURIComponent(location.hash.slice(1))); }
    catch (e) { return; }
    if (!target) { return; }

    var canceled = false;
    var cancel = function () { canceled = true; };
    ['wheel', 'touchstart', 'keydown', 'mousedown'].forEach(function (evt) {
      window.addEventListener(evt, cancel, { passive: true, once: true });
    });

    var lastSet = null;

    function jump() {
      if (canceled) { return; }
      /* If the page has moved since our last jump, something other than us
         moved it — almost certainly the visitor. Stand down. */
      if (lastSet !== null && Math.abs(window.pageYOffset - lastSet) > 4) {
        canceled = true;
        return;
      }
      var mast = document.querySelector('.masthead');
      var offset = (mast ? mast.getBoundingClientRect().height : 60) + 28;
      var y = Math.max(0, target.getBoundingClientRect().top + window.pageYOffset - offset);
      var prev = root.style.scrollBehavior;
      root.style.scrollBehavior = 'auto';       // never animate this one
      window.scrollTo(0, y);
      root.style.scrollBehavior = prev;
      lastSet = Math.round(window.pageYOffset);
    }

    jump();
    window.addEventListener('load', jump);
    if (document.fonts && document.fonts.ready) { document.fonts.ready.then(jump); }
    setTimeout(jump, 250);
  })();

  /* ------------------------------------------------------------------ nav */
  var navToggle = document.querySelector('.nav-toggle');
  var nav = document.getElementById('site-nav');
  if (navToggle && nav) {
    navToggle.addEventListener('click', function () {
      var open = nav.classList.toggle('is-open');
      navToggle.setAttribute('aria-expanded', open ? 'true' : 'false');
      navToggle.setAttribute('aria-label', open ? 'Close navigation' : 'Open navigation');
    });
  }
})();
