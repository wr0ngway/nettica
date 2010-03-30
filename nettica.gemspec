Gem::Specification.new do |s|
  s.name = %q{appoxy-nettica}
  s.version = "0.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Conway", "Chad Arimura"]
  s.date = %q{2010-03-29}
  s.default_executable = %q{nettica}
  s.description = %q{A ruby client for managing nettica bulk-dns entries using the Nettica SOAP API - This fork is Ruby 1.9 compatible}
  s.email = %q{chad@appoxy.com}
  s.executables = ["nettica"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/nettica", "lib/nettica.rb", "lib/nettica/client.rb", "lib/nettica/stubs/DnsApiAsmxClient.rb", "lib/nettica/stubs/nettica.rb", "lib/nettica/stubs/nettica.wsdl", "lib/nettica/stubs/netticaDriver.rb", "lib/nettica/stubs/netticaMappingRegistry.rb", "test/test_nettica.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/wr0ngway/nettica}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{nettica}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{A ruby client for managing nettica bulk-dns entries using the Nettica SOAP API - This fork is Ruby 1.9 compatible}
  s.test_files = ["test/test_nettica.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<mumboe-soap4r>, [">= 0"])
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<mumboe-soap4r>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<mumboe-soap4r>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end

