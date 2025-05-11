#import "danysresume.typ":*

#let name = "John Doe"
#let location = "Anytown, ST"
#let emails = ("john.doe@state.edu", "john@jdoe.dev")
#let github = "github.com/JohnDoe"
#let linkedin = "linkedin.com/in/johndoe"
#let phone = "+1 (555) 123 4567"
#let personal-site = "jdoe.dev"

#show: resume.with(
  author: name,
  emails: emails,
  github: github,
  linkedin: linkedin,
)

#v(-5pt) // Consistent spacing

#section-heading("Education")
// Education
#block(
  width: 99%, // Match LaTeX width
  list(
  marker: none, 
  indent: 0.1in, // Match LaTeX indentation
  [#education-entry(
  title: "State University",
  organization: "B.S. in Computer Science 3.7/4.0 GPA",
  location: "Anytown, State",
  date: "May 2026"
)]
)
)

#v(-5pt) // Consistent spacing

// Technical Skills
#section-heading("Technical Skills")

#list(
  marker: none,
  indent: 0.1in, // Match LaTeX indentation
  [#skills-entry(
  group:"Languages",
  items: "Python, Rust, C, C++, OCaml,  HTML, CSS"
  )],
  [#skills-entry(
    group: "Frameworks",
    items: "React"
  )],
  [#skills-entry(
    group:"Tools",
    items: "Git, Github, Docker"
  )]
)

#v(-10pt) // Consistent spacing

// Experience
#section-heading("Work Experience")
#block(
  width: 99%, // Match LaTeX width
  list(
  tight: false,
  marker: none,
  indent: 0.1in, // Match LaTeX indentation
  [#experience-entry(
  title: "Software Engineering Intern",
  organization: "Company",
  location: "Metropolis, State",
  date: "May 2024 - January 2025",
  details: (
    lorem(20),
    lorem(20),
    lorem(20)
  )
  )],
  [#experience-entry(
  title: "Software Development Lead",
  organization: "Company",
  location: "Anytown, State",
  date: "August 2023 - Present",
  details: (
    lorem(20),
    lorem(20),
    lorem(20)
  )
)],
  [#experience-entry(
  title: "Lead Undergraduate Teaching Assistant",
  organization: "State University",
  location: "Anytown, State", 
  date: "August 2023 - May 2024",
  details: (
    lorem(20),lorem(20),lorem(20)
  )
)]
)
)

#v(-5pt) // Consistent spacing

// Projects
#section-heading("Projects")

#v(2pt)

#list(
  marker: none,
  tight: false,
  indent: 0.1in, // Match LaTeX indentation
  [#project-entry(
  title: "Project",
  technologies: "Turborepo, Next.js, TypeScript",
  details: (
    lorem(20), lorem(20), lorem(20)
  )
)],
  [#project-entry(
  title: "Project",
  technologies: "React, Next.js, Typescript",
  details: (
    lorem(17), lorem(17), lorem(17)
  )
)],
  [#project-entry(
  title: "Project",
  technologies: "React, Next.js, TypeScript",
  details: (
    lorem(17), lorem(17), lorem(17)
  )
)]
)