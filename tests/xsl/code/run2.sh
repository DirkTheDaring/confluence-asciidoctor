#!/bin/sh
# With variable assignment
xsltproc \
  --stringparam theme Confluence\
  --stringparam title MyTitle\
  transform-with-uppercasing.xsl sample.xml 
