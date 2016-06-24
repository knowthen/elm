'use strict';

var gulp = require('gulp'),
  http = require('http'),
  st = require('st'),
  exec = require('child_process').exec,
  gutil = require('gulp-util'),
  clear = require('clear'),
  counter = 0;

var cmd = 'elm make ./Main.elm --output ./bundle.js';
clear();
gulp.task('default', ['server', 'watch', 'elm']);

gulp.task('watch', function(cb) {
  gulp.watch('**/*.elm', ['elm']);
});

gulp.task('server', function(done) {
  gutil.log(gutil.colors.blue('Starting server at http://localhost:4000'));
  http.createServer(
    st({
      path: __dirname,
      index: 'index.html',
      cache: false
    })
  ).listen(4000, done);
});

gulp.task('elm', function(cb) {
  if (counter > 0){
    clear();
  }
  exec(cmd, function(err, stdout, stderr) {
    if (err){
      gutil.log(gutil.colors.red('elm make: '),gutil.colors.red(stderr));
    } else {
      gutil.log(gutil.colors.green('elm make: '), gutil.colors.green(stdout));
    }
    cb();
  });
  counter++;
});
