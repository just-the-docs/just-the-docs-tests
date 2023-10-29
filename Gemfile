source "https://rubygems.org"

gem "jekyll-default-layout"
gem "kramdown-parser-gfm"
gem "webrick"
gem "rake"

if (ENV["JEKYLL_VERSION"])
  gem 'jekyll', ENV["JEKYLL_VERSION"]
else
  gem 'jekyll', '~> 4.3.2'
end

if (ENV["JTD_ORG"] && ENV["JTD_REF"])
  gem 'just-the-docs', github: ENV["JTD_ORG"]+'/just-the-docs', ref: ENV["JTD_REF"]
else
  gem 'just-the-docs'
end
