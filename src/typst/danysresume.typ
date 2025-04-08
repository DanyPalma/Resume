#let resume(
  author: "",
  author-position: center,
  personal-info-position: center,
  pronouns: "",
  location: "",
  emails: (),
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  orcid: "",
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "us-letter",
  doc,
) = {

  set document(author: author, title: author, description: "Typst Resume")
  

  set text(
    // LaTeX style font
    font: font,
    size: 11pt,
    lang: "en",
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false
  )

  show link: underline

  set page(
    margin: (0.5in),
    paper: paper,
  )

  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  

  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(
      weight: 700,
      size: 24pt,
    )
    #pad(it.body)
    #v(-7pt)
  ]

  // Level 1 Heading
  [= #(author)]

  // Personal Info Helper
  let contact-item(value, prefix: "", link-type: "") = {
    if value != "" {
      if link-type != "" {
        link(link-type + value)[#(prefix + value)]
      } else {
        value
      }
    }
  }

  // Personal Info
  pad(
    top: 0.25em,
    align(personal-info-position)[
      #{
        for email in emails [
            #contact-item(email, link-type: "mailto:") |
          ]
        let items = (
          contact-item(pronouns),
          contact-item(phone),
          contact-item(location),
          contact-item(linkedin, link-type: "https://"),
          contact-item(github, link-type: "https://"),
          contact-item(personal-site, link-type: "https://"),
        )
        items.filter(x => x != none).join("  |  ")
      }
    ],
  )

  // Main body.
  set par(justify: true)
  set par(leading: 0.5em)
  set text(spacing: 70%)
  

  doc
}

#let section-rule() = {
  line(length: 100%, stroke: 0.5pt)
  v(-7pt)
}


#let section-heading(title) = {
  v(10pt)
  text(size: 1.1em, smallcaps(title))
  v(-10pt)
  section-rule()
}

#let education-entry(
  title: "",
  organization: "",
  location: "",
  date: "",
  relevant: "",
  details: ()
) = {
  stack(
    dir: ltr,
    spacing: 1fr,
    text(weight: "bold", title),
    text(style: "normal", date),
  )
  v(-7pt)
  stack(
    dir: ltr,
    spacing: 1fr,
    text(size: .9em, style: "italic", organization),
    text(size: .9em, style: "italic", location)
  )
  v(-8pt)
  if relevant != "" [
    #text(style: "italic", size: .7em, weight:"bold", "Relevant Coursework:") #text(size: .8em, style:"italic", relevant)
  ]
  if details != () {
    list(
      marker: "•",
      indent: 1em,
      ..details.map(detail => text(size: 0.9em, detail))
    )
  }
  v(-7pt)
}

#let experience-entry(
  title: "",
  organization: "",
  location: "",
  date: "",
  relevant: "",
  details: ()
) = {
  stack(
    dir: ltr,
    spacing: 1fr,
    text(weight: "bold", title),
    text(style: "normal", date),
  )
  v(-7pt)
  stack(
    dir: ltr,
    spacing: 1fr,
    text(size: .9em, style: "italic", organization),
    text(size: .9em, style: "italic", location)
  )
  v(-7pt)
  if relevant != "" [
    #text(style: "italic", size: .8em, weight:"bold", "Relevant Coursework:") #text(size: .8em, style:"italic", relevant)
  ]
  if details != () {
    block(
      width: 95%,
      list(
      marker: "•",
      indent: 1em,
      ..details.map(detail => text(size: 0.9em, detail))
      )
    )
  }
  v(-7pt)
}

#let skills-entry(
  group: "",
  items: ""
) = {
  stack(
    dir: ltr,
    spacing: .3em,
    text(size: .9em, weight: "bold", group + ":"),
    text(size: .9em, items)
  )
}

#let project-entry(
  title: "",
  technologies: "",
  details: ()
) = {
  stack(
    dir: ltr,
    spacing: .3em,
    text(size: 1em, weight: "bold", title),
    text("|"),
    text(size: .9em, style: "italic", technologies)
  )
  v(-7pt)
  block(
    width: 98%,
    list(
    marker: "•", 
    indent: 1.5em,
    ..details.map(detail => text(size: 0.9em, detail))
  )
  )
  v(-7pt)
}