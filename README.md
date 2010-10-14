Marky
=====

Marky is simple wrapper for converting strings/text to html using different markdown processors.

Installation
============
  [sudo] gem install marky

By default, installing Marky will install also RDiscount, Maruku and BlueCloth if necessary.

Usage
=====

    require 'marky'
    Marky.adapter = :maruku
    Marky.to_html("Hello, Marky")
    => "<p>Hello, Marky</p>"

Adapters
========

Right now, the available adapters are RDiscout, BlueCloth and Maruku. If you want to add another, just create a module into adapters dirrectory who implements to_html method.

Meta
====

* Author  : Mitko Kostov
* Email   : mitko.kostov@gmail.com
* Website : [http://mitkokostov.info](http://mitkokostov.info)
* Twitter : [http://twitter.com/mytrile](http://twitter.com/mytrile)
 
License
=======	

Copyright (c) 2010 Mitko Kostov

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.