if Meteor.isClient

	templates = view: -> m \ul,
		m \li, m \a, href: \/tabs, oncreate: m.route.link, \tabs

	m.route.prefix ''
	m.route document.body, \/templates,
		'/templates': templates
		'/tabs': pages.tabs
