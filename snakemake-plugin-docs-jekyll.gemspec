# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "snakemake-plugin-jekyll"
  spec.version       = "0.0.1"
  spec.authors       = ["@vsoch"]
  spec.email         = ["vsoch@users.noreply.github.com"]

  spec.summary       = %q{A simple documentation theme intended for snakemake plugin documentation sites.}
  spec.description   = "Snakemake plugins are community contributions to snakemake for executors and (TBA remotes, schedulers, and reports)."
  spec.homepage      = "https://github.com/snakemake"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|NOTICE|COPYRIGHT|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 1.2"
end

