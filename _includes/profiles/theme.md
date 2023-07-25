{%- comment -%}
  Include as: {%- include profiles/theme.md org=ORG theme=THEME site=SITE jekyll="N.N.N" -%}
  Assumes: ./SITE/N.N.N/THEME/profile.txt contains "done in SECS.FRAC seconds"
{%- endcomment -%}

{%- capture profile -%}
{%- include_relative {{ include.site }}/{{ include.jekyll }}/{{ include.org }}/{{ include.theme }}/profile.txt -%}
{%- endcapture -%}

[{{- profile | split: "done in " | slice: 1 | first
           | split: " seconds" | slice: 0 | first
           | split: "."        | slice: 0 | first -}}](../{{ include.site }}/{{ include.jekyll }}/{{ include.org }}/{{ include.theme }}/profile.txt)
{%- comment -%}{%- endcomment -%}
