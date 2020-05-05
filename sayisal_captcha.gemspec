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
  spec.homepage      = "https://github.com/vigo/sayisal_captcha"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 2.1', '>= 2.1.4'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.1'
  spec.add_development_dependency 'minitest', '~> 5.14'
  spec.add_development_dependency 'coveralls', '~> 0.8.23'
end
