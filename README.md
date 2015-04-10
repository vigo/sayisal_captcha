[![Gem Version](https://badge.fury.io/rb/sayisal_captcha.svg)](http://badge.fury.io/rb/sayisal_captcha)
[![Build Status](https://travis-ci.org/vigo/sayisal_captcha.svg?branch=master)](https://travis-ci.org/vigo/sayisal_captcha)
[![Coverage Status](https://coveralls.io/repos/vigo/sayisal_captcha/badge.png?branch=master)](https://coveralls.io/r/vigo/sayisal_captcha?branch=master)
[![Code Climate](https://codeclimate.com/github/vigo/sayisal_captcha/badges/gpa.svg)](https://codeclimate.com/github/vigo/sayisal_captcha)
[![Test Coverage](https://codeclimate.com/github/vigo/sayisal_captcha/badges/coverage.svg)](https://codeclimate.com/github/vigo/sayisal_captcha)
[![Circle CI](https://circleci.com/gh/vigo/sayisal_captcha/tree/master.svg?style=svg)](https://circleci.com/gh/vigo/sayisal_captcha/tree/master)
[![Codeship](https://codeship.com/projects/6567b7f0-c1a0-0132-cd93-3eb2295b72b3/status?branch=master)](https://codeship.com/projects/73579)

# SayisalCaptcha

Captcha işlemleri için random tek basamaklı 2 sayı üretir ve yine random
olarak ya toplama ya da çarpma işlemi yaparak sonucu verir.

## Kurulum

Gemfile:

```ruby
gem 'sayisal_captcha'
```

ve çalıştırmak için:

    $ bundle # ya da
    $ bundle install --path=vendor/bundle

Ya da:

    $ gem install sayisal_captcha

## Kullanımı

Kurulumdan sonra;

```ruby
require 'sayisal_captcha'
captcha = SayisalCaptcha.generate_question

# {:first_number=>8, :last_number=>7, :operation=>:+, :question=>"8 + 7", :result=>15}
```

## Katkı Yapmak için

1. `fork` yapın ( https://github.com/vigo/sayisal_captcha/fork )
2. Kendi `branch`’inizi yapın (`git checkout -b benim-eklerim`)
3. Yaptıklarınızı `commit` edin (`git commit -am 'Yeni özellikler'`)
4. `branch`’i `push` edin (`git push origin benim-eklerim`)
5. Yeni bir **Pull Request** oluşturun!
