###
# Settings
###
# See https://middlemanapp.com/advanced/configuration

# Build-specific configuration
configure :build do
  config.ignored_sitemap_matchers[:source_dotfiles] = proc { |file|
    # Allows any source directory .s2i files to be built
    # to enable .s2i scripts to be available in the final PHP image
    file =~ %r{/\.} && file !~ %r{/(\.s2i)}
  }
end

activate :cdn do |cdn|
  # Expects AKAMAI_USERNAME and AKAMAI_PASSWORD environment variable to be set
  cdn.akamai = {
    base_url: '<site_url>'
  }
  cdn.filter = /\.(html|xml|css|js|png|svg|gif|jpg|pdf)$/i
  # purge with `bundle exec middleman cdn`
  # or individual files with: `bundle exec middleman cdn <file1> <file2>`
end
