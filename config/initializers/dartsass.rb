Rails.application.config.dartsass.builds = {
  "custom.scss"       => "custom.css"
}

Rails.application.config.dartsass.build_options << " --style=compressed" if Rails.env.production?
bootstrap_path = Bundler.rubygems.find_name('bootstrap').first.full_gem_path
Rails.application.config.dartsass.build_options << " --load-path=#{bootstrap_path}/assets/stylesheets"
