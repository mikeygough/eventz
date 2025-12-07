Rails.application.config.dartsass.builds = {
  "application.scss"  => "application.css",
  "custom.scss"       => "custom.css"
}

Rails.application.config.dartsass.build_options << " --style=compressed" if Rails.env.production?
