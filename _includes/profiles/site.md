{%- comment -%}
  Include as: {%- include profiles/site.md site=SITE jekyll="N.N.N" -%}
{%- endcomment -%}

{%- capture time_0_3_3 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.3.3" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_4_2 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.4.2" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_5_4 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.5.4" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_6_2 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.6.2" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_7_0 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.7.0" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_quicker_build -%}
{%- include profiles/theme.md org="pdmosses" theme="quicker-build" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

| [{{ include.site }}] | {{ time_0_3_3 }} | {{ time_0_4_2 }} | {{ time_0_5_4 }} | {{ time_0_6_2 }} | {{ time_0_7_0 }} | {{ time_quicker_build -}}
