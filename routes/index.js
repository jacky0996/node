var express = require('express');
var router = express.Router();
// import config from '../src/config';
/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/test', function (req, res, next) {
  res.send(`此路徑是：localhost:123`);
});


module.exports = router;
