{%- comment -%}
  UNUSED.
  Transforms profile output from Jeyll 4 builds to sources for kramdown tables.
  Include as: {%- include profiles/profile.md project=PROJECT name=OPT-NAME version=VERSION -%}
{%- endcomment -%}

{%- capture text -%}
{%- include profiles/{{ include.project }}/{{ include.version }}.txt -%}
{%- endcapture -%}

{%- assign profile = text | split: "Build Process Summary: " -%}

{%- assign tables = profile[1] | split: "Site Render Stats: " -%}

{{ tables[1] | split: "done in " | slice: 1 | first | split: "Auto" | slice: 0 }}

```yaml
remote_theme: {{ include.name | default: "just-the-docs" }}/just-the-docs@{{ include.version }}
```

{% assign summary = tables[0] | replace: "-+-", ":|:" -%}

<details markdown="block">
  <summary>
    Build Process Summary: 
  </summary>
  {: .text-delta }

{{ summary }}

</details>

{%- assign stats = tables[1] | replace: "-+", ":|" | split: "0.001" | first | append: "0.001 |" -%}

{% capture nl %}
{% endcapture %}

{%- assign lines = stats | split: nl -%}

{%- capture abbrevs -%}
{% for l in lines -%}
{%- if l contains "jekyll-remote-theme" -%}
{%- assign path = l | split: "/_" %}
{{ path[1] | prepend: "/_" | prepend: include.version  }}
{%- else %}
{{ l }}
{%- endif %}
{%- endfor -%}
{%- endcapture %}

<details markdown="block">
  <summary>
    Site Render Stats: 
  </summary>
  {: .text-delta }

{{ abbrevs }}

</details>
