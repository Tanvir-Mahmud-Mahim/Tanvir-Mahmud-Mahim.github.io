source "https://rubygems.org"

# Mirrors the exact gem versions GitHub Pages runs server-side, so a local
# preview matches the published site. Only needed if you want to run the site
# locally with `bundle exec jekyll serve` — GitHub Pages does not read this file
# for a plain (non-Actions) Pages build.
gem "github-pages", group: :jekyll_plugins

group :jekyll_plugins do
  gem "jekyll-sitemap"
  gem "jekyll-seo-tag"
end

# Windows / JRuby timezone data.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.1", platforms: [:mingw, :x64_mingw, :mswin]
gem "webrick", "~> 1.8"
