#!/bin/env bash

# Downsample type is set to bicubic for better results
# Source https://www.ghostscript.com/blog/optimizing-pdfs.html
# Source https://ghostscript.com/docs/9.54.0/VectorDevices.htm
gs \
  -q -dNOPAUSE -dBATCH -dSAFER \
  -sDEVICE=pdfwrite \
  -dCompatibilityLevel=1.4 \
  -dPDFSETTINGS=/printer \
  -dEmbedAllFonts=true \
  -dColorImageDownsampleType=/Bicubic \
  -dGrayImageDownsampleType=/Bicubic \
  -sOutputFile=out.pdf \
  "$1"
