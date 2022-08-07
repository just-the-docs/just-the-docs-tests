---
title: Code highlighting
---

# Code highlighting

The following button toggles between the `light` and `dark` schemes on this page:

<button class="btn js-toggle-dark-mode">Show the dark color scheme</button>

<script>
const toggleDarkMode = document.querySelector('.js-toggle-dark-mode');

jtd.addEvent(toggleDarkMode, 'click', function(){
  if (jtd.getTheme() === 'dark') {
    jtd.setTheme('light');
    toggleDarkMode.textContent = 'Show the dark color scheme';
  } else {
    jtd.setTheme('dark');
    toggleDarkMode.textContent = 'Show the light color scheme';
  }
});
</script>

1.  Check that the code below is clearly highlighted in the light scheme. 

1.  Select the dark mode.

1.  Check that the code below is clearly highlighted in the dark scheme. ✅

An example of Ruby code:

```ruby
def power(x,n)
  result = 1
  while n.nonzero?
    if n[0].nonzero?
      result *= x
      n -= 1
    end
    x *= x
    n /= 2
  end
  return result
end

def f(x)
  Math.sqrt(x.abs) + 5*x ** 3
end

(0...11).collect{ gets.to_i }.reverse.each do |x|
  y = f(x)
  puts "#{x} #{y.infinite? ? 'TOO LARGE' : y}"
end
# Map color names to short hex
COLORS = { :black   => "000",
           :red     => "f00",
           :green   => "0f0",
           :yellow  => "ff0",
           :blue    => "00f",
           :magenta => "f0f",
           :cyan    => "0ff",
           :white   => "fff" }

class String
  COLORS.each do |color,code|
    define_method "in_#{color}" do
      "<span style=\"color: ##{code}\">#{self}</span>"
    end
  end
end
```
{% include links.md %}
