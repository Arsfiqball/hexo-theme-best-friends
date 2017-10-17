const gulp = require('gulp');
const sass = require('gulp-sass');
const uglify = require('gulp-uglify');
const concat = require('gulp-concat');
const cleanCSS = require('gulp-clean-css');

gulp.task('styles', function () {
  return gulp.src('./resources/styles/app.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(cleanCSS())
    .pipe(gulp.dest('./source/build'));
});

gulp.task('styles:watch', function () {
  gulp.watch('./resources/styles/**/*.scss', ['styles']);
});

gulp.task('scripts', function() {
  return gulp.src('./resources/scripts/app.js')
    .pipe(concat('app.js'))
    .pipe(uglify())
    .pipe(gulp.dest('./source/build'));
});

gulp.task('scripts:watch', function () {
  gulp.watch('./resources/scripts/**/*.scss', ['scripts']);
});

gulp.task('default', ['styles', 'scripts']);
