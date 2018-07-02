Meteor.isClient and pages.modals = view: -> m \div,

	m \link, rel: \stylesheet, href: 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'

	m \section.hero.is-info.is-small, m \.hero-body, m \.container.has-text-centered,
		m \p.title, 'Modal Cards'
		m \p.subtitle, 'Subtitle'

	m \.box.cta, m \p.has-text-centered,
		m \span.tag.is-primary, \New
		m \span, 'Here we have modal cards. When you click on them they will open functional modal examples.'

	m \section.container, [
		[
			title: 'Click on image above'
			img: 'https://source.unsplash.com/RWnpyGtY1aU'
			content: 'Purus semper eget duis at tellus at urna condimentum mattis. Non blandit massa enim nec. Integer eni neque volutpat ac tincidunt vitae semper quis. Accumsan tortor posuere ac ut consequat semper viverra nam.'
			button: name: 'Image modal', target: \modal-image2'
		,
			title: 'Tempor orci dapibus ultrices in.'
			img: 'https://source.unsplash.com/6Ticnhs1AG0'
			content: 'Ut venenatis tellus in metus vulputate. Amet consectetur adipiscing elit pellentesque. Sed arcu non odio euismod lacinia at quis risus. Faucibus turpis in eu mi bibendum neque egestas cmonsu songue. Phasellus vestibulum lorem sed risus.'
			button: name: 'Modal Card', target: \modal-card
		,
			title: 'Click anywhere on card'
			img: 'https://i.imgsafe.org/ba/baa924a5e3.png'
			content: 'Imperdiet dui accumsan sit amet nulla facilisi morbi. Fusce ut placerat orci nulla pellentesque dignissim enim. Libero id faucibus nisl tincidunt eget nullam. Commodo viverra maecenas accumsan lacus vel facilisis.'
			button: name: 'Modal Card'
		]
	,
		[
			title: 'Click anywhere on card to expand into modal card'
			img: 'https://i.imgsafe.org/3f/3f0c578f9d.jpeg'
			content: 'Purus semper eget duis at tellus at urna condimentum mattis. Non blandit massa enim nec. Integer enim neque volutpat ac tincidunt vitae semper quis.'
			button: name: 'Modal Card'
		,
			title: 'Click anywhere on card to'
			img: 'https://source.unsplash.com/hLyd1LukQ7E'
			content: 'Purus semper eget duis at tellus at urna condimentum mattis. Non blandit massa enim nec. Integer enim neque volutpat ac tincidunt vitae semper quis'
			button: name: 'Modal Card'
		]
	]map (i) -> m \.columns.features, i.map (j) ->
		m \.column.is-4, m \.card.is-shady, m \.card-image,
			m \figure.image.is-4by3, m \img.modal-button, src: j.img
			m \.card-content, m \.content,
				m \h4, j.title
				m \p, j.content
				m \span.button.is-link.modal-button, j.button.name

	m \footer, m \section, m \.container, [
		[
			title: \Columns, subtitle: 'The power of Flexbox in a simple interface',
			icon: \columns, color: \warning
		,
			title: \Form, subtitle: 'The indispensable form controls, designed for maximum clarity',
			icon: \wpforms, color: \info
		,
			title: \Components, subtitle: 'Advanced multi-part components with lots of possibilities '
			icon: \cubes, color: \danger
		]
	,
		[
			title: \Modifiers, subtitle: 'An easy-to-read naming system designed for humans',
			icon: \cogs, color: \grey
		,
			title: \Layout, subtitle: 'Design the structure of your webpage with these CSS classes'
			icon: \superpowers, color: \primary
		,
			title: \Elements, subtitle: 'Essential interface elements that only require a single CSS class'
			icon: \cube, color: \danger
		]
	]map (i) -> m \.columns.is-multiline, i.map (j) ->
		m \.column.is-one-third, m \article.notification.media.has-background-white,
			m \figure.media-left, m \span.icon, m "i.fa.fa-lg.fa-#{j.icon}.has-text-#{j.color}"
			m \.media-content, m \.content,
				m \h1.title.is-size-4, j.title
				m \p.is-size-5.subtitle, j.subtitle
