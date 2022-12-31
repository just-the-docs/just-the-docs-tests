---
title: Copy code button
---

# Copy code button

Check that for each of the following code blocks:

- you see a copy button at the top right of the block when hovering over it;

- the copy button appears on top of a selected text area;

- the cursor acquires a white-on-green +-sign when the copy button is clickable;

- clicking the copy button replaces the blank copy button by a filled icon with a tick mark, and

- the clipboard contents are replaced by the entire code of the block,
  including leading and trailing spaces, but omitting line numbers.

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
