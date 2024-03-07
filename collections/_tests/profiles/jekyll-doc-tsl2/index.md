---
title: jekyll-doc-tsl2
parent: Profiles
nav_order: 3
---

# `jekyll-doc-tsl2`

This example was provided by the author of a post on Jekyll Talk in February 2023, entitled
[13 seconds build time per page](https://talk.jekyllrb.com/t/13-seconds-build-time-per-page/8007).

A link to a significantly cut-down and redacted version of the original repo was provided in a
[follow-up](https://talk.jekyllrb.com/t/13-seconds-build-time-per-page/8007/5).
The current profiling results were obtained using a download of that version.

The `Gemfile.lock` of the repo had pinned the `just-the-docs` version to v0.3.3,
and Jekyll to 4.2.2.
A [further follow-up](https://talk.jekyllrb.com/t/13-seconds-build-time-per-page/8007/9)
reported a build time of 420 seconds for the 559 pages of the cut-down site using `just-the-docs` v0.3.3,
but just 42 seconds with v0.4.0.[^1]

Note that navigation hierarchy of the cut-down repo was broken:
`parent` fields of many source files specify directory names,
`grand_parent` fields are blank,
and the hierarchy was 4 levels deep.
These issues affected the build times reported in the profiles.
They have now been rectified, and all the profiles updated.

[^1]: v0.4.0 was released only a couple of days before the original post.

The inefficiency of rendering the navigation panel separately for each page
of a large site was
[noted](https://talk.jekyllrb.com/t/13-seconds-build-time-per-page/8007/6)
by [Joost van der Schee](https://talk.jekyllrb.com/u/jhvanderschee):

> The performance of this theme could be fixed by having an autocollapsing menu 
> that gets its active state from javascript. In that case it can be generated once
> instead of 2000 times (the amount of pages you have).

Pull request [#1244] provided an [unobtrusive] implementation of that suggestion.

----

[#1244]: https://github.com/just-the-docs/just-the-docs/pull/1244 "Theme pull request 1244"
[unobtrusive]: https://www.w3.org/wiki/The_principles_of_unobtrusive_JavaScript#:~:text=In%20short%2C%20unobtrusive%20JavaScript%20is,at%20a%20more%20basic%20level.
