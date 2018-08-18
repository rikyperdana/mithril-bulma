Meteor.isClient and pages.band = view: -> m \div,
	m \link, rel: \stylesheet, href: 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'
	m \nav.navbar.is-dark,
		m \.navbar-brand,
			m \a.navbar-item, href: "https://bulma.io",
				m \img, src: "https://bulma.io/images/bulma-logo.png"
			m \.navbar-burger.burger, 'data-target': \navbarExampleTransparentExample,
				[til 3]map -> m \span

		m \.navbar-menu#navbarExampleTransparentExample,
			m \.navbar-start,
				<[ Home Band Tour Contact ]>map ->
					m \a.navbar-item, href: 'https://bulma.io'
				m \.navbar-item.has-dropdown.is-hoverable,
					m \a.navbar-link, href: '/documentation/overview/start/', \More
					m \.navbar-dropdown.is-boxed,
						m \a.navbar-item, href: '/documentation/overview/start/', \Merchandise
						m \a.navbar-item, href: 'https://bulma.io/documentation/modifiers/syntax/', \Extras
						m \a.navbar-item, href: 'https://bulma.io/documentation/columns/basics/', \Media
			m \.navbar-end, m \.navbar-item, m \.field,
				m \.control, m \input.input, type: \text, placeholder: \search...

	m \section.hero,
		m \figure.image,
			m \img, src: 'https://images.pexels.com/photos/167636/pexels-photo-167636.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'

	m \section.section,
		m \.container.has-text-centered,
			m \h2.title, 'The Band'
			m \p, 'We have creatd a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'

	m \.columns.is-centered, style: "padding: 2rem", [til 3]map ->
		m \.column, m \.card,
			m \.card-image, m \figure.image.is-2by1, m \img,
				src: 'https://images.pexels.com/photos/167635/pexels-photo-167635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
			m \.card-content,
				m \.media, m \.media-content,
					m \p.title.is-4, 'John Smith'
					m \p.subtitle.is-6, '@johnsmith'
				m \.content,
					m \span, 'Lorem ipsum dolor sit amet'
					m \a, '@bulmaio'
					m \a, href: \#, \#css
					m \a, href: \#, \#responsive

	m \section.section, m \.container.has-text-centered,
		m \h2.title, 'Tour Dates'
		[til 2]map -> m \.tile.is-ancestor, [til 5]map ->
			m \.tile.is-parent, m \article.tile.is-child.box,
				m \figure.image, m \img, src: 'https://images.pexels.com/photos/374710/pexels-photo-374710.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
				m \p.title, 'New York'
				m \p.subtitle, 'Fri 27 Nov 2016'
				m \a.button, 'Buy Tickets'

	m \section.section.columns,
		m \.container.has-text-centered.column.is-10.is-offset-1,
			m \h2.title, \Contact
			m \.field.is-horizontal, m \.field-body, [
				type: \text, name: \Text, icon: \user
			,
				type: \email, name: \Email, icon: \envelope
			]map (i) -> m \.field, m \p.control.has-icons-left,
				m \input.input, type: i.type, placeholder: i.name
				m \span.icon.is-small.is-left, m "i.fa.fa-#{i.icon}"
			[
				m \textarea.textarea, placeholder: 'Message us'
				m \button.button.is-primary, 'Send message'
			]map (i) -> m \.field.is-horizontal,
				m \.field-body, m \.field, m \.control, i

	m \footer.footer, m \.container, m \.content.has-text-centered,
		m \p, <[ facebook-square twitter-square instagram snapchat ]>map (i) ->
			m \a, href: '', m "i.fa.fa-2x.fa-#{i}"
		m \p, m \a, href: 'https://bulma.io', m \img,
			width: \128, height: \24, src: 'https://bulma.io/images/made-with-bulma.png'
