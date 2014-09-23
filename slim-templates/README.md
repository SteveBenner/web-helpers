# Slim Templates

### HTML5 Boilerplate
I've crafted three different kinds of Slim template based on the `index.html` file used in [HTML5 Boilerplate][1]:

- #### The Clone - a Slim template that outputs a perfect replica of `index.html`

    File(s) named `html5-boilerplate-<version>` compile to an HTML page **identical** to corresponding `index.html` in the tagged release branch of Boilerplate represented by `<version>`. So for instance, the output of [html5-boilerplate-4.0.3.slim](html5-boilerplate-4.0.3.slim) should lined up exactly with [the index file in dist. 4.3.0][2]. The goal of this template is to show how the Boilerplate `index` page might be reproduced ***down to the last minutiae*** using Slim*, while keeping code DRY, well-documented, and idiomatic, albeit slightly odd.

    **The only exceptions are minor newline/indentation differences when rendered with `pretty` mode enabled, as well as a few forward-slashes placed at the end of tags automatically (non-configurable).*
    
- #### Lean (otherwise known as Slim fast)

    [html5bp-lean](html5bp-lean.slim) is a 'slimmed-down', bare-bones version of Boilerplate that provides a non-opinionated, developer-friendly starting point for building a webpage. All of the external assets stripped out, and the code is refactored a bit to expedite development cleanly. My reasoning is as follows: while the included scripts and styles make perfect sense as defaults, asset management is done in such a wide variety of ways these days that a 'blank slate' is often just **more convenient overall**. A template should be non-assuming at any rate, I think. This file is my concept of an ideal balance between convention and minimalism; I use it as a starting point for basic websites.
    
    
- Serving as my main layout file for web projects, [html5-boilerplate](layouts/html5-boilerplate.slim) is specifically designed for use with the [Middleman][3] framework. Though the code is easily compatible with other Ruby web frameworks, its reliance on specific helpers and features of Middleman make it highly opinionated, and highly efficient for website construction if that is your tool of choice. In particular are 



[1]: https://github.com/h5bp/html5-boilerplate
[2]: https://github.com/h5bp/html5-boilerplate/blob/v4.3.0/index.html
[3]: http://middlemanapp.com/