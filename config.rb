
# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set :css_dir, 'assets/stylesheets'

set :js_dir, 'assets/js'

set :images_dir, 'assets/img'

# Ignore assets managed by npm / submodule
ignore 'assets/js/package.json'
ignore 'assets/js/node_modules/*'
ignore 'assets/js/webpack.config.js'
ignore /assets\/js\/(?!app.js).*\./

after_configuration do
  sprockets.append_path File.dirname(::React::Source.bundled_path_for('webpack.production.js'))
end

activate :react

# Configure production build
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :imageoptim do |options|
    options.manifest = false
  end
  activate :inliner
  activate :minify_html do |html|
    html.remove_http_protocol = false
    html.remove_quotes = false
  end
end

# Deploy to GitHub Pages branch
activate :deploy do |deploy|
  deploy.method = :git
end
