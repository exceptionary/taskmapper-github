# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ticketmaster-github"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["HybridGroup"]
  s.date = "2012-03-07"
  s.description = "This provides an interface with github through the ticketmaster gem."
  s.email = "hong.quach@abigfisch.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rbenv-gemsets",
    ".rbenv-version",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/provider/comment.rb",
    "lib/provider/github.rb",
    "lib/provider/project.rb",
    "lib/provider/ticket.rb",
    "lib/ticketmaster-github.rb",
    "spec/comment_spec.rb",
    "spec/fixtures/closed_issues.json",
    "spec/fixtures/comments.json",
    "spec/fixtures/comments/3951282.json",
    "spec/fixtures/issues.json",
    "spec/fixtures/issues/1.json",
    "spec/fixtures/issues/new_ticket.json",
    "spec/fixtures/project.json",
    "spec/fixtures/projects.json",
    "spec/fixtures/repositories.json",
    "spec/project_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "spec/ticket_spec.rb",
    "spec/ticketmaster-github_spec.rb",
    "ticketmaster-github.gemspec"
  ]
  s.homepage = "http://github.com/kiafaldorius/ticketmaster-github"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "The github provider for ticketmaster"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ticketmaster>, ["= 0.6.7"])
      s.add_runtime_dependency(%q<octokit>, ["= 0.6.5"])
      s.add_runtime_dependency(%q<jeweler>, ["= 1.6.4"])
      s.add_development_dependency(%q<rspec>, ["= 1.3.0"])
      s.add_development_dependency(%q<fakeweb>, ["~> 1.3.0"])
    else
      s.add_dependency(%q<ticketmaster>, ["= 0.6.7"])
      s.add_dependency(%q<octokit>, ["= 0.6.5"])
      s.add_dependency(%q<jeweler>, ["= 1.6.4"])
      s.add_dependency(%q<rspec>, ["= 1.3.0"])
      s.add_dependency(%q<fakeweb>, ["~> 1.3.0"])
    end
  else
    s.add_dependency(%q<ticketmaster>, ["= 0.6.7"])
    s.add_dependency(%q<octokit>, ["= 0.6.5"])
    s.add_dependency(%q<jeweler>, ["= 1.6.4"])
    s.add_dependency(%q<rspec>, ["= 1.3.0"])
    s.add_dependency(%q<fakeweb>, ["~> 1.3.0"])
  end
end

