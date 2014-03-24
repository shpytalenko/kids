# -*- encoding: utf-8 -*-
# stub: nested_form 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "nested_form"
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.4") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Bates", "Andrea Singh"]
  s.date = "2014-03-24"
  s.description = "Gem to conveniently handle multiple models in a single form with Rails 3 and jQuery or Prototype."
  s.email = "ryan@railscasts.com"
  s.files = ["CHANGELOG.rdoc", "CONTRIBUTING.md", "Gemfile", "LICENSE", "README.md", "Rakefile", "lib/generators", "lib/generators/nested_form", "lib/generators/nested_form/install_generator.rb", "lib/nested_form", "lib/nested_form.rb", "lib/nested_form/builder_mixin.rb", "lib/nested_form/builders.rb", "lib/nested_form/engine.rb", "lib/nested_form/view_helper.rb", "spec/dummy", "spec/dummy/Rakefile", "spec/dummy/app", "spec/dummy/app/assets", "spec/dummy/app/assets/javascripts", "spec/dummy/app/assets/javascripts/application.js", "spec/dummy/app/assets/javascripts/jquery.js", "spec/dummy/app/assets/javascripts/jquery_events_test.js", "spec/dummy/app/assets/javascripts/jquery_nested_form.js", "spec/dummy/app/assets/javascripts/projects.js", "spec/dummy/app/assets/javascripts/prototype.js", "spec/dummy/app/assets/javascripts/prototype_events_test.js", "spec/dummy/app/assets/javascripts/prototype_nested_form.js", "spec/dummy/app/assets/stylesheets", "spec/dummy/app/assets/stylesheets/application.css", "spec/dummy/app/assets/stylesheets/companies.css", "spec/dummy/app/assets/stylesheets/projects.css", "spec/dummy/app/controllers", "spec/dummy/app/controllers/application_controller.rb", "spec/dummy/app/controllers/companies_controller.rb", "spec/dummy/app/controllers/projects_controller.rb", "spec/dummy/app/helpers", "spec/dummy/app/helpers/application_helper.rb", "spec/dummy/app/helpers/projects_helper.rb", "spec/dummy/app/mailers", "spec/dummy/app/models", "spec/dummy/app/models/company.rb", "spec/dummy/app/models/milestone.rb", "spec/dummy/app/models/project.rb", "spec/dummy/app/models/project_task.rb", "spec/dummy/app/models/task.rb", "spec/dummy/app/views", "spec/dummy/app/views/companies", "spec/dummy/app/views/companies/new.html.erb", "spec/dummy/app/views/layouts", "spec/dummy/app/views/layouts/application.html.erb", "spec/dummy/app/views/projects", "spec/dummy/app/views/projects/new.html.erb", "spec/dummy/app/views/projects/without_intermediate_inputs.html.erb", "spec/dummy/config", "spec/dummy/config.ru", "spec/dummy/config/application.rb", "spec/dummy/config/boot.rb", "spec/dummy/config/database.yml", "spec/dummy/config/environment.rb", "spec/dummy/config/environments", "spec/dummy/config/environments/development.rb", "spec/dummy/config/environments/production.rb", "spec/dummy/config/environments/test.rb", "spec/dummy/config/initializers", "spec/dummy/config/initializers/backtrace_silencers.rb", "spec/dummy/config/initializers/inflections.rb", "spec/dummy/config/initializers/mime_types.rb", "spec/dummy/config/initializers/secret_token.rb", "spec/dummy/config/initializers/session_store.rb", "spec/dummy/config/initializers/wrap_parameters.rb", "spec/dummy/config/locales", "spec/dummy/config/locales/en.yml", "spec/dummy/config/routes.rb", "spec/dummy/db", "spec/dummy/db/migrate", "spec/dummy/db/migrate/20110710143903_initial_tables.rb", "spec/dummy/db/migrate/20120819164528_add_association_with_class_name.rb", "spec/dummy/db/migrate/20130203095901_create_company.rb", "spec/dummy/db/schema.rb", "spec/dummy/public", "spec/dummy/public/404.html", "spec/dummy/public/422.html", "spec/dummy/public/500.html", "spec/dummy/public/favicon.ico", "spec/dummy/public/javascripts", "spec/dummy/script", "spec/dummy/script/rails", "spec/dummy/test", "spec/dummy/test/functional", "spec/dummy/test/functional/projects_controller_test.rb", "spec/dummy/test/unit", "spec/dummy/test/unit/helpers", "spec/dummy/test/unit/helpers/projects_helper_test.rb", "spec/dummy/tmp", "spec/dummy/tmp/cache", "spec/events_spec.rb", "spec/form_spec.rb", "spec/nested_form", "spec/nested_form/builder_spec.rb", "spec/nested_form/view_helper_spec.rb", "spec/spec_helper.rb", "vendor/assets", "vendor/assets/javascripts", "vendor/assets/javascripts/jquery_nested_form.js", "vendor/assets/javascripts/prototype_nested_form.js"]
  s.homepage = "http://github.com/ryanb/nested_form"
  s.rubyforge_project = "nested_form"
  s.rubygems_version = "2.2.2"
  s.summary = "Gem to conveniently handle multiple models in a single form."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.6"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<capybara>, ["~> 1.1"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.6"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<capybara>, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.6"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<capybara>, ["~> 1.1"])
  end
end
