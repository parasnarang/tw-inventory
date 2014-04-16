# -*- encoding: utf-8 -*-
# stub: country_select 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "country_select"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Stefan Penner"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDijCCAnKgAwIBAgIBATANBgkqhkiG9w0BAQUFADBFMRcwFQYDVQQDDA5hZGFt\nYW5kZXJzb25pczEVMBMGCgmSJomT8ixkARkWBWdtYWlsMRMwEQYKCZImiZPyLGQB\nGRYDY29tMB4XDTE0MDEyODIyNTQ1N1oXDTE1MDEyODIyNTQ1N1owRTEXMBUGA1UE\nAwwOYWRhbWFuZGVyc29uaXMxFTATBgoJkiaJk/IsZAEZFgVnbWFpbDETMBEGCgmS\nJomT8ixkARkWA2NvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ4Q\nab6dy9kVAE7JgB9dPAkjU+fHK2vPrYiV7y4PxHm7TEhtoJ05EhcqVEweFn2HNf/M\nPf6AUZjngyMmS6tbEpx600RH38faj6p457oldUKb/cpCiwHwu7AaIKt77VhDeosl\nA43KzUoq5tnAg6eauuTF7vllUUZnd+qozGEuVVIX+Wxt2qGEsNv+mOCCzq3Pg+g+\nlpSIzGYMAOAxv/pCYwd+yudMgcwxo0f4L89MSqQlJQ0rYqvB28dd3GrgDtMiK2NR\nRPkHHRjOq7KU/Fc3ldxzNtI72kffvKn/tF+q40fQbC8w2om97C6LI9mos/a+yw+G\nb87MAcgczKwYywmmtykCAwEAAaOBhDCBgTAJBgNVHRMEAjAAMAsGA1UdDwQEAwIE\nsDAdBgNVHQ4EFgQUaPpU61pfY1/3HHQV1WiKbihL3NwwIwYDVR0RBBwwGoEYYWRh\nbWFuZGVyc29uaXNAZ21haWwuY29tMCMGA1UdEgQcMBqBGGFkYW1hbmRlcnNvbmlz\nQGdtYWlsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAZk4hTjlk+ZYuD09/HJzXlwgJ\nQthblKYRFnNktL+7OqByg28NzMsYpEEm0sHlyOmywRo2a24/JWxuTHQnqcMuR0aX\n3PIR50hsV2QHpQ0C2jDb51Q+zqSkdkw7Lj3P/ezb2fRZch6FQgDFDnUfx/Z1adHm\nERqy2jy+jvaMqYJZ1eLEAGVnCwzCC7PKNkNUcXVrMNvjNke+0T6jOylYPMyhbt8z\nb/CRir9ENc3AaSLrSWqwHBqnM+brG5INQq6eTgu70I0woN06eih0en4ABYQZmT6h\nDZZ1NZEkFwLS/haj/p8XUSq+KlwMDtnIss9ABXLJOONRzU4eICRpA/15bs89FQ==\n-----END CERTIFICATE-----\n"]
  s.date = "2014-01-29"
  s.description = "Provides a simple helper to get an HTML select list of countries.  The list of countries comes from the ISO 3166 standard.  While it is a relatively neutral source of country names, it will still offend some users."
  s.email = ["stefan.penner@gmail.com"]
  s.homepage = "https://github.com/stefanpenner/country_select"
  s.licenses = ["MIT"]
  s.rubyforge_project = "country_select"
  s.rubygems_version = "2.2.2"
  s.summary = "Country Select Plugin"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2"])
      s.add_development_dependency(%q<actionpack>, ["~> 3"])
      s.add_development_dependency(%q<pry>, ["~> 0"])
      s.add_runtime_dependency(%q<countries>, ["= 0.9.3"])
    else
      s.add_dependency(%q<rspec>, ["~> 2"])
      s.add_dependency(%q<actionpack>, ["~> 3"])
      s.add_dependency(%q<pry>, ["~> 0"])
      s.add_dependency(%q<countries>, ["= 0.9.3"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2"])
    s.add_dependency(%q<actionpack>, ["~> 3"])
    s.add_dependency(%q<pry>, ["~> 0"])
    s.add_dependency(%q<countries>, ["= 0.9.3"])
  end
end
