YSGP websitesi
==============

## Durum:

Heroku : [![Build Status](https://snap-ci.com/Zk9sqfhIOYgptruJSit-4N0Z1qZW-311A3GlnEBooEQ/build_image)](https://snap-ci.com/projects/ysgp/website/build_history)

## Gereksinimler

* ruby 2.0
* rubygems
* bundler

rbenv / rvm kullanılması önerilir

## Kurulum

    $ git clone git@github.com:ysgp/website.git
    $ cd website/
    $ bundle

## Lokal sunucunun çalıştırılması

    $ rackup -p 4567

[http://localhost:4567](http://localhost:4567) adresinden yerel sunucuya
ulaşabilirsiniz.

## Testlerin çalıştırılması

    $ rake test

## Yayın

### Heroku'da yayın:

heroku-push plugin kurulumu:

    $ heroku plugins:install https://github.com/ddollar/heroku-push

heroku push komutu ile githubda bulunan kodu Heroku uygulamanızda yayına sokabilirsiniz.

    $ heroku push https://github.com/ysgp/website.git --app HEROKU_APP
