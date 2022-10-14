---
title: Search input color
---

# ✅ Search input color

The following button toggles between the `light` and `dark` color schemes on this page:

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

1.  Check that the search placeholder text is clearly legible in the light mode. 

1.  Select the dark mode.

1.  Check that the search placeholder text is clearly legible in the dark mode.
