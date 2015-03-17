# Boilerplate for quick static site setup

This boilerplate will fit your workflow only if you use Stylus, Jade and CoffeeScript.

This workflow setup has for main objective to provide a fast cycle from changes to browser rendering (work still in progress) and to be more simple (at the expense of modularity) than gulp/grunt and other tried solutions.

It borrows the must-have parts from the HTML5 boilerplate and nginx best practices,


## Install

```bash
git clone --depth 1 https://github.com/nepsilon/static-web-boilerplate.git <your-project-dir>
cd <your-project-dir>
rm -fr .git
git init .
make install
```

## Getting Started

Use `make watch` to  start a local webserver and watch the files in the `/src` folder. When any change is seen, the build process (`make build`) will be triggred.

## Folder structure

```bash
.
├── Makefile
├── README.md
├── package.json
├── public # This is what your web server will serve
│   ├── css
│   ├── font
│   ├── js
│   ├── media
│   └── robots.txt
├── site.conf.nginx.conf # To use only if you want to serve your site with nginx
└── src
    ├── index.jade
    ├── _base.jade # The Master template
    ├── 404.jade
    ├── 50X.jade
    ├── css
    │   ├── index.styl
    │   ├── inc
    │   │   ├── reset.styl
    │   │   ├── variables.styl
    │   │   ├── fonts.styl
    │   │   ├── animations.styl
    │   │   ├── basics.styl
    │   │   ├── navbar.styl
    │   │   ├── footer.styl
    │   │   └── helper.styl
    └── js
        └── index.coffee
```

## Other Usage

* `make reset` to reset the `/public` folder to its original state.
* `make build` to manually trigger the build process.
* `make serve` to start the local webserver.
* `make install` to install the dependencies.


## TODO

* Find a fast live reload equivalent
* Use `make` features to run taks in parallel when possible
* Ensure only changed files are being built at each change
* Minify the files in the public folder
* Add a `make deploy` target to deploy to an S3 bucket or via SSH.


## License

The MIT License (MIT)

Copyright © 2015 Julien Buty <julien@nepsilon.net>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
