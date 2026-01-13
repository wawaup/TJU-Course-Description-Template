#let template(
  university: none,
  major: none,
  school: none,
  name: none,
  id: none,
  cover: none,
  watermark: none,
  doc,
) = {
  // Cover
  page()[
    #align(center)[
      #image(cover.logo_path, width: cover.logo_width*50%)
      #if not cover.logo_with_university_name {
        text(weight: "semibold", size: 24pt)[#university]
        v(1fr)
      }
      #text(weight: "bold", size: 30pt)[#university]

      #text(weight: "bold", size: 30pt, "Course Description")
      #v(2fr)
      #text(weight: "semibold", size: 16pt)[#major]
      #v(5fr)
      #text(size: 16pt)[Name: #name]
      #parbreak()
      #text(size: 16pt)[Student No.: #id]
      #parbreak()
      // #text(weight: "semibold", size: 18pt)[#school]
    ]
    #v(3fr)
    #set text(weight: "medium", size: 14pt)
  ]
  // Credit System Explanation Page
  page(
    footer: [#h(1fr)#datetime.today().display()]
  )[
    #align(center)[
      #text(weight: "bold", size: 18pt)[Credit System Explanation]
    ]
    
    #v(1em)
    
    #set par(justify: true, leading: 0.65em)
    #set text(size: 11pt)
    
    This document describes courses taken at *Tianjin University*. The credit system at Tianjin University differs from the European Credit Transfer and Accumulation System (ECTS). The following conversion and workload information applies based on the official transcript regulations:
    
    #v(1em)
    
    #table(
      columns: (auto, 1fr),
      stroke: 0.5pt,
      inset: 10pt,
      [*Our Credit*], [1 credit point],
      [*ECTS Equivalent*], [≈ 1.5 ECTS],
      [*Classroom Hours*], [16 Schooling Hours (for courses, each hour = 45 minutes)],
      [*Practice Hours*], [1 Week (for centralized practice)],
    )
    
    #v(1em)
    
    The credit system is defined as follows:

    - *Academic Courses*: One credit is awarded for every 16 schooling hours of instruction.

    - *Centralized Practice*: One credit is awarded per week of full-time practical training or internship.

    - *Total Workload*: One credit point at Tianjin University is equivalent to *1.5 ECTS*. The total study time per credit point (approx. 45 hours) includes classroom instruction (lectures, tutorials, and experiments), as well as self-study activities such as homework, project work, and exam preparation.
  ]

  // Page settings
  set page(
    header: [
      Course Description - #name
      #h(1fr)
      #university
    ],
    footer: context [
      #counter(page).display("1 / 1", both: true)
      #h(1fr)
      #datetime.today().display()
    ],
    // background: image(
    //   watermark.img_path,
    //   width: watermark.img_width,
    // )
    // 
    // 这里注释了水印背景设置
  )

  // Table of contents
  page(footer: [#h(1fr)#datetime.today().display()])[
    #outline(
      title: "Table of Contents",
      indent: 2em,
    )
  ]

  // Main body
  counter(page).update(1)
  set par(justify: true)
  set heading(numbering: "1.1.")
  doc
}

#let course(
  name: none,
  id: none,
  semester: none,
  credit: none,
  ects: none,
  hours: none,
  grade: none,
  preparatory: none,
  prerequisite: none,
  content: none,
  description: none,
  assessment: none,
) = {
  heading(depth: 2)[#name]
  let cells = (
    ([*Course Title*], name),
    ([*Course No.*], id),
    ([*Semester*], semester),
    ([*Credit*], credit),
    ([*ECTS Equivalent*], ects),
    ([*Course Hours*], hours),
    ([*My Grade*], grade),
    ([*Preparatory Course(s)*], preparatory),
    ([*Prerequisite(s)*], prerequisite),
    ([*Content*], content),
    ([*Course Description*], description),
    ([*Assessment*], assessment),
  )
  let table_args = ()
  for row in cells {
    if row.at(1) != none {
      table_args.push(row.at(0))
      table_args.push(row.at(1))
    }
  }
  table(
    columns: (auto, 1fr),
    ..table_args,
  )
}
