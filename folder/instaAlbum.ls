Meteor.isClient and pages.instaAlbum = view: -> m \div,

	m \link, rel: \stylesheet, href: 'https://fonts.googleapis.com/icon?family=Material+Icons'

	m \.navbar.is-inline-flex.is-transparent,
		m \.navbar-brand, m \.navbar-item, m \img,
			width: \112, height: \28, alt: \Bulma
			src: 'https://bulma.io/images/bulma-logo.png'
		m \.navbar-menu, m \.navbar-item, m \.control.has-icons-left,
			m \input.input.is-small.has-text-centered,
				type: \text, placeholder: \search
		m \.navbar-item.is-flex-touch,
			<[ explore favorite_border person_outline ]>map (i) ->
				m \a.navbar-item, m \i.material-icons, i

	m \.columns.body-columns, m \.column.is-half.is-offset-one-quarter, [
		profile: 'https://source.unsplash.com/random/96x96'
		fullName: 'John Smith'
		username: '@johnsmith'
		image: 'https://source.unsplash.com/random/1280x960'
		likes: 32
		text: 'Lorem ipsum dolor sit amet, consecteteur adipiscing elit. Phasellus nec iaculis mauris'
		tags: [\@bulmaio \card \responsive]
		time: '11:09 PM - 1 Jan 2018'
	]map (i) -> m \.card,
		m \.header, m \.media,
			m \.media-left, m \figure.image.is-48x48,
				m \img, src: i.profile
			m \.media-content,
				m \p.title.is-4, i.fullName
				m \p.subtitle.is-6, i.username
		m \.card-image, m \figure.image.is-4by3, m \img, src: i.image
		m \.card-content,
			m \.level.is-mobile, m \.level-left,
				<[ favorite_border chat_bubble ]>map (j) ->
					m \.level-item.has-text-centered, m \a,
						m \i.material-icons, j
			m \.content, m \p, m \strong, "#{i.likes} Likes"
			m \span, i.text
			i.tags.map (j) -> m \a, href: \#, "##{j}"
			m \br
			m \time, i.time
		m \.card-footer, m \.columns.is-mobile,
			m \.column.is-11, m \.field, m \.control,
				m \input.input.is-medium,
					type: \text, placeholder: 'Add a comment ...'
			m \.column.has-text-centered,
				m \button.button, m \i.material-icons, \more_horiz

	m \footer.footer, m \.container.is-fluid, m \.content.has-text-centered, m \p,
		m \div, m \strong, \Bulma
		[
			link: 'http://jgthms.com'
			title: 'Jeremy Thomas'
			text: 'The source code is licensed'
		,
			link: 'http://opensource.org/licenses/mit-license.php'
			title: 'MIT'
			text: 'The website content is licensed'
		,
			link: 'http://creativecommons.org/licenses/by-nc-sa/4.0/'
			title: 'CC BY NC SA 4.0'
		]map (i) -> [
			m \a, href: i.link, i.title
			if i.text then m \span, " #that"
			m \br
		]
