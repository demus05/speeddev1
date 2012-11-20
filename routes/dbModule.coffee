
nano = require('nano')('http://localhost:5984')
nanoDb = nano.db.use('speeddev1')

class db
	insert: (doc, key) ->
		console.log "Inserting..."
		nanoDb.insert doc, key, (err, body, header) ->
			if (err)
				console.log('[db.insert] ', err.message)
			else
				console.log('you have inserted the rabbit.')
				console.log(body)

	get: ->
		console.log "Getting..."

module.exports = db