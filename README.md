# Slides Template

A [Zola](https://www.getzola.org/)-based presentation template for company presentations.


## Setup

This repo is a **GitHub template** — for a new presentation, create a fresh repo from it:

```
gh repo create test-readiness --template scoutb-cogapp/presentation --clone
```

Then in that new repo:

```
make install   # installs Zola via Homebrew (Mac)
make serve     # preview at http://localhost:1111
make build     # output to public/
```

### Working with the template remote

Add the template as a second remote:

```
git remote add upstream git@github.com:scoutb-cogapp/presentation.git
```

This sets up `origin` for the new presentation and `upstream` for the template.

While building a presentation, commit and **push template fixes to `upstream`** as you go, but **leave slide content (`content/slides/`) uncommitted until the presentation is finished**. That keeps `main` free of presentation commits, so pushing template changes stays clean:

```
git add templates/my-changed-file.html
git commit -m "fix something"
git push upstream main
```

- Pull template updates: `git pull upstream main`
- Push presentation content, once finished: `git push origin main`

**Alternative work process:**
never push any template changes at all. just manually copy and paste any changed template files into the local template repo and push to the template repo from there.

## Quick start

1. Edit `config.toml` to set your **title**, **subtitle**, **date**, and **theme**.
2. Add slides to `content/slides/`.
3. Run `make serve` and open http://localhost:1111 to preview live.

## Templates

The actual templates live in `/templates`. Edit those to change the appearance of slides.

Template slide examples live in `content/template-slides/`. There is one slide for each type of template in there. When first setting up, it can be helpful to copy the whole lot into the `slides` directory so you can see what they look like.

## Adding slides

Create markdown files in `content/slides/` using the template examples in `content/template-slides`.

Order of slides is controlled by the **weight** field. It is recommended to also use numbering in the file names so they appear in correct order and are easy to find.

### Available templates: 

Intro/structure slides - these don't need changing by hand for each presentation:
- **Landing page** (just two links to start the presentation or view the notes) -- `index.md`
- **Contents slide** (auto-generated contents list) -- `001-contents.md`
- **Title slide** (auto-generated from the config)  -- `002-title.md`

Content slides:
- **Section slide** -- `003-section.md`
- **Section with image slide** -- `004-section-with-image.md`
- **Text slide** -- `010-text.md`
- **Text with Image slide** -- `020-image-text.md`
- **Two-column slide** -- `030-two-column.md`
- **Text with Image grid slide** (fixed 3x3 grid, list images in `extra.images`) -- `040-image-grid.md`

Closing slides:
- **Closing slide** -- `050-closing.md`

## Presenter notes

Each slide can have notes. Add them to a slide's `[extra]` block.

Notes are all rendered on one page: `/notes`

Just open these in a different window and keep them open during the presentation.

You can use markdown.

## Navigation

Prev/Next buttons on each slide, or arrow keys / Page Up / Page Down.

