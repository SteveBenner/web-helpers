# Slim Templates

### HTML5 Boilerplate
I've crafted three different kinds of Slim template based on the excellent [HTML5 Boilerplate][1] `index.html`:

- File(s) named `html5-boilerplate-<version>` compile to an HTML page **identical** to corresponding `index.html` file in the tagged release branch of Boilerplate represented by `<version>`, e.g. [v4.3.0][2]. This template was made to show how the Boilerplate `index` page might be reproduced ***down to the last minutiae*** using Slim*, coded with a focus on using DRY, well-documented, idiomatic techniques.

    ***\*** The only exceptions are minor newline/indentation differences in the version rendered with `pretty` mode enabled, and some tags which are explicitly closed using a forward-slash (non-configurable).*
    
- The template [html5bp-index.slim] is a much more developer-friendly version of Boilerplate, with cleaner code and all external assets stripped out. My reasoning is as follows: while the included scripts and styles make **perfect** sense as defaults, asset management is done in such a wide variety of ways these days that a 'blank slate' is often just **more convenient overall**. A template should be non-assuming at any rate, I think. This file is my concept of an ideal balance between convention and minimalism; I use it as a starting point for basic websites.
- Serving as my main layout file for web projects, [layouts/html5-boilerplate.slim] is specifically designed for use with the [Middleman][3] framework.



[1]: https://github.com/h5bp/html5-boilerplate
[2]: https://github.com/h5bp/html5-boilerplate/blob/v4.3.0/index.html
[3]: http://middlemanapp.com/