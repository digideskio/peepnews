PeepNews
========

Source code of [Objective-C for
Rubyists](https://peepcode.com/products/objective-c-for-rubyists) made in Xcode
4.3 and without TouchJSON dependency.

Challenge
---------

    $ git checkout 68c636f

- Copy [products.json](https://peepcode.com/products.json) to your project directory
- In test `setUp`, set `productList.url` to the path to `products.json`
- Make an NSURL variable, plus @property and @synthesize for the url
- Modify ProductList to set a default url in `init` and use it in `products`

License
-------

[WTFPL](http://sam.zoy.org/wtfpl/).
