gulp = require 'gulp'
$    = require('gulp-load-plugins')()
# - /general

browserify = require 'browserify'
source     = require 'vinyl-source-stream'
# - /browserify

# -- build bundle.js
gulp.task 'build', ->
  browserify
      entries: ['./src/index.js']
    .bundle()
    .pipe source 'bundle.js'
    .pipe gulp.dest 'dst'
