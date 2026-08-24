# Slides Template

A [Zola](https://www.getzola.org/)-based presentation template for company presentations.


## Setup

This repo is a GitHub template — for a new presentation, create a fresh repo from it:

```
gh repo create my-new-talk --template scoutb-cogapp/slides-template --clone
```

Then in that new repo:

```
make install   # installs Zola via Homebrew (Mac)
make serve     # preview at http://localhost:1111
make build     # output to public/
```

## Quick start

1. Edit `config.toml` to set your title, subtitle, date, and theme.
2. Add or edit slide files in `content/slides/`.
3. Run `make serve` and open http://localhost:1111 to preview live.

## Adding slides

Create files in `content/slides/`.

Order of slides is controlled by the **weight** field.

The intro field can hold something like a **subtitle or intro text** to the content of a slide.

## Templates

Templates live in `/templates`.

Available templates: 
- Landing page (just two links to start the presentation or view the notes)
- Contents slide (auto-generated contents list)
- Title slide 
- Section slide
- Text slide
- Text with Image slide
- Two-column slide
- Closing slide

## Presenter notes

Each slide can have notes. Add them to a slide's `[extra]` block.

Notes are all rendered on one page: `/notes`

Just open these in a different window and keep them open during the presentation.

You can use markdown.

## Navigation

Prev/Next buttons on each slide, or arrow keys / Page Up / Page Down.

## Porting template fixes back

While working on a real presentation you'll sometimes fix or improve something that belongs in the template (a layout bug, a new slide type, a CSS tweak). Connect the presentation repo to this one with a second git remote, then cherry-pick the specific commit(s) across:

```
# one-time, inside the presentation repo
git remote add template git@github.com:<owner>/slides-template.git
git fetch template

# to send a fix back
git checkout -b fix-something template/main
git cherry-pick <commit-sha>       # or a range: <sha1>^..<sha2>
git push template fix-something    # then merge/PR into slides-template
```

For this to work cleanly, keep template-affecting changes (anything under `templates/`, `static/css/`, `Makefile`, etc.) in their own commits, separate from commits that just add slide content — that way a cherry-pick carries only the fix, however many files it touches.