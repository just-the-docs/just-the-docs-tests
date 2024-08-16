{%- comment -%}
  Include as: {%- include profiles/site.md site=SITE jekyll="N.N.N" -%}
{%- endcomment -%}

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

{%- capture time_0_8_1 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.8.1" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_9_0 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.9.0" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_multi_level -%}
{%- include profiles/theme.md org="pdmosses" theme="multi-level" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

| [{{ include.site }}] | {{ time_0_4_2 }} | {{ time_0_5_4 }} | {{ time_0_6_2 }} | {{ time_0_7_0 }} | {{ time_0_8_1 }} | {{ time_0_9_0 }} | {{ time_multi_level -}}
