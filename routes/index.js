
/*
 * GET home page.
 */
var DB = require('../dbModule');

exports.index = function(req, res){
	db = new DB();
	db.insert({name: 'Stegosaurus', height: '10m'}, 'stegosaurus');
	res.render('index', { title: 'Express' });
};