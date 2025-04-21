// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(
  title: "",
  authors: (),
  doc_type: "ORG",
  date: none,
  effective_date: none,
  document_number: -1,
  status: "DRAFT",
  version: "N/A",
  purpose: "What will writing this accomplish?",
  scope: [
    Sub-Teams: All \
    Roles: All
  ],
  revision_history: [
    == V0 - yyyy-mm-dd
    - initial release
  ],
  body
) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(paper: "us-letter", numbering: "1", number-align: center)
  set text(font: "Atkinson Hyperlegible Next", lang: "en", size: 14pt)
  show link: underline

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, [ORG-#document_number]))
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date \
    #v(1em)
    #image("../8100-logo.svg")
    #text("So let it be written. So let it be Done.", style: "italic")
  ]

  pagebreak(weak: true)
  // table of contents
  outline()
  
  pagebreak(weak: true)

  heading("Documnet Control")
  align(left)[
    *Document Type:* #doc_type \
    *Document \#:* #document_number \
    *Status:* #status \
    *Version:* #version \
    *Effective Date:* #effective_date \
    *Sorce Repository:* https://github.com/
  ]

  heading("Authors")
  for author in authors {
    [
      *#author.name* #author.email \
    ]
  }

  set par(justify: true)
  set heading(numbering: none)
  heading("Purpose")
  purpose

  heading("Scope")
  scope

  // Main body.
  pagebreak(weak: true)
  set heading(numbering: "1.1")
  body

  set heading(numbering: none)
  heading("Revision History")
  revision_history

  heading("Source File Signature")
  [
    #doc_type\-#document_number SHA256: \
    #text(size: 11pt)[
    	#read(doc_type + "-" + str(document_number) + "/sha256.txt")
    ] \

    Template SHA256: \
    #text(size: 11pt)[
    	#read("template.sha256.txt")
    ]
  ]
}
