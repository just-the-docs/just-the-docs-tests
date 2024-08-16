{%- comment -%}
  Include as: {%- include profiles/jekyll.md jekyll="N.N.N" -%}
{%- endcomment -%}

## Jekyll {{ include.jekyll }}

|            Theme ref: | [v0.4.2] | [v0.5.4] | [v0.6.2] | [v0.7.0] | [v0.8.1] | [v0.9.0] | multi-level |
| :--------- | -------: | -------: | -------: | -------: | -------: | -------: | -------: |
{% include profiles/site.md site="just-the-docs-tests"  jekyll=include.jekyll %}
{% include profiles/site.md site="jekyll-doc-tsl2"      jekyll=include.jekyll %}
{% include profiles/site.md site="endoflife.date"       jekyll=include.jekyll %}
{% include profiles/site.md site="machinetranslate.org" jekyll=include.jekyll %}
