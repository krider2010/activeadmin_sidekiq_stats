
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "activeadmin_sidekiq_stats/version"

Gem::Specification.new do |spec|
  spec.name          = "activeadmin_sidekiq_stats"
  spec.version       = ActiveadminSidekiqStats::VERSION
  spec.authors       = ["Bilal Budhani"]
  spec.email         = ["bilal@bilalbudhani.com"]

  spec.summary     = %q{Sidekiq Stats In ActiveAdmin Dashboard}
  spec.description = %q{Sidekiq Stats In ActiveAdmin Dashboard}
  spec.homepage      = "https://github.com/bilalbudhani/activeadmin_sidekiq_stats"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency("activeadmin", ">= 1.3.0")
  spec.add_dependency("arbre", ">= 1.1.1")
  spec.add_dependency("sidekiq", ">= 4.0.0")
end
