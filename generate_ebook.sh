#!/bin/bash

current_date=$(date +'%Y-%m-%d')
author="Paul Graham"
title="Essays of Paul Graham"
book_name="Essays of Paul Graham"
recipe="calibre.recipe"

if [[ "$#" -eq "1" ]] && [[ "$1" -eq "mobi" ]]; then
  book_name="${book_name}.mobi"
  echo "Generating ${book_name}"
  ebook-convert "${recipe}" "${book_name}" \
    --authors="${author}" \
    --title="${title}" \
    --pubdate="${current_date}" \
    --output-profile=kindle_pw3 \
    --mobi-file-type=new \
    -vv
else
  book_name="${book_name}.epub"
  echo "Generating ${book_name}"
  ebook-convert "${recipe}" "${book_name}" \
    --authors="${author}" \
    --title="${title}" \
    --pubdate="${current_date}" \
    -vv
fi
