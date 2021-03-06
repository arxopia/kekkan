# Copyright (c) 2012-2017 Jacob Hammack.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NON INFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

base = __FILE__
$:.unshift(File.join(File.dirname(base), 'lib'))

require 'kekkan/version'

Gem::Specification.new do |s|
	s.name = "#{Kekkan::APP_NAME}"
	s.version = Kekkan::VERSION
	s.homepage = Kekkan::SITE
	s.summary = "#{Kekkan::APP_NAME}"
	s.description = "#{Kekkan::APP_NAME} is an SAX XML parser and database for NVD CVE and CPE XML files."
	s.license = "MIT"

	s.authors = Kekkan::AUTHORS
	s.email = Kekkan::EMAIL

	s.cert_chain  = ['certs/hammackj.pem']
	s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/

	s.files	= Dir['[A-Z]*'] + Dir['lib/**/*'] + ['kekkan.gemspec']
	s.bindir = "bin"
	s.executables = "#{Kekkan::APP_NAME}"
	s.require_paths = ["lib"]
	s.has_rdoc = 'yard'
	s.extra_rdoc_files = ["README.markdown", "LICENSE"]

	s.rubyforge_project	= "#{Kekkan::APP_NAME}"

	s.add_runtime_dependency 'rails', '~> 4.2', '>= 4.2.6'
	s.add_runtime_dependency 'nokogiri', '~> 1.6', '>= 1.6.8'
end
