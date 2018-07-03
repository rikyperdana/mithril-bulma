if Meteor.isClient

	list = view: -> m \ul, _.keys(pages)map (i) ->
		m \li, m \a, href: "/#i", oncreate: m.route.link, i

	m.route.prefix ''
	m.route document.body, \/list,
		_.merge '/list': list,
			... _.keys(pages)map -> "/#it": pages[it]
