# Slides Template

A [Zola](https://www.getzola.org/)-based presentation template for company presentations.


## Setup

This repo is a GitHub template — for a new presentation, create a fresh repo from it:

```
gh repo create test-readiness --template scoutb-cogapp/presentation --clone
```

Then in that new repo:

```
make install   # installs Zola via Homebrew (Mac)
make serve     # preview at http://localhost:1111
make build     # output to public/
```

To pull future template updates (or push fixes back), add the template as a second remote:

```
git remote add upstream git@github.com:scoutb-cogapp/presentation.git
```

This sets up `origin` for the new presentation and `upstream` for the template.

- Push presentation content: `git push origin main`
- Pull template updates: `git pull upstream main`
- Push template content: `git push upstream fix-something`

## Quick start

1. Edit `config.toml` to set your **title**, **subtitle**, **date**, and **theme**.
2. Add or edit slide files in `content/slides/`.
3. Run `make serve` and open http://localhost:1111 to preview live.

## Adding slides

Create files in `content/slides/`.

Order of slides is controlled by the **weight** field.

The intro field can hold something like a **subtitle or intro text** to the content of a slide.

## Templates

Templates live in `/templates`.

### Available templates: 

Intro/structure slides:
- **Landing page** (just two links to start the presentation or view the notes) -- `index.md`
- **Contents slide** (auto-generated contents list) -- `001-contents.md`
- **Title slide**  -- `002-title.md`
- **Section slide** -- `003-section.md`

Content slides:
- **Text slide** -- `010-text.md`
- **Text with Image slide** -- `020-image-text.md`
- **Two-column slide** -- `030-two-column.md`

Closing slides:
- **Closing slide** -- `100-closing-slide.md`

## Presenter notes

Each slide can have notes. Add them to a slide's `[extra]` block.

Notes are all rendered on one page: `/notes`

Just open these in a different window and keep them open during the presentation.

You can use markdown.

## Navigation

Prev/Next buttons on each slide, or arrow keys / Page Up / Page Down.

## Porting template fixes back

While working on a real presentation you'll sometimes fix or improve something that belongs in the template (a layout bug, a new slide type, a CSS tweak). Use the `upstream` remote set up above to cherry-pick the specific commit(s) across:

```sh
git fetch upstream

git checkout -b fix-something upstream/main
git add my.changed.file
git commit -m "fix something"

git push upstream fix-something
```

For this to work cleanly, keep template-affecting commits separate from slide content.