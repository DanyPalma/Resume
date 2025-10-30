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

#v(-5pt) // Consistent spacing

#section-heading("Education")
// Education
#block(
  width: 99%, // Match LaTeX width
  list(
  marker: none, 
  indent: 0.1in, // Match LaTeX indentation
  [#education-entry(
  title: "University of Central Florida",
  organization: "B.S. in Computer Science, Minor in Mathematics 3.7/4.0 GPA",
  relevant: "Data Structures and Algorithms, Object Oriented Programming, Discrete Mathematical Structures, Computer Logic",
  location: "Orlando, Florida",
  date: "May 2026"
)]
)
)

#v(-10pt) // Consistent spacing

// Technical Skills
#section-heading("Technical Skills")

#list(
  marker: none,
  indent: 0.1in, // Match LaTeX indentation
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
    items: "Git, Github, Docker, Vercel, Linux, Heroku, LaTeX, Supabase, tRPC, Figma, Turso, Drizzle ORM, Lucia"
  )]
)

#v(-10pt) // Consistent spacing

// Experience
#section-heading("Work Experience")

#block(
  width: 99%, 
  list(
    tight: false,
    marker: none,
    indent: 0.01in, 
    [#experience-entry(
      title: "Software Engineering Intern — Entitlements Management ",
      organization: "Morgan Stanley",
      location: "New York, New York",
      date: "May 2025 - August 2025",
      details: (
        "Built and deployed a full-stack monitoring and archival app (Vite, React, FastAPI, IBM DB2) to centralize tracking for 300+ ETL jobs, improving team visibility and standardization.",
        "Improved frontend load time by ~92% (11.5s → 0.9s) and API latency by ~86% (2.1s → 0.3s) through caching, query optimization, and rendering enhancements.",
        "Owned end-to-end architecture and development, implementing logging standards and a reliable job status flow while collaborating with stakeholders to ensure usability and maintainability"
    ))]
  )
)

#block(
  width: 99%, // Match LaTeX width
  list(
  tight: false,
  marker: none,
  indent: 0.1in, // Match LaTeX indentation
  [#experience-entry(
  title: "Software Engineering Intern — Design, Processes & Tools",
  organization: "The Boeing Company",
  location: "St. Louis, Missouri",
  date: "May 2024 - January 2025",
  details: (
    "Pioneered development of SuperBSQL, a complete workflow automation to completely eliminate manual data processing between databases using Python enabling secure & efficient data transfers",
    "Designed an instantaneous pipeline that transforms customer datasets using Pandas into acceptable PL/SQL formats and increases engineer's focus times by 250+ hours a year",
    "Established robust error handling, reporting & logging with automated email alerting using SMTPLib"
  )
  )],
  [#experience-entry(
  title: "Software Development Lead",
  organization: "KnightHacks",
  location: "Orlando, Florida",
  date: "August 2023 - Present",
  details: (
    "Architected a comprehensive monorepository system, serving multiple full-stack applications to 3000+ users.",
    "Spearheaded the development of shared UI components, databases, and APIs across multiple applications, reducing latency by 60% and enhancing system efficiency",
    "Architected and deployed a cutting-edge, fully serverless infrastructure leveraging Cloudflare Workers and Turso, powering diverse applications including a club site, admin tool, and hackathon website reducing infrastructure costs by 94%"
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
  title: "FEPrep",
  technologies: "Turborepo, Next.js, TypeScript, libSQL, tRPC, Drizzle ORM, Expo, Lucia, React Native, TailwindCSS, Vercel",
  details: (
    "Developed the back-end of an educational platform with 200+ DAU to study for the FE Exam at UCF.",
    "Adapted endpoints to optimize query speed by 26% and reduce total API calls by 33%",
    "Increased server-side component efficiency 14% by caching results to be reused on subsequent requests."
  )
)],
  [#project-entry(
  title: "Review Summarizer 9000",
  technologies: "React, Next.js, Typescript, TailwindCSS, Express.js, Puppeteer, GPT3.5",
  details: (
    "Awarded 1st Place in Microsoft & RBC's Challenge at KnightHacks 2023.",
    "Optimized data pipeline speed from the webscraper to client-side injection by 18%",
    "Pioneered functionality allowing our team to write React Components using TailwindCSS and TypeScript that could be injected into any website regardless of support."
  )
)],
  [#project-entry(
  title: "Handy Dollar",
  technologies: "React, Next.js, TypeScript, TailwindCSS, Azure AI Vision, PostgreSQL, Supabase, Plaid API, GPT3.5",
  details: (
    "Awarded 2nd Place in Google's Empowering Learners with Technology challenge at ShellHacks 2023.",
    "Led development in implementing the database, user authentication, and API.",
    "Utilized Azure's AI Vision and OpenAI's ChatGPT API to seamlessly extract and correlate receipt data with bank transactions.",
    "Leveraged GPT3.5 and Supabase Buckets to cache responses and reduce API calls."
  )
)]
)