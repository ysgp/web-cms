YSGP websitesi
==============

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
