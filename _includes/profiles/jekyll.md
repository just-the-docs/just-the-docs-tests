{%- comment -%}
  Include as: {%- include profiles/jekyll.md jekyll="N.N.N" -%}
{%- endcomment -%}

## Jekyll {{ include.jekyll }}

|            Theme ref: | [v0.3.3] | [v0.4.2] | [v0.5.0] | [v0.5.2] | [v0.5.4] | [#1244] |
| :--------- | -----: | -----: | ------: | -----: | ------: | ------: | ------: |
{% include profiles/site.md site="just-the-docs-tests"  jekyll=include.jekyll %}
{% include profiles/site.md site="endoflife.date"       jekyll=include.jekyll %}
{% include profiles/site.md site="jekyll-doc-tsl2"      jekyll=include.jekyll %}
{% include profiles/site.md site="machinetranslate.org" jekyll=include.jekyll %}
