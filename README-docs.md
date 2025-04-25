# VibeNavigator Documentation

This repository contains the documentation for the VibeNavigator project, built with [MkDocs](https://www.mkdocs.org/) and the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.

## Prerequisites

To work with this documentation, you need:

- Python 3.6 or higher
- pip (Python package manager)

## Installation

Install MkDocs and the Material theme:

```bash
pip install --user mkdocs mkdocs-material
```

### PATH Configuration

If you see warnings about scripts being installed in a directory that is not on PATH (e.g., `~/.local/bin`), you have several options:

1. **Use the wrapper script** (simplest solution):
   ```bash
   ./mkdocs-wrapper.sh serve    # To preview the documentation
   ./mkdocs-wrapper.sh build    # To build the documentation
   ./mkdocs-wrapper.sh gh-deploy # To deploy to GitHub Pages
   ```

2. **Use the helper scripts**:
   ```bash
   ./docs-serve.sh    # To preview the documentation
   ./docs-build.sh    # To build the documentation
   ./docs-deploy.sh   # To deploy to GitHub Pages
   ```

3. **Add aliases to your shell** (recommended for zsh users):
   ```bash
   ./setup-mkdocs-aliases.sh
   source ~/.zshrc
   ```
   Then you can use:
   ```bash
   mkdocs serve
   mkdocs build
   mkdocs-deploy
   ```

4. **Add the directory to your PATH**:
   ```bash
   ./add-to-path.sh
   ```
   Then restart your terminal or run `source ~/.bashrc` (or your shell's config file).

## Usage

### Serving the Documentation Locally

To preview the documentation locally:

```bash
./docs-serve.sh
```

Or manually:

```bash
mkdocs serve
```

This will start a local server at http://127.0.0.1:8000/ where you can preview the documentation.

### Building the Documentation

To build the static site:

```bash
./docs-build.sh
```

Or manually:

```bash
mkdocs build
```

This will create a `site` directory with the built static site.

## Documentation Structure

- `docs/` - Contains all the documentation files
  - `index.md` - Home page
  - `getting-started/` - Getting started guides
  - `api/` - API documentation
  - `user-guides/` - User guides
  - `development/` - Development documentation
- `mkdocs.yml` - MkDocs configuration file

## Adding New Pages

1. Create a new Markdown file in the appropriate directory under `docs/`
2. Add the page to the navigation in `mkdocs.yml`

Example:

```yaml
nav:
  - Home: index.md
  - Getting Started:
    - Overview: getting-started/index.md
    - New Page: getting-started/new-page.md
```

## Deployment

To deploy the documentation to GitHub Pages:

```bash
./docs-deploy.sh
```

Or manually (if PATH is configured):

```bash
mkdocs gh-deploy
```

This will build the documentation and push it to the `gh-pages` branch of your repository.

## Customization

To customize the appearance and behavior of the documentation site, edit the `mkdocs.yml` file. Refer to the [MkDocs documentation](https://www.mkdocs.org/user-guide/configuration/) and [Material for MkDocs documentation](https://squidfunk.github.io/mkdocs-material/getting-started/) for more information.
