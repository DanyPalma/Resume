#import "danysresume.typ":*

#let name = "Daniel Palma"
#let location = "Orlando, FL"
#let emails = ("daniel.palma@ucf.edu", "dany@dpalma.dev")
#let github = "github.com/DanyPalma"
#let linkedin = "linkedin.com/in/danypalma"
#let phone = "+1 (479) 685 4123"
#let personal-site = "dpalma.dev"

#show: resume.with(
  author: name,
  emails: emails,
  github: github,
  linkedin: linkedin,
)

#v(-7pt)

#section-heading("Education")
// Education
#block(
  width: 99%,
  list(
  marker: none, 
  indent: .3em,
  [#education-entry(
  title: "University of Central Florida",
  organization: "B.S in Computer Science, Minor in Mathematics 3.9/4.0 GPA",
  relevant: "Data Structures and Algorithms, Object Oriented Programming, Discrete Mathematical Structures, Computer Logic",
  location: "Orlando, Florida",
  date: "May 2026"
)]
)
)

#v(7pt)

// Technical Skills

#v(-12pt)

#section-heading("Technical Skills")

#list(
  marker: none,
  indent: .3em, 
  [#skills-entry(
  group:"Languages",
  items: "Python, Java, TypeScript, JavaScript, Rust, C, C++, C#, SQL, Haskell, OCaml,  HTML, CSS"
  )],
  [#skills-entry(
    group: "Frameworks",
    items: "React, Node.js, Next.js, TailwindCSS"
  )],
  [#skills-entry(
    group:"Tools",
    items: "Git, Github, Docker, Vercel, Linux, Heroku, LaTeX, Supabase, tRPC, Figma, Turso, DrizzleORM, Lucia"
  )]
)

#v(-10pt)
// Experience
#section-heading("Work Experience")
#block(
  width: 99%,
  list(
  tight: false,
  marker: none,
  indent: .3em,
  [#experience-entry(
  title: "Software Engineering Intern — Design, Processes & Tools",
  organization: "The Boeing Company",
  location: "St. Louis, Missouri",
  date: "May 2024 - January 2025",
  details: (
    "Pioneered development of SuperBSQL, a complete workflow automation to completely eliminate manual data processing between databases using Python enabling secure & efficient data transfers",
    "Designed an instantaneous pipeline that transforms customer datasets using Pandas into acceptable PL/SQL formats and increases engineer's focus times by 250+ hours a year",
    "Established robust error handling, reporting \& logging with automated email alerting using SMTPLib"
  )
  )],
  [#experience-entry(
  title: "Software Development Lead",
  organization: "KnightHacks",
  location: "Orlando, Florida",
  date: "August 2023 - Present",
  details: (
    "Architected and implemented a comprehensive monorepository system, integrating three full-stack applications serving 3000+ users.",
    "Spearheaded the development of shared UI components, databases, and APIs across multiple applications, reducing latency by 60% and enhancing system efficiency",
    "Architected and deployed a cutting-edge, fully serverless infrastructure leveraging Cloudflare Workers and Turso, powering diverse applications including a club site, admin tool, and hackathon website reducing costs by 94%"
  )
)],
  [#experience-entry(
  title: "Lead Undergraduate Teaching Assistant",
  organization: "University of Central Florida",
  location: "Orlando, Florida", 
  date: "August 2023 - May 2024",
  details: (
    "Teaching assistant for the introductory data structures course",
    "Coordinated lab lectures for over 5 sections and assignments for over 100 students and 5 lab sections",
    "Designed automated tools using Rust and Python to streamline parsing \& grading of 1600+ C scripts",
  )
)]
)
)

// Projects
#section-heading("Projects")

#list(
  marker: none,
  tight: false,
  indent: .3em,
  [#project-entry(
  title: "FEPrep",
  technologies: "Turborepo, Next.js, TypeScript, libSQL, tRPC, Drizzle ORM, Expo, Lucia, React Native, TailwindCSS, Vercel",
  details: (
    "Developed the back-end of an educational platform with 200+ daily users to study for the FE Exam at UCF.",
    "Implemented a end-to-end typesafe libSQL API using tRPC, Drizzle ORM and Zod.",
    "Adapted endpoints to optimize query speed by 26% and reduce total API calls by 33%",
    "Increased server-side component efficiency 14\% by caching results to be reused on subsequent requests."
  )
)],
  [#project-entry(
  title: "Review Summarizer 9000",
  technologies: "React, Next.js, Typescript, TailwindCSS, Express.js, Puppeteer, GPT3.5",
  details: (
    "Awarded 1st Place in Microsoft & RBC's Challenge at KnightHacks 2023.",
    "Optimized data pipeline speed from the webscraper to client-side injection by 18\%",
    "Designed Landing Page and Injected User Interfaces using TailwindCSS.",
    "Pioneered functionality allowing our team to write React Components using TailwindCSS and TypeScript that could be injected into any website regardless of support."
  )
)],
  [#project-entry(
  title: "Handy Dollar",
  technologies: "React, Next.js, TailwindCSS, Azure AI Vision, PostgreSQL, Supabase, Plaid API, GPT3.5",
  details: (
    "Awarded 2nd Place in Google's Empowering Learners with Technology challenge at ShellHacks 2023.",
    "Led development in implementing the database, user authentication, and API.",
    "Implemented user authentication using Supabase Auth and OAuth2 social providers",
    "Utilized Azure's AI Vision and OpenAI's ChatGPT API to seamlessly extract and correlate receipt data with bank transactions.",
    "Leveraged GPT3.5 and Supabase Buckets to cache responses and reduce API calls."
  )
)]
)