pages.tabs = view: -> m \div,
	m \nav.navbar.is-info,
		m \.navbar-brand,
			m \a.navbar-item, href: \#,
				m \img,
					src: 'https://bulma.io/images/bulma-logo.png'
					width: \112, height: \28
			m \.navbar-burger.burger, 'data-target': \navbarExampleTransparentExample,
				[to 2]map -> m \span
		m \#navbarExampleTransparentExample.navbar-menu,
			m \.navbar-start.is-link,
				m \a.navbar-item, href: 'https://github.com/dansup/bulma-templates', \Home
				m \.navbar-item.has-dropdown.is-hoverable,
					m \a.navbar-link, href: '/documentation/overview/start/', \Docs
					m \.navbar-dropdown.is-boxed,
						<[ admin forum cover cards blog search kanban]>map (i) ->
							m \a.navbar-item, href: "#i.html", _.startCase i
			m \.navbar-end, m \.navbar-item, m \.field.is-grouped,
				m \p.control,
					m \a.bd-tw-button.button,
						'data-social-network': \Twitter
						'data-social-action': \tweet
						'data-social-target': \#
						target: \_blank
						href: \#
						m \span.icon, m \i.fab.fa-twitter
						m \span, \Tweet
				m \p.control,
					m \a.button.is-primary, href: 'https://github.com/dansup/bulma-templates',
						m \span.icon, m \i.fas.fa-download
						m \span, \Download

	m \section.hero.is-info,
		m \.hero-body, m \.container,
			m \h1.title, \Tabs
			m \h2.subtitle, \example
		m \.tabs.is-boxed.is-centered.main-menu#nav, m \ul,
			m \li#1, 'data-target': \pane-1, m \a,
				m \span.icon.is-small, m \i.fa.fa-image
				m \span, \Pictures
			m \li#2.is-active, 'data-target': \pane-2, m \a,
				m \span.icon.is-small, m \i.fab.fa-empire
				m \span, \Article
			m \li#3, 'data-target': \pane-3, m \a,
				m \span.icon.is-small, m \i.fab.fa-superpowers
				m \span, \Team
			m \li#4, 'data-target': \pane-4, m \a,
				m \span.icon.is-small, m \i.fa.fa-film
				m \span, \Video
	m \br
	m \section, m \.tab-content,
		m \.tab-pane.level#pane-1,
			m \figure, m \img.cent, src: 'https://source.unsplash.com/0_xMuEbpFAQ/400x400'
			m \figure, m \img.cent, src: 'https://source.unsplash.com/wPMvPMD9KBI/800x600'
		m \.tab-pane#pane-3, m \.columns, m \.container, m \.columns, [
			[
				title: 'Dominic Ipsum', icon: 'fa-github-square'
			,
				title: 'Cassie Ipsum', icon: 'fa-empire'
			]
		,
			[
				title: 'Avery Ipsum', icon: 'fa-ravelry'
			,
				title: 'Io Ipsum', icon: 'fa-github-alt'
			]
		]map (i) -> m \.column, i.map ({title, icon}) ->
			m \.column, m \article.media,
				m \.media-left, m \i.fab.fa-4x, class: icon
				m \.media-content, m \p,
					m \strong, title
					m \br
					m \span, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sit amet massa fringilla. Nullam condimentum luctus turpis.'
		m \.tab-pane#pane-4, m \iframe.video, src: 'https://player.vimeo.com/video/261794608', width: \640, height: \360
		m \.tab-pane.is-active#pane-2, m \.content,
			m \h1, 'Hello World'
			m \p, 'orem ipsumdolor sit amet, consectetur adipiscing elit. Nulla accumsan, metus ultrices eleifend gravida, nulla nunc varius lectus, nec rutrum justo nibh eu lectus. Ut vulputate semper dui. Fusce erat odio, sollicitudin vel erat vel, interdum mattis neque. Sub works as well!'
			m \h2, 'Second Level'
			m \ol, [
				'Donec blandit a lorem id convallis.'
				'Cras gravida arcuat diam gravida gravida.'
			]map (i) -> m \li, i
			m \blockquote, 'Ut venenatis, nisl scelerisque sollicitudin fermentum, quam libero hendrerit ipsum, ut blandit est tellus'
			m \dl, [
				['Web', 'The part of the Internet that contains websites and web pages']
				['HTML', 'A markup language for creating web pages']
				['CSS', 'A technology to make HTML look better']
			]map (i) -> [(m \dt, i.0), (m \dd, i.1)]
