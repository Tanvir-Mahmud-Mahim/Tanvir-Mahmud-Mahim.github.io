# How to update and publish your website

A practical manual for `tanvir-mahmud-mahim.github.io`. You do not need to know
HTML, CSS or Jekyll to use it. Everything here is copy-and-edit.

Keep this file in the website folder. It never appears on the live site.

---

## Contents

1. [The whole workflow in thirty seconds](#1-the-whole-workflow-in-thirty-seconds)
2. [Where everything lives](#2-where-everything-lives)
3. [Adding a publication](#3-adding-a-publication)
4. [Adding a news item](#4-adding-a-news-item)
5. [Editing the Research page](#5-editing-the-research-page)
6. [Editing About, Teaching and CV](#6-editing-about-teaching-and-cv)
7. [Replacing your CV PDF or photo](#7-replacing-your-cv-pdf-or-photo)
8. [Changing your title, links or the menu](#8-changing-your-title-links-or-the-menu)
9. [Publishing](#9-publishing)
10. [Previewing before you publish (optional)](#10-previewing-before-you-publish-optional)
11. [When something goes wrong](#11-when-something-goes-wrong)
12. [Undoing a change](#12-undoing-a-change)
13. [Five rules that keep it working](#13-five-rules-that-keep-it-working)

---

## 1. The whole workflow in thirty seconds

Three steps, every single time, no exceptions:

1. **Edit** a text file in `G:\Website` using Notepad, Notepad++, VS Code, or
   anything else that saves plain text. Save it.
2. **Double-click `deploy.bat`** in that same folder. A black window opens, does its
   work, and says `Done.` Press any key to close it.
3. **Wait about a minute**, then open <https://tanvir-mahmud-mahim.github.io> and
   press `Ctrl+F5` to force a fresh copy.

That is the entire loop. You never touch GitHub's website, and you never need to
understand git.

> **Why the wait?** You are not uploading a finished website. You are uploading the
> ingredients, which are text files, and GitHub's servers assemble them into HTML pages for
> you. That assembly takes roughly a minute. This is what "Jekyll" means in practice.

---

## 2. Where everything lives

Open `G:\Website` and you will see this. The bolded entries are the ones you will
actually edit.

```
G:\Website\
├── _config.yml            <- your name, title, email, profile links
├── _data\
│   └── navigation.yml     <- the menu across the top of every page
├── _publications\         <- ONE FILE PER PAPER
│   ├── 2026-06-01-tsk-fuzzy-rl-dfig-wt.md
│   ├── 2026-01-01-agrivoltaics-review.md
│   └── ... (9 files today)
├── index.md               <- the About page: bio + News list
├── research.md            <- the Research page
├── publications.md        <- the Publications page LAYOUT (rarely edited)
├── teaching.md            <- the Teaching page
├── cv.md                  <- the CV page
├── 404.html               <- shown for a bad address
├── assets\
│   ├── images\profile.jpg <- your sidebar photo
│   ├── files\...CV.pdf    <- the downloadable CV
│   ├── css\main.css       <- all colors, fonts and spacing
│   ├── js\main.js         <- dark-mode toggle and mobile menu
│   └── fonts\             <- the two fonts, served from your own site
├── _includes\  _layouts\  <- page scaffolding; leave these alone
├── deploy.bat             <- DOUBLE-CLICK THIS TO PUBLISH
├── README.md   GUIDE.md   <- documentation, never published
└── _setup\                <- transfer leftovers, safe to delete
```

Two things worth understanding:

**Folders beginning with an underscore are special.** Jekyll treats them as
ingredients rather than pages. `_publications` is a *collection*. Drop a file in and
it appears on the Publications page automatically, correctly sorted. You never edit
`publications.md` to add a paper.

**Files ending in `.md` are Markdown.** Mostly ordinary text: `**bold**`, `*italic*`,
`[link text](https://address)`. Plain HTML works inside them too, which is why the
News list and the research projects are written as HTML, because they need more
structure than Markdown offers.

---

## 3. Adding a publication

This is the task you will do most often, and it is the easiest.

### Step 1: copy an existing file

Go into `_publications\`. Copy any existing file and paste it back into the same
folder. Rename the copy using this exact pattern:

```
YYYY-MM-DD-a-few-words.md
```

for example `2026-11-04-gan-soi-pll.md`. The date at the front is what orders the
list, newest at the top, so use the **publication date**, and if a paper is
online-first ahead of its issue, use the issue date and mention the online date in
the `note` field. The words after the date are only for you; they never appear
anywhere.

### Step 2: fill in the details

Open your new file. The whole file is just this block. There is no body text.

```yaml
---
title: "Exact title, capitalized exactly as the journal prints it"
authors: "Tanvir M. Mahim, Second Author, Third Author"
venue: "IEEE Transactions on Something"
detail: "12 (3), 456–789"
year: 2026
date: 2026-11-04
category: journal
publisher: "IEEE"
doi: "10.1109/EXAMPLE.2026.1234567"
link: "https://doi.org/10.1109/EXAMPLE.2026.1234567"
---
```

Field by field:

| Field | What to write |
| --- | --- |
| `title` | The exact printed title, in quotes. |
| `authors` | Everyone, in order, comma-separated. **Write your own name as exactly `Tanvir M. Mahim`**. The site finds that string and bolds it. Any other spelling will not be bolded. |
| `venue` | Journal or full proceedings name. It is italicized for you. |
| `detail` | `volume (issue), pages`, or an article number, or `pp. 1–6` for a conference. If nothing is assigned yet, write `""` and the site simply omits it. |
| `year` | The year the site displays. For an online-first paper this is the **issue** year, not the online year. |
| `date` | Controls sort order only. Format `YYYY-MM-DD`, no quotes. |
| `category` | Either `journal` or `conference`. Nothing else. This picks the section. |
| `publisher` | `IEEE`, `Elsevier`, `Wiley`, and so on. Add `· open access` if it is. |
| `doi` | The bare DOI, no `https://doi.org/` in front. Shown on the button. |
| `link` | The full clickable link, normally `https://doi.org/` plus the DOI. **Do not call this `url`.** Jekyll reserves `url` for a document's own address and will silently overwrite yours, pointing the button at a page that does not exist. |
| `note` | *Optional.* A small gray line under the citation, e.g. `"First published online 2 September 2025."` Delete the line if you do not need it. |

### Step 3: publish

Save, double-click `deploy.bat`, wait a minute. The paper appears in the right
section, in the right position, with your name bolded.

### If a preprint gets accepted

Two edits: delete its `<li>` from `research.md` (see §5), and create its file in
`_publications\`. Add a News item too (§4).

---

## 4. Adding a news item

News lives on the About page, in `index.md`. Scroll to `## News` and you will find a
list of blocks that look like this:

```html
<li>
  <span class="news-date">Jun 2026</span>
  <span class="news-body">What happened, in a sentence or two.</span>
</li>
```

**To add one:** copy a whole block, from `<li>` to `</li>` inclusive, and paste it
directly *below* the line `<ul class="news">`. Newest goes at the top; the list does
not sort itself. Then change the date and the text.

Inside `news-body` you may use:

- `<em>Journal Name</em>` for italics
- `<strong>Something</strong>` for bold
- `<a href="{{ '/publications/' | relative_url }}">Details</a>` to link to another
  page of your own site. Copy that pattern exactly, including the braces
- `<a href="https://example.com" rel="noopener">text</a>` for an outside link

Ten to fifteen items is a comfortable length. When it gets long, delete the oldest
blocks rather than letting it sprawl.

---

## 5. Editing the Research page

`research.md` has two headings, `## Ongoing` and `## Completed`, and under each a
series of project blocks.

### The shape of a project

Every project on the page is this same block, in this order: heading, meta line,
figure, description, buttons.

```html
<section class="project">
  <h3>Project or theme name</h3>
  <p class="project-meta">Method &middot; platform &middot; collaborator<span class="sep">|</span><span class="tag tag-review">Under review</span></p>

  <figure class="project-figure">
    <img src="{{ '/assets/images/research/my-figure.jpg' | relative_url }}"
         alt="Plain description for screen readers."
         width="1200" height="600" loading="lazy">
    <figcaption><b>(a)</b> What panel a shows. <b>(b)</b> What panel b shows.</figcaption>
  </figure>

  <p>A paragraph saying what the work does and what it achieved, with the
  numbers in <strong>bold</strong>.</p>

  <ul class="pub-actions">
    <li><a class="chip chip-code" href="https://github.com/..." rel="noopener">Code &middot; GitHub</a></li>
  </ul>
</section>
```

Copy an entire `<section>` block to add a project. The `<span class="sep">|</span>`
in the middle of the meta line draws the thin divider, so keep it. The figure and
the buttons are both optional: delete either block if a project has neither.

### Using a bulleted list instead of a paragraph

If a project is better described as several separate strands than as one
paragraph, swap the `<p>` for this:

```html
<ul class="workitems">
  <li>One strand of the work, in a sentence. <span class="tag tag-review">Under review</span></li>
  <li>Another strand.</li>
</ul>
```

Copy a whole `<li>...</li>` line to add a strand. Delete one to remove it.

### The status badge

Each project's meta line ends with one of two badges:

```html
<span class="tag tag-review">Under review</span>
<span class="tag tag-published">Published &middot; IEEE Sensors Journal 2025</span>
```

Swap the first for the second when a paper is accepted, and add the paper to
`_publications/` at the same time.

### Adding a figure to a project

Put the image in `assets\images\research\`. JPEG or PNG is fine, ideally 900 to
1300 px wide. Then paste this block after the project's meta line:

```html
<figure class="project-figure">
  <img src="{{ '/assets/images/research/my-figure.jpg' | relative_url }}"
       alt="Plain description of what the figure shows, for screen readers."
       width="1200" height="600" loading="lazy">
  <figcaption><b>(a)</b> What panel a shows. <b>(b)</b> What panel b shows.</figcaption>
</figure>
```

Set `width` and `height` to the image's real pixel dimensions. The browser uses
them to reserve space so the page does not jump while loading. Keep
`loading="lazy"`; it is why a page with a dozen figures still opens quickly. The
caption is where the detail goes: name the panels, give the numbers.

### Adding Code and Data buttons

Every project ends with a row of buttons. Three colors are available:

```html
<ul class="pub-actions">
  <li><a class="chip chip-code"  href="https://github.com/..." rel="noopener">Code &middot; GitHub</a></li>
  <li><a class="chip chip-data"  href="https://doi.org/10.5281/zenodo..." rel="noopener">Data &middot; Zenodo</a></li>
  <li><a class="chip chip-paper" href="https://doi.org/10.1109/..."       rel="noopener">Paper &middot; IEEE</a></li>
</ul>
```

Delete any line you do not need. On the Publications page the same buttons appear
automatically: add `code:` and `dataset:` lines to a paper's front matter in
`_publications/` and the chips render themselves.

### Linking to a research area from elsewhere

Each of the five area headings on `research.md` is written as raw HTML with a
fixed id, so other pages can jump straight to it:

```html
<h2 id="quantum-optics">Quantum optics and photonics</h2>
```

The ids are `quantum-optics`, `quantum-materials-mems`, `wbg-devices`,
`control-energy` and `photovoltaics`. Link to one like this:

```html
<a href="{{ '/research/#quantum-optics' | relative_url }}">Quantum optics</a>
```

The About page uses exactly this to send each of its bolded area names to the
matching section. If you rename a heading, keep its id. Otherwise every link
pointing at it breaks silently.

A note on why this needs JavaScript: the Research page is very tall, and Chrome
abandons its own jump to an anchor part-way through while web fonts swap and the
layout settles, dumping you back at the top. `assets/js/main.js` therefore
performs the jump itself and repeats it as the page finishes loading. It stops
retrying the moment you scroll, so it never fights you. There is nothing to
configure. Just do not delete that block if you edit the file.

### Moving a project to Completed

Cut the whole `<section>` block and paste it below the `## Completed` heading. A
completed block usually swaps the `<ul class="workitems">` list for a short paragraph
plus DOI buttons:

```html
<ul class="pub-actions">
  <li><a class="chip" href="https://doi.org/10.1109/EXAMPLE" rel="noopener">IEEE TFS 2025</a></li>
</ul>
```

---

## 6. Editing About, Teaching and CV

**`index.md`, the About page.** The paragraphs below the front matter are ordinary Markdown:
just type. `**text**` makes bold. Leave a blank line between paragraphs. The research
interests are a plain list of `<li>Something</li>` lines inside `<ul class="interests">`.

**`teaching.md` and `cv.md`** are built from repeating blocks that look like this:

```html
<section class="entry">
  <div class="entry-when">Since Jun 2025</div>
  <div class="entry-what">
    <h3>Job title or degree</h3>
    <p class="entry-where">Where it was, and any short qualifier</p>
    <p>A sentence of description.</p>
  </div>
</section>
```

Copy the whole `<section>` to add an entry; delete it to remove one. Course
name chips are separate:

```html
<ul class="course-list">
  <li><span>Solid-State Devices</span></li>
  <li><span>Numerical Methods</span></li>
</ul>
```

The `<span>` inside the `<li>` is what draws the box, so keep both.

---

## 7. Replacing your CV PDF or photo

**CV.** Put the new PDF in `assets\files\` and give it the same name as the old one,
`Tanvir_Mahmud_Mahim_CV.pdf`. Overwrite it. Nothing else to change. If you would
rather use a different filename, update the `cv:` line in `_config.yml` to match.

**Photo.** Replace `assets\images\profile.jpg`. It must be **square**, because the site
crops it to a circle, and a non-square image will look squashed. Around 480×480
pixels is right; much larger only slows the page down. Frame it as a head-and-
shoulders portrait, because a full-length photo shrinks your face to nothing at the
size it is displayed.

After either change, run `deploy.bat`. Browsers cache images aggressively, so press
`Ctrl+F5` when you check.

---

## 8. Changing your title, links or the menu

### `_config.yml`: who you are

This one file feeds the sidebar on every page, the browser tab titles, and the
search-engine description. The lines you may want to change:

```yaml
title:            "Tanvir M. Mahim"          # short name, top-left of every page
name:             "Tanvir Mahmud Mahim"      # full name, sidebar and footer
role:             "Adjunct Lecturer &amp; Research Assistant"
affiliation:      "Department of EEE, BRAC University"
location:         "Dhaka, Bangladesh"
```

Write `&amp;` rather than a bare `&` in the `role` line. A lone `&` is a reserved
character in HTML and will break the page.

Below that sit your profile links:

```yaml
author:
  email_academic: "tanvir.mahim@bracu.ac.bd"
  email_personal: "tanvirmahim14@gmail.com"
  googlescholar:  "https://scholar.google.com/citations?user=Zq7RPx4AAAAJ&hl=en"
  orcid:          "https://orcid.org/0000-0002-4550-3248"
  scopus:         "https://www.scopus.com/authid/detail.uri?authorId=58635579200"
  wos:            "https://www.webofscience.com/wos/author/record/JMQ-6828-2023"
  ieee:           "https://ieeexplore.ieee.org/author/37089995040"
  researchgate:   "..."
  github:         "..."
  linkedin:       "..."
```

Each sidebar link only appears if its line has a value, so putting a `#` at the start
of a line hides that link without deleting anything.

**`_config.yml` is the one exception to the normal workflow.** If you ever preview
locally, Jekyll does not notice changes to this file while running, so stop it and
start it again. On the live site it makes no difference.

### `_data\navigation.yml`: the menu

```yaml
- title: "About"
  url: /

- title: "Research"
  url: /research/
```

The order here is the order on screen, in the header and the footer both. To add an
entry you must also create the page it points to; to remove one, delete its two
lines.

### Colors and fonts

Everything visual is at the top of `assets\css\main.css`, in a block labeled
**Design tokens**. The accent color, which covers links, the active menu item and the badges, is
`--accent`, defined twice: once under `[data-theme="light"]` and once under
`[data-theme="dark"]`. Change both, or light and dark mode will disagree. The dark
value needs to be lighter than the light one so it stays readable on a dark
background.

---

## 9. Publishing

### What `deploy.bat` actually does

Double-clicking it runs five steps and narrates each one:

1. Confirms git is installed and that you are in the right folder.
2. Points the folder at your GitHub repository.
3. Untracks `Profile_pic.jpg` (a one-off tidy; harmless once done).
4. Bundles up everything that changed and labels it.
5. Sends it to GitHub.

The first time you ran it, a sign-in window appeared. It should not ask again.

### What happens next, on GitHub's side

Your push triggers a build. Watch it here:

**<https://github.com/Tanvir-Mahmud-Mahim/Tanvir-Mahmud-Mahim.github.io/actions>**

A yellow dot means building, green tick means live, red cross means the build
failed, and GitHub emails you when that happens, with the reason. A red cross does
**not** take your site down; the previously published version stays up until a good
build replaces it. That is a useful safety net: a broken edit costs you nothing but
the time to fix it.

### Giving the change a name

Optional. Drag a file onto `deploy.bat` and its name becomes the label, or open a
Command Prompt in the folder and run:

```
deploy.bat "Added the GaN-on-SOI PLL paper"
```

With no label it records `Update site`, which is fine.

---

## 10. Previewing before you publish (optional)

This is not required. GitHub builds the site for you, and a bad build cannot break
the live version. But if you are making a large change and want to see it first:

1. Install **Ruby+Devkit** from <https://rubyinstaller.org/> (take the recommended
   version, and let it run `ridk install` at the end).
2. Open Command Prompt in `G:\Website` and run, once:

   ```
   gem install bundler
   bundle install
   ```

3. From then on:

   ```
   bundle exec jekyll serve --livereload
   ```

4. Open <http://127.0.0.1:4000>. Edit a file, save, and the browser refreshes itself.
5. Press `Ctrl+C` in the Command Prompt to stop.

Remember that `_config.yml` changes need a restart.

---

## 11. When something goes wrong

**`deploy.bat` flashes past too fast to read.**
It always pauses at `Press any key to continue`. If it vanished instantly, it closed
before reaching that line. Open Command Prompt in the folder and type `deploy.bat`
to see the error text.

**`fatal: Unable to create ... index.lock: File exists`**
A previous git run was interrupted. Delete the file `G:\Website\.git\index.lock`.
You may need to enable "Hidden items" in Explorer's View tab to see the `.git`
folder. Then run `deploy.bat` again. Only ever let `deploy.bat` drive git in this
folder; other tools reaching into `G:` cannot always clean up this lock.

**`Updates were rejected because the remote contains work that you do not have`**
Something changed on GitHub that is not in your folder, usually because you edited a
file in GitHub's web editor. Either bring that change down first, or, if you are
certain the folder is the version you want, run in Command Prompt:

```
git push -u origin main --force
```

**GitHub emails "Page build failed."**
Almost always the front matter of a file you just edited. Check that every `title:`
value is wrapped in `"quotes"`, that you did not delete one of the two `---` lines,
and that a `date:` reads `2026-11-04` with no quotes. Fix and re-run `deploy.bat`.

**The site builds, but my change is not there.**
Press `Ctrl+F5`. If it still looks stale, open the Actions link above and confirm the
newest run has a green tick and a recent timestamp. If there is no new run, the push
never happened, so re-run `deploy.bat` and read what it prints.

**My text appears with `<p>` and `<span>` showing as words.**
An angle bracket is missing somewhere in the block you edited. Copy a working block
and start again rather than hunting for it.

**A paragraph I wrote in Markdown is not formatting.**
Markdown does not work in the middle of an HTML block. Either put a blank line before
and after the HTML, or write that bit as HTML: `<strong>` instead of `**`, `<em>`
instead of `*`.

**A publication is in the wrong place or missing.**
Missing entirely: `category` must be exactly `journal` or `conference`, lower case.
Wrong position: it sorts on `date`, not `year` and not the filename.

**My name is not bold in an author list.**
It must be spelled exactly `Tanvir M. Mahim`. Not `Tanvir Mahmud Mahim`, not
`T. M. Mahim`.

**The layout broke after I edited the CSS.**
See the next section. Reverting one file is a single command.

---

## 12. Undoing a change

Every publish is a save point, and nothing is ever really lost.

**Undo edits you have not published yet.** This throws away changes since the last
publish:

```
git checkout -- .
```

**Undo one file only:**

```
git checkout -- assets/css/main.css
```

**Undo something you already published.** Open
<https://github.com/Tanvir-Mahmud-Mahim/Tanvir-Mahmud-Mahim.github.io/commits/main>,
find the change, and note the seven-character code beside it. Then:

```
git revert <that-code>
git push
```

That adds a new change undoing the old one, so the history stays honest.

**Look at an old version** of any file: click it on GitHub and choose **History**.

---

## 13. Five rules that keep it working

1. **Copy a block, then edit it.** Never type structure from memory. Everything on
   this site is a repeating pattern; duplicating a working one is faster and cannot
   go wrong.
2. **The `---` lines at the top of a file are load-bearing.** That block is the
   file's settings. Delete or unbalance the dashes and the page stops building.
3. **Quote your text values, do not quote your dates.** `title: "Some: title"` needs
   the quotes precisely because of that colon. `date: 2026-11-04` must have none.
4. **Never rename or move `_includes`, `_layouts` or `_data`.** Jekyll finds them by
   name. Adding files to `_publications` is expected; touching the other three is not.
5. **Publish small and publish often.** One change, one `deploy.bat`, one check. When
   something does break you will know exactly which edit caused it.

---

## Quick reference

| I want to… | File | Then |
| --- | --- | --- |
| Add a paper | new file in `_publications\` | `deploy.bat` |
| Add news | `index.md` | `deploy.bat` |
| Add a project | `research.md` | `deploy.bat` |
| Mark work under review | `research.md` | `deploy.bat` |
| Add a course | `teaching.md` | `deploy.bat` |
| Add a job or award | `cv.md` | `deploy.bat` |
| Update the CV PDF | `assets\files\` | `deploy.bat` |
| Change the photo | `assets\images\profile.jpg` | `deploy.bat` |
| Change title or links | `_config.yml` | `deploy.bat` |
| Change the menu | `_data\navigation.yml` | `deploy.bat` |
| Change colors | `assets\css\main.css` | `deploy.bat` |

**Live site:** <https://tanvir-mahmud-mahim.github.io>
**Build status:** <https://github.com/Tanvir-Mahmud-Mahim/Tanvir-Mahmud-Mahim.github.io/actions>
**Repository:** <https://github.com/Tanvir-Mahmud-Mahim/Tanvir-Mahmud-Mahim.github.io>
