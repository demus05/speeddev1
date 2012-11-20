
nano = require('nano')('http://localhost:5984')
nanoDb = nano.db.use('speeddev1')


class db
	@lastId = 0
	insert: (doc, key) ->
		console.log "Inserting..."
		doc.createdAt = new Date().toString()
		doc.type = 'dino'
		newId = key + '_' + db.lastId++
		nanoDb.insert doc, newId, (err, body, header) ->
			if (err)
				console.log('[db.insert] ', err.message)
			else
				console.log('you have inserted the rabbit.')
				console.log(body)

	get: ->
		console.log "Getting..."

module.exports = db