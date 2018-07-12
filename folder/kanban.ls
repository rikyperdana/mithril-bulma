Meteor.isClient and pages.kanban = view: -> m \div,

	m \nav.navbar.has-shadow, m \.container,
		m \.navbar-brand, m \a.navbar-item,
			m \img, src: 'http://bulma.io/images/bulma-logo.png'
			m \.navbar-burger.burger, 'data-target': \navMenu,
				[to 2]map -> m \span
		m \.navbar-menu#navMenu, m \.navbar-end,
			m \.navbar-item.has-dropdown.is-hoverable,
				m \a.navbar-link, \Account
			m \.navbar-dropdown, <[ Dashboard Profile Settings ]>map,
				(i) -> m \a.navbar-item, i

	m \section.hero.is-info, m \.hero-body, m \.container,
		m \.card, m \.card-content m \.content,
			m \.control.has-icons-left.has-icons.right,
				m \input.input.is-large,
					type: \search, placeholder: \Search
					m \span.icon.is-medium.is-left, m \i.fa.fa-search
					m \span.icon.is-medium.is-right, m \i.fa.fa-empire

	m \section, m \.box.cta, m \.columns.is-mobile.is-centered,
		m \.field.is-grouped.is-grouped-multiline,
			<[ link success black warning danger info ]>map (i) ->
				m \.control, m "\span.tag.is-#i.is-large", _.startCase i

	m \br

	m \.container, m \.columns.is-mobile.is-centered#sectioncontainer, [
		title: 'Season 1'
		color: \black
		contents: [
			'The Fort'
			'Fist Like a bullet'
			'White Stork Spreads Wings'
			'Two Tigers Subdue Dragons'
			'Snake Creeps Down'
			'Hand of Five Poisons'
		]
	,
		title: 'Season 2'
		color: \primary
		contents: [
			'Tiger Pushes Mountain'
			"Force of Eagle's Claw"
			'Red Sun, Silver Moon'
			'Palm of the Iron Fox'
			'Monkey Leaps Through Mist'
			'Leopard Stalks in Snow'
			'Black Heart, White Mountain'
			"Sting of the Scorpion's Tail"
			'Nightingale Sings No More'
			"Wolf's Breath, Dragon Fire"
		]
	,
		title: 'Season 3'
		color: \link
		contents: [
			'Enter the Phoenix'
			'Moon Rises, Raven Seeks'
			'Leopard Snares Rabbit'
			'Blind Cannibal Assassins'
			'Carry Tiger to Mountain'
			'Black Wind Howls'
			"Dragonfly's Last Dance"
			'Leopard Catches Cloud'
		]
	]map ({title, color, contents}) -> m \.column.is-narrow,
		m "\article.message.is-#color",
			m \.message-header,
				m \p, title
				m \button.delete, 'aria-label': \delete
			m \.message-body, contents.map (i) ->
				m \.board-item, m \.board-item-content,
					m \span, _.startCase i

	m \.columns.is-mobile.is-centered, m \.column.is-half.is-narrow

	m \footer, m \.box.cta, m \.columns.is-mobile.is-centered,
		m \.field.is-grouped.is-grouped-multiline
			m \.control, m \.tags.has-addons,
				m \a.tag.is-link,
					href: 'https://github.com/dansup/bulma-templates'
					m \span, 'Bulma Templates'
				m \span.tag.is-light, 'Daniel Supernault'
			m \.control, m \.tags.has-addons,
				m \a.tag.is-link, 'The source code is licensed'
				m \span.tag.is-light, \MIT
				m \i.fa.fa-github
