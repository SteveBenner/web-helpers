# Slim Templates
I use Slim exclusively for HTML development, and I build most of my websites using [Middleman](http://middlemanapp.com/). The `middleman` subdirectory contains templates dedicated exclusively for use within this framework (although they are not necessarily incompatible with others).

## HTML5 Boilerplate
I've crafted three different kinds of Slim template based on the `index.html` file used in [HTML5 Boilerplate][4]:

- #### Perfect replica of `index.html`

    File(s) named `html5-boilerplate-<version>` compile to an HTML page **identical** to corresponding `index.html` in the tagged release branch of Boilerplate represented by `<version>`. So for instance, the output of [html5-boilerplate-4.0.3.slim][1] should lined up exactly with [the index file in dist. 4.3.0][5]. The goal of this template is to show how the Boilerplate `index` page might be reproduced ***down to the last minutiae*** using Slim*, while keeping code DRY, well-documented, and idiomatic.

    ***\**** *The only exceptions are minor newline/indentation differences when rendered with `pretty` mode enabled, as well as a few forward-slashes placed at the end of tags automatically. But while Slim can't be configured finely enough to reproduce the `index` file in 100% actuality, it's really unnecessary considering that* ***HTML should be compressed for production anyway.***
    
- #### Lean (otherwise known as Slim-Fast)

    [html5bp-lean][2] is a 'slimmed-down', bare-bones version of Boilerplate that provides a non-opinionated, developer-friendly starting point for building a webpage. All of the external assets are stripped out, and the code is refactored slightly to make it as clean as possible, jump-starting the development process. If you're wondering why I removed the code for loading scripts and stylesheets, it's because I agree they should be included, but modern web asset management is carried out using so many diverse tools and techniques that a good boilerplate needs to be very unassuming, even about just a few lines of HTML.
    
- #### Middleman layout

    Serving as my main layout file for web projects, [html5bp-middleman][3] is of course designed for use with the [Middleman](http://middlemanapp.com/) framework. Though the code is easily compatible with other Ruby web frameworks, its reliance on specific helpers and features of Middleman make it highly opinionated, but also highly efficient for website construction. Notable differences include use of partials and `yield`.

### A note about the `HTML` tag and IE conditional comments
In the templates you will note that [I generate the HTML tag and IE conditional comments functionally][6], instead of manually writing out a line for each one. You might consider this a sign of someone who takes the 'DRY' concept too far, but aside from the fact I may indeed fit that criterion, and that Ruby is just downright ***fun*** to code in, there are some good reasons why this technique is beneficial for productivity, perhaps elegant even:

1. **Abstraction:** it's not just about DRY'ing out a few measly lines of HTML, but rather taking advantage of the power offered by abstraction. This whole compatibility-hack-in-disguise can be considered a case of 'single responsibility', so it seems ideal to handle it via a helper function. Even though it's not much code, when multiplied by real-world demands of large-scale development or even just widespread usage of the same file, an abstracted feature is ***far*** superior.
2. **Maintainability:** The original code itself adds significant complexity; it raises the technical requirements of the developer, and introduces more opportunity for human error. It is also very likely subject to change--I can't imagine Microsoft ever slowing their drive to churn out more versions of IE (**barf**)...
3. **Understandability:** Ruby shines because it optimizes for developer comprehension, and this abstraction is a perfect illustration of why and how. The reason we're using Slim in the first place is because why close tags? Sadly, every existing Slim template I've seen of Boilerplate's `index.html` is uglified with a trailing `| <html>` text line at the bottom, due to the fact that we wish to surround **only** the opening `<html>` tag with the IE comments, *and Slim doesn't work that way!* Except the thing is, **it does**. [As explained in the official docs][4], one can pass a Slim block to a helper function for arbitrary modification, which means we can write our HTML page as normal in Slim, and simply pass it to the helper as a block. No ugly code, no bad technique--all we do is swap out the regular `html` tag for our helper, and the complex alterations going on are now **basically invisible**! That's what good abstraction is all about.

---
**TODO:**

- create sample output for `middleman/sitemap.xml.slim` (and update gist!)


[1]: https://gist.github.com/SteveBenner/b532b6fd8bf9fa8114c3
[2]: https://gist.github.com/SteveBenner/5df58e30de5165a44822
[3]: https://gist.github.com/SteveBenner/fc78f445a9a5523d3d56
[4]: https://github.com/slim-template/slim#helpers-capturing-and-includes
[5]: https://github.com/h5bp/html5-boilerplate/blob/v4.3.0/index.html
[6]: https://gist.github.com/SteveBenner/a71f41e175f135b7d69b