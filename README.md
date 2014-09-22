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
