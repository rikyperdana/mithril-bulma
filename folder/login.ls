Meteor.isClient and pages.login = view: -> m \section.hero.is-fullheight,

	m \.hero-body, m \.container.has-text-centered, m \.column.is-4.is-offset-4,
		m \h3.title.has-text-grey, \Login
		m \p.subtitle.has-text-grey, 'Please login to proceed.'
		m \.box,
			m \figure.avatar, m \img, src: 'https://placehold.it/128x128'
			m \form,
				<[ email password ]>map (i) ->
					m \.field, m \.control, m \input.input.is-large,
						type: i, placeholder: "Your #{_.startCase i}"
				m \.field, m \label.checkbox,
					m \input, type: \checkbox
					m \span, 'Remember me'
				m \button.button.is-block.is-info.is-large.is-fullwidth, \Login
