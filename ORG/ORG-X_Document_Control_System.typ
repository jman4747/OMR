#import "template.typ": *

#show: project.with(
	title: "Document Control System",
	authors: (
		(name: "Name Name", email: none),
	),
	date: "2025-xx-xx",
	effective_date: "2025-xx-xx",
	document_number: none,
	status: "DRAFT",
	purpose: [
		Why are you writing this?
	],
	terms: (
		ACRONYM: "Description"
	)
)

// This begins the section specific to this document

= Level One Heading <level_1>
Stuff. See: @level_2.

== Level Two Heading <level_2>
Stuff. See: @level_3

=== Level Three Heading <level_3>
Stuff. See: @level_1
