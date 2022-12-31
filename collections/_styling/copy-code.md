---
title: Copy code button
---

# Copy code button

Check that for each of the following code blocks:

- you always see a copy button at the top right of the block when hovering over the block;

- selecting an area of the block does not affect the copy button;

- when the copy button is clickable, the cursor acquires a white-on-green +-sign;

- clicking the copy button replaces the blank copy button icon by a filled icon with a tick mark,
  and replaces the clipboard contents by the entire code of the block:
  
  - including leading and trailing spaces,
  - excluding any line numbers.

1.  A single short line:

    ```
    Hi!
    ```

1.  All these lines with leading, internal, and/or trailing spaces:

    ```
     1 leading space
      2 leading spaces and 2 trailing spaces  
    3   internal spaces
    4 trailing spaces    
    ```

1.  A single long line:
    
    ```
Long, single-line code blocks should not wrap. In long lines, the copy button must always be visible in the top right-hand corner and not at the bottom of the scrollbar (its position must not be relative to the end of the text)
    ```

1.  A multi-line code block with a single long line:

    ```
    Long, multi-line code blocks.
    Same as before, in code blocks with short lines and long lines, the copy button must always be visible in the top right-hand corner and not at the bottom of the scrollbar (its position must not be relative to the end of the text)
    ```

1.  JS code:

    ```js
    // Javascript code with syntax highlighting.
    var fun = function lang(l) {
      dateformat.i18n = require('./lang/' + l)
      return true;
    }
    ```

1.  Ruby code (line numbers not copied):

{% capture code %}
{% highlight ruby linenos -%}
# Ruby code with syntax highlighting and fixed line numbers using Liquid
GitHubPages::Dependencies.gems.each do |gem, version|
  s.add_dependency(gem, "= #{version}")
end
{% endhighlight -%}
{% endcapture %}
{% include fix_linenos.html code=code %}
{% assign code = nil %}

Narrow code stays close to the line numbers:

{% capture code %}
{% highlight ruby linenos %}
def foo
  puts 'foo'
end
{% endhighlight %}
{% endcapture %}
{% include fix_linenos.html code=code %}
{% assign code = nil %}
