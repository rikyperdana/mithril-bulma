Meteor.isClient and pages.landing = view: -> m \section.hero.is-info.isfullheight,

	m \link, rel: \stylesheet, href: 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'

	m \.hero-head, m \nav.navbar, m \.container,
		m \.navbar-brand,
			m \a.navbar-item, href: \#, m \img,
				src: 'http://bulma.io/images/bulma-type-white.png'
			m \span.navbar-burger.burger, 'data-target': \navbarMenu,
				[to 2]map -> m \span
		m \.navbar-menu.is-active#navbarMenu, m \.navbar-end, [
			title: \Home, icon: \home
		,
			title: \Examples, icon: \superpowers
		,
			title: \Documentation, icon: \book
		,
			title: 'View Source', icon: \github
		]map (i) -> m \span.navbar-item,
			m \a.button.is-white.is-outlined, href: \#,
				m \span.icon, m "i.fa.fa-#{i.icon}"
				m \span, _.startCase i.title

	m \.hero-body, m \.container.has-text-centered, m \.column.is-6.is-offset-3,
		m \h1.title, 'Coming Soon'
		m \h2.subtitle, '$this is the best software platform for running an internet business. We handle billions of dollars every year for forward-thinking business around the world.'
		m \.box, m \.field.is-grouped,
			m \p.control.is-expanded, m \input.input,
				type: \text, placeholder: 'Enter your email'
			m \p.control, m \a.button.is-info, 'Notify Me'
