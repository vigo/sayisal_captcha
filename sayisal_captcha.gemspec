# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sayisal_captcha/version'

Gem::Specification.new do |spec|
  spec.name          = "sayisal_captcha"
  spec.version       = SayisalCaptcha::VERSION
  spec.authors       = ["Uğur Özyılmazel"]
  spec.email         = ["ugurozyilmazel@gmail.com"]
  spec.summary       = %q{Sayıların Türkçe karşılıklarından captcha üretir.}
  spec.description   = %q{0-9 arası sayıları kullanarak random olarak 2 sayı seçer ve yine random olarak toplama ya da çarpma yaparak sonucu verir.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
