var express = require('express');
var session = require('express-session');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var MySQLStore = require('express-mysql-session')(session);
var history = require('connect-history-api-fallback');

var users = require('./routes/users');
var question = require('./routes/question');

var app = express();
app.use(history());


// var redisStore = require('connect-redis')(session);

// 跨域支持
app.all('*',function (req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
  res.header('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');

  next();
});

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, '../front-end')));

// session操作 redis
// app.use(session({
//   store: new redisStore({
//     host: 'localhost',
//     port: 6379,
//     db: 2,
//     pass: 'RedisPASS'
//   }),
//   secret: 'mengfanxu',
//   saveUninitialized: false,
//   resave: false
// }));
// 
// session操作 mysql
var options = {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'test'
};
 
var sessionStore = new MySQLStore(options);
 
app.use(session({
    secret: 'mengfanxu',
    store: sessionStore,
    resave: true,
    saveUninitialized: true
}));

app.use('/users', users);
app.use('/question', question);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});
console.log('success');

module.exports = app;
