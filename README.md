Columbia SSL Homepage
=====================

Forked from [academicpages][academicpages]; see `LICENSE.md`.

[academicpages]: https://github.com/academicpages/academicpages.github.io

Notes
-----

### Purpose

The idea is our lab have a minimal, easy-to-maintain landing page that points to
each of our personal webpages.

### Background

This site is heavily pared down from [academicpages][academicpages].
We picked it because it looks nice and clean.
It used to support all sorts of features like site maps, archives, comments,
CVs, and God knows what else. [I][j-hui] removed those because the whole point
for this is to be simple. What little I left in is the necessary (I think?)
plumbing for this to stand on its own as a Jekyll site, so we can maintain this
site using only Markdown (and not HTML).


Maintenance/Contributing
------------------------

You can fork this repo and publish it as your own GitHub page by tweaking your
Settings, but you can also host it locally using Jekyll. Here are the
instructions that came with [academicpages][academicpages]:

1.  Clone the repository and made updates as detailed above

1.  Make sure you have ruby-dev, bundler, and nodejs installed:
    `sudo apt install ruby-dev ruby-bundler nodejs`

1.  Run `bundle clean` to clean up the directory (no need to run `--force`)

1.  Run `bundle install` to install ruby dependencies.
    If you get errors, delete Gemfile.lock and try again.

1.  Run `bundle exec jekyll liveserve` to generate the HTML and serve it from
    `localhost:4000`. The local server will automatically rebuild and refresh
    the pages on change.

And here is Jekyll's own [installation guide][jekyll-install].

[jekyll-install]: https://jekyllrb.com/docs/installation/

Once Jekyll builds your static site, its contents will be dumped into `_site/`.
Please don't commit that.

### Organization

To keep things simple, all content is on a single page ([I][j-hui] stripped all
other pages from the [academicpages][academicpages] template).
All that content is maintained in [`_pages/about.md`][about],
so if you need to add or change anything, just do so there.

[about]: _pages/about.md

Other metadata, including the site title, author profile on the left, GitHub,
etc. is all configured in [`_config.yml`][config]. We shouldn't need to touch
that too often, and it'll probably be in a perpetual state of "needs more
cleanup", but just keep in mind that it's there if you need to go sperlunking.

[config]: _config.yml


The link tabs at the top of the page are configured in
[`_data/navigation.yml`][navigation]. Note that each of the links are just
[**anchors**][anchors]; something that looks a little like this:

    https://dot.com/bubble.html#my-anchor

It jumps you down the `bubble.html` to `my-anchor` instead of loading a new one.

Markdown's anchor name generation scheme can be _slightly_ flaky when dealing
with capitalization, spaces, and other non-alphanumeric characters, so we
overload each anchor using an HTML snippet just to be extra cautious:

```markdown
### <a name="Faculty"></a>Faculty
```

[navigation]: _data/navigation.yml
[anchors]: https://gist.github.com/asabaylus/3071099


#### Links

[I][j-hui] aggressively prefer reference-style [links][links] in Markdown,
because they avoid inline cluttering and allow you to keep all your links in the
same place. The general gist is, if you would like to link `some phrase` to
`https://some-link.com/egregiously/long/uri/make/me/cry/xD`, you would instead
link to an intermediate reference `[some-link]` and let Markdown do the work for
you, e.g.;

```markdown
This is some text where I would like to link [some phrase][some-link] to the
relevant URI without cluttering the source text.
```

And then make sure that anywhere else in the same `.md` file, you have:

```markdown
[some-link]: https://some-link.com/egregiously/long/uri/make/me/cry/xD
```

Keeps things readable.

[links]: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#links

#### Images

Images are kept in [`images/`][images]. Dump any images you'd like to include in
there, and then [display it in Markdown][md-images] using:

```markdown
![alt text](/images/image-name.png "Logo Title Text 1")
```

[images]: images/
[md-images]: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#images


### Files

If we ever feel the need to host files on our static site, dump them in
[`files/`][files]. Then they'll be available under the `files/` URI.


[files]: files/

TODOs
-----

-   Figure out SEO


Maintainers/contributors
------------------------

Add yourselves (and don't forget to include some contact information):

-   [John Hui][j-hui]


[j-hui]: mailto:j-hui@cs.columbia.edu


