var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/stripe-embeded', function(req, res, next) {

  res.json({
    message: 'Hello World!',
    secret: `This is a secret only this remote server knows: ${process.env.TOP_SNEAKY}`,
    otherProperty: 'otherValue',
  });
});

module.exports = router;
