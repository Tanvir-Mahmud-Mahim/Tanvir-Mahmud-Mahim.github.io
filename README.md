# tanvir-mahmud-mahim.github.io

Personal academic website of **Tanvir Mahmud Mahim** — Adjunct Lecturer and Research
Assistant, Department of EEE, BRAC University.

Built as a plain [Jekyll](https://jekyllrb.com/) site so that **GitHub Pages builds it
natively** — no Actions workflow, no theme gem, no Sass or JavaScript build step.

---

## Publishing it

The repository must be named exactly `Tanvir-Mahmud-Mahim.github.io` for GitHub to
serve it at `https://tanvir-mahmud-mahim.github.io`.

**One-time setup**

1. Create the repository at <https://github.com/new>
   · Owner `Tanvir-Mahmud-Mahim` · Name `Tanvir-Mahmud-Mahim.github.io` · **Public**
   · Do **not** tick "Add a README", "Add .gitignore" or "Choose a licence" — this
   folder already contains those files and an initialised repository would conflict.
2. Double-click **`deploy.bat`** in this folder. It commits everything and pushes to
   `main`. The first push asks you to sign in to GitHub — that is Git Credential
   Manager, and it only happens once.
3. Go to the repository → **Settings → Pages**. Source should read
   *Deploy from a branch* → `main` / `/ (root)`. GitHub normally sets this
   automatically for a `<username>.github.io` repository.

The first build takes two to three minutes. After that the site is live, and every
later push republishes it in under a minute.

**Every time after that**, just double-click `deploy.bat` again. On macOS or Linux use
`./deploy.sh` instead.

---

## Editing the content

Everything you are likely to change lives in a handful of plain-text files. None of it
requires touching HTML or CSS.

| What you want to change | File |
| --- | --- |
| Name, job title, email, profile links, CV path | `_config.yml` |
| Bio, research interests, the News list | `index.md` |
| Research projects (ongoing and completed) | `research.md` |
| Publications | one file per paper in `_publications/` |
| Courses and supervision | `teaching.md` |
| Education, appointments, skills, referees | `cv.md` |
| The menu at the top of every page | `_data/navigation.yml` |
| Profile photograph | `assets/images/profile.jpg` |
| CV PDF | `assets/files/Tanvir_Mahmud_Mahim_CV.pdf` |
| Colours, fonts, spacing | `assets/css/main.css` (all tokens are at the top) |

### Adding a publication

Create a new file in `_publications/` named `YYYY-MM-DD-short-slug.md`. The date is the
publication date and controls the ordering — nothing else uses the filename. The whole
file is front matter; there is no body:

```yaml
---
title: "Exact title as printed"
authors: "Tanvir M. Mahim, Second Author, Third Author"
venue: "IEEE Transactions on Something"
detail: "12 (3), 456–789"      # volume (issue), pages — leave "" if not yet assigned
year: 2026
date: 2026-04-15
category: journal              # journal  or  conference
publisher: "IEEE"
doi: "10.1109/EXAMPLE.2026.1234567"
url: "https://doi.org/10.1109/EXAMPLE.2026.1234567"
---
```

Your own name is bolded automatically wherever the string `Tanvir M. Mahim` appears in
`authors`, so write it exactly that way.

### Adding a news item

Copy one `<li>` block at the top of the `<ul class="news">` list in `index.md`:

```html
<li>
  <span class="news-date">Oct 2026</span>
  <span class="news-body">What happened, in one or two sentences.</span>
</li>
```

### Marking work as under review

On `research.md`, add `<span class="tag tag-review">Under review</span>` at the end of a
list item. The Publications page deliberately lists only published, citable records.

---

## Working on it locally (optional)

You do not need this to publish — GitHub builds the site for you. But if you want a
live preview while editing, install [Ruby+Devkit](https://rubyinstaller.org/) and then:

```bash
gem install bundler
bundle install
bundle exec jekyll serve --livereload
```

Then open <http://127.0.0.1:4000>.

---

## Structure

```
_config.yml              site-wide settings and profile links
_data/navigation.yml     top menu
_includes/               head, masthead, sidebar, footer, scripts
_layouts/                default.html -> page.html
_publications/           one markdown file per paper
assets/css/main.css      the entire stylesheet, tokens at the top
assets/js/main.js        theme toggle and mobile menu, no dependencies
assets/fonts/            self-hosted Inter and Newsreader (SIL OFL 1.1)
assets/images/           profile photograph, favicon
assets/files/            CV PDF
index.md  research.md  publications.md  teaching.md  cv.md  404.html
```

### Notes on how it is built

- **Self-hosted fonts.** Inter and Newsreader are served from `assets/fonts/` rather
  than Google Fonts: one less third-party request, nothing to break if that CDN is
  blocked, and no visitor IP handed to another origin. Both are SIL Open Font
  License 1.1; the licences sit beside the font files.
- **Dark mode.** Follows the operating-system preference until the visitor clicks the
  toggle, after which their choice is remembered. The theme is applied before first
  paint so there is no flash of the wrong colours.
- **No build step.** The CSS is plain CSS and the JavaScript is a single dependency-free
  file, so what is in this repository is exactly what ships.
- **Accessibility.** Skip link, keyboard-visible focus rings, `aria-current` on the
  active nav item, labelled controls, and a print stylesheet.
