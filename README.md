<div>
  <img alt="logo" align="right" width="72" height="72" src="media/termde_logo.png"/>
</div>

<h1 align="center">TermDE</h1>

Provides minimal configurations for [Termux](https://termux.com) to function as a development environment.

 Features

- Using [Neovim](https://github.com/neovim/neovim) as source code editor.
- IntelliSense code-completion using [coc.nvim](https://github.com/neoclide/coc.nvim).
- Shows Git status and diffs in realtime using [coc-git](https://github.com/neoclide/coc-git).
- Preview Markdown files with [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim).
- Supports common editor keyboard shortcuts.

## Requirements

The only requirement is [Termux:API](https://wiki.termux.com/wiki/Termux:API) to access the system clipboard.

## Installation

Run the following command to install the latest release:

```bash
curl -sL "https://api.github.com/repos/meiuwa/termde/releases/latest" \
  | awk '/browser_download_url/ {print $2}' \
  | xargs curl -#LC - -o $TMPDIR/termde-latest.deb \
  && pkg install -y $TMPDIR/termde-latest.deb
```

## Shortcuts

Conquer of Completion key mappings for highlighted symbol:

<ul>
  <li><kbd>Alt</kbd>+<kbd>1</kbd> Show documentation in preview window</li>
  <li><kbd>Alt</kbd>+<kbd>2</kbd> Rename symbol</li>
  <li><kbd>Alt</kbd>+<kbd>3</kbd> Go to definition</li>
  <li><kbd>Alt</kbd>+<kbd>4</kbd> Go to type definition</li>
  <li><kbd>Alt</kbd>+<kbd>5</kbd> Go to references</li>
  <li><kbd>Alt</kbd>+<kbd>6</kbd> Go to implementation</li>
</ul>

Common editor key mappings:

<ul>
  <li><kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Q</kbd> Force quit all buffer</li>
  <li><kbd>Ctrl</kbd>+<kbd>Q</kbd> Quit current buffer</li>
  <li><kbd>Ctrl</kbd>+<kbd>W</kbd> Save and quit current buffer</li>
  <li><kbd>Ctrl</kbd>+<kbd>S</kbd> Save</li>
  <li><kbd>Ctrl</kbd>+<kbd>A</kbd> Select all</li>
  <li><kbd>Ctrl</kbd>+<kbd>C</kbd> Copy</li>
  <li><kbd>Ctrl</kbd>+<kbd>X</kbd> Cut</li>
  <li><kbd>Ctrl</kbd>+<kbd>V</kbd> Paste</li>
  <li><kbd>Ctrl</kbd>+<kbd>Z</kbd> Undo</li>
  <li><kbd>Ctrl</kbd>+<kbd>Y</kbd> Redo</li>
</ul>

Miscellaneous keyboard mappings:

<ul>
  <li><kbd>Enter</kbd> Switch to <code>insert</code> mode</li>
  <li><kbd>Ctrl</kbd>+<kbd>←</kbd> Switch to previous tab</li>
  <li><kbd>Ctrl</kbd>+<kbd>→</kbd> Switch to next tab</li>
  <li><kbd>Ctrl</kbd>+<kbd>P</kbd> Preview Markdown on a browser</li>
</ul>

## Extras

To build the package from source, use [termux-create-package](https://github.com/termux/termux-create-package):

```bash
pkg install -y termux-create-package
termux-create-package --prefix $HOME manifest.json
```
