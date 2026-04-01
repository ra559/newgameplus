# Jekyll Theme Bobby

A simple Jekyll theme for a chapter-based book series with a left-hand chapter navigation menu and centered reading layout.

## Use as a local theme gem

Add the theme to your site's `Gemfile`:

```ruby
gem "jekyll-theme-bobby", path: "../jekyll-theme-bobby"
```

Then run:

```bash
bundle install
```

In your site's `_config.yml`:

```yaml
theme: jekyll-theme-bobby
```

## Use as a GitHub remote theme

If you publish this repository to GitHub, you can consume it as a remote theme from another Jekyll site.

In your site's `Gemfile`:

```ruby
gem "jekyll-remote-theme"
```

In your site's `_config.yml`:

```yaml
plugins:
  - jekyll-remote-theme
remote_theme: your-github-username/jekyll-theme-bobby
```

> If you are using GitHub Pages, remote themes are supported automatically via the `jekyll-remote-theme` plugin.

## Publish as a gem

Build the gem:

```bash
gem build jekyll-theme-bobby.gemspec
```

Publish it:

```bash
gem push jekyll-theme-bobby-0.1.0.gem
```

Then in your site's `Gemfile`:

```ruby
gem "jekyll-theme-bobby"
```

and in `_config.yml`:

```yaml
theme: jekyll-theme-bobby
```

## GitHub Actions Publishing

To publish new versions automatically from GitHub, add the `RUBYGEMS_API_KEY` secret to your repository settings.

Create `.github/workflows/publish.yml` with a release tag trigger, then push a tag like `v0.1.0`.

The workflow can build and publish the gem with Bundler and RubyGems.
