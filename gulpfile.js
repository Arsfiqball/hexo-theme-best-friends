const gulp = require('gulp');
const sass = require('gulp-sass');
const uglify = require('gulp-uglify');
const concat = require('gulp-concat');

gulp.task('styles', function () {
  return gulp.src('./styles/app.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(uglify())
    .pipe(gulp.dest('./source/build'));
});

gulp.task('styles:watch', function () {
  gulp.watch('./styles/**/*.scss', ['styles']);
});

gulp.task('scripts', function() {
  return gulp.src('./scripts/app.js')
    .pipe(concat('app.js'))
    .pipe(uglify())
    .pipe(gulp.dest('./source/build'));
});

gulp.task('scripts:watch', function () {
  gulp.watch('./styles/**/*.scss', ['sass']);
});

gulp.task('default', ['styles', 'scripts']);
