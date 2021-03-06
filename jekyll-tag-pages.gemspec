# frozen_string_literal: true
# Copyright: Since 2017 Tamanguu GmbH & Co KG - MIT License
# Encoding: utf-8

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-tag-pages/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-tag-pages"
  spec.summary = "Add tag index pages with and without pagination."
  spec.description = <<-EOF
This plugin is for all authors that use tags their pages. It generates
tag overview pages with a custom layout. Optionally, it also adds proper
pagination for these pages.

Please refer to the README.md file on the project homepage at
https://github.com/tamouse/jekyll-tag-pages
EOF
  spec.version = Jekyll::TagPages::VERSION
  spec.authors = ["Tamara Temple", "Dr. Wolfram Schroers", "Tamanguu GmbH & Co KG"]
  spec.email = "tamara@tamouse.org"
  spec.homepage = "https://github.com/tamouse/jekyll-tag-pages"
  spec.licenses = ["MIT"]

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(lib/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll"
  spec.add_dependency "jekyll-paginate"

  spec.add_development_dependency "rspec", "~> 3.0"
end
