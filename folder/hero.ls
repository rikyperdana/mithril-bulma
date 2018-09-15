Meteor.isClient and pages.hero = view: -> m \div,

	m \link, rel: \stylesheet, href: 'https:/maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'
	m \section.hero.is-info.is-medium.is-bold,
		m \.hero-head, m \nav.navbar, m \.container,
			m \.navbar-brand,
				m \a.navbar-item, m \img,
					src: 'http://bulma.io/images/bulma-type-white.png'
				m \span.navbar-burger.burger,
					'data-target': \navbarMenu
					[til 3]map -> m \span
			m \.navbar-menu#navbarMenu, m \.navbar-end, m \.tabs.is-right,
				m \ul, <[ Home Examples Features Team Help ]>map (i) ->
					m \li, m \a, i
				m \span.navbar-item, m \a.button.is-white.is-outlined,
					m \span.icon, m \i.fa.fa-github
					m \span, title: 'Hello from the other side', 'View Source'
		m \.hero-body, m \.container.has-text-centered,
			m \h1.title, 'The new standard in insert industry'
			m \h2.subtitle, 'Lorem ipsum dolor sit amet, consectetur adipiscing'
	m \.box.cta, m \p.has-text-centered,
		m \span.tag.is-primary, \New
		m \span, 'Ut enim ad mini veniam'
	m \section.container, m \.columns.features, [
		icon: \paw
		title: 'Tristique senectus et netus et.'
		content: 'Purus semper eget duis at tellus at urna'
	,
		icon: \empire
		title: 'Tempor orci dapibus ultrices in.'
		content: 'Ut venenatis tellus in metus vulputate'
	,

		icon: \apple
		title: 'Leo integer malesuada nunc vel risus'
		content: 'Imperdiet dui accumsan sit amet nulla facilisi morbi.'
	]map (i) -> m \.column.is-4, m \.card.is-shady,
		m \.card-image.has-text-centered, m "i.fa.fa-3x.fa-#{i.icon}"
		m \.card-content, m \.content,
			m \h4, i.title
			m \p, i.content
			m \p, m \a, href: \#, 'Learn more'
