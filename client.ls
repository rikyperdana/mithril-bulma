if Meteor.isClient

	templates = view: -> m \ul, _.keys(pages)map (i) ->
		m \li, m \a, href: "/#i", oncreate: m.route.link, i

	m.route.prefix ''
	m.route document.body, \/templates,
		_.merge '/templates': templates,
			... _.keys(pages)map (i) ->
				"/#i": pages[i]
