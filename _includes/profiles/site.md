{%- comment -%}
  Include as: {%- include profiles/site.md site=SITE jekyll="N.N.N" -%}
{%- endcomment -%}

{%- capture time_0_3_3 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.3.3" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_4_2 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.4.2" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_5_0 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.5.0" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_5_1 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.5.1" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_5_2 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.5.2" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_0_5_4 -%}
{%- include profiles/theme.md org="just-the-docs" theme="v0.5.4" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

{%- capture time_nav_fix -%}
{%- include profiles/theme.md org="pdmosses" theme="nav-fix" site=include.site jekyll=include.jekyll -%}
{%- endcapture -%}

| [{{ include.site }}] | {{ time_0_3_3 }} | {{ time_0_4_2 }} | {{ time_0_5_0 }} | {{ time_0_5_1 }} | {{ time_0_5_2 }} | {{ time_0_5_4 }} | {{ time_nav_fix -}}