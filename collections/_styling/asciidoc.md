---
title: AsciiDoc
---

# ✅ AsciiDoc

1.  Install the [`jekyll-asciidoc`] plugin in a local clone of this site,
    then build and serve the site.

1.  Check that the title of the following AsciiDoc sample is not included in the code block.

{% capture sample %}
.A method that returns the string "Hello, world"
[example]
[source,ruby]
----
def hello
  "Hello, world"
end
----
{% endcapture %}

{{ sample | asciidocify }}

[`jekyll-asciidoc`]: https://github.com/asciidoctor/jekyll-asciidoc
