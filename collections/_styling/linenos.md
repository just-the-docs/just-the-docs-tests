---
title: Code line numbers
---

# Code highlighting with line numbers

Jekyll 3 and 4 produce invalid HTML from highlighted code with line numbers.
Validation of the produced HTML may report:

> Error: Element `table` not allowed as child of element `code` [...]

1.  Turn off HTML compression with the following setting in `_config.yml`:

    ```yaml
    compress_html:
      ignore:
        envs: all
    ```

1.  Check that [HTML validation](https://validator.w3.org/nu/) reports no errors on this page.

1.  Remove the setting for HTML compression, to get the default compression provided by the theme.

1.  Check that HTML validation now reports an error that refers to the second example below.
    The error may also produce incorrect formatting.
    
The examples below are from [a Jekyll docs page](https://jekyllrb.com/docs/liquid/tags/#line-numbers).

The first example uses the workaround explained in the theme docs:

{% capture code %}
{% highlight ruby linenos %}
def foo
  puts 'foo'
end
{% endhighlight %}
{% endcapture %}
{% include fix_linenos.html code=code %}
{% assign code = nil %}
 
The second example doesn't use the workaround:

{% highlight ruby linenos %}
def foo
  puts 'foo'
end
{% endhighlight %}
