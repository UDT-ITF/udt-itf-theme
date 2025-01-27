# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "udt-itf-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["IIIF-C","UDT-ITF"]
  spec.email         = ["admin@iiif.io"]

  spec.summary       = %q{Modification of IIIF Jekyll gem theme for UDT-ITF spec.}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|lib|_(includes|layouts|sass|data)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "html-proofer"
  spec.add_runtime_dependency "jekyll", ">= 4.0", "< 4.2"
  spec.add_runtime_dependency "jekyll-data"
  spec.add_runtime_dependency "jekyll-gzip"
  spec.add_runtime_dependency "jekyll-redirect-from"
  spec.add_runtime_dependency "jekyll-liquify", "= 0.0.2"
  spec.add_runtime_dependency "rake"
end
