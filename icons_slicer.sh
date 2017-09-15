#!/bin/sh
rm -Rf ios
rm -Rf android

mkdir ios
mkdir android

base=$1

convert "$base" -resize '120x120'   "ios/Icon-60@2x.png"
convert "$base" -resize '180x180'   "ios/Icon-60@3x.png"

convert "$base" -resize '76x76'     "ios/Icon-76.png"
convert "$base" -resize '152x152'   "ios/Icon-76@2x.png"

convert "$base" -resize '167x167'   "ios/Icon-83.5@2x.png"


convert "$base" -resize '40x40'     "ios/Icon-Small-40.png"
convert "$base" -resize '80x80'     "ios/Icon-Small-40@2x.png"
convert "$base" -resize '120x120'   "ios/Icon-Small-40@3x.png"

convert "$base" -resize '29x29'     "ios/Icon-Small.png"
convert "$base" -resize '58x58'     "ios/Icon-Small@2x.png"
convert "$base" -resize '87x87'     "ios/Icon-Small@3x.png"

convert "$base" -resize '512x512'   "ios/iTunesArtwork"
convert "$base" -resize '1024x1024' "ios/iTunesArtwork@2x"

convert "$base" -resize '36x36'     "android/Icon-ldpi.png"
convert "$base" -resize '48x48'     "android/Icon-mdpi.png"
convert "$base" -resize '72x72'     "android/Icon-hdpi.png"
convert "$base" -resize '96x96'     "android/Icon-xhdpi.png"
convert "$base" -resize '144x144'   "android/Icon-xxhdpi.png"
convert "$base" -resize '192x192'   "android/Icon-xxxhdpi.png"
