#How to install the templates for generating the Asciidoc

## Pygments

First is needed to have installed "Pygments" from the following URL http://pygments.org, and mark it as the default filter in asciidoc.conf

`$ open /usr/local/etc/asciidoc/asciidoc.conf`

`source-highlighter=pygments`

## Asciidoc Template

To install the template please copy from the "rubymotion.css" file into /usr/local/etc/asciidoc/themes/rubymotion/

## Filter Template

To use the filter template its needed to copy the "pygments.css" file into /usr/local/etc/asciidoc/stylesheets


## Generate a the Workbook

Generating with default output (HTML) just run the following:

`$ asciidoc --theme=RubyMotion RubyMotion.asciidoc`

