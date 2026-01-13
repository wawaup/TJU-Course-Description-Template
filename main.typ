#import "template.typ": template, course

#show: template.with(
  university: "Tianjin University",
  major: "Bachelor of Engineering in Artificial Intelligence",
  school: "",
  name: "Your Name",
  id: "Your Student ID",
  // The cover image settings
  cover: (
    logo_path: "tju_logo.png",
    logo_width: 100%,
    logo_with_university_name: true,
  ),
  // The watermark image settings as the background of the document
  // watermark: (
  //   img_path: "",
  //   img_width: 160mm,
  // ),
  // 这里注释了水印设置
)

= Category 1

#course(
  name: [Course Name 1],
  id: [Course Id 1],
  semester: [Semester 1],
  credit: [Credit 1],
  ects: [ECTS 1],
  grade: [Grade 1],
  content: [
    - Chapter 1
    - Chapter 2
    - Chapter 3
  ],
  description: [
    The main body of Course Description 1 \
    #lorem(100)
  ],
  assessment: [
    - Assignment 1
    - Assignment 2
    - Assignment 3
    - Exam 1
    - Exam 2
  ],
)

= Category 2

#course(
  name: [Course Name 2],
  id: [Course Id 2],
  semester: [Semester 2],
  credit: [Credit 2],
  ects: [ECTS 2],
  grade: [Grade 2],
  content: [
    - Chapter 1
    - Chapter 2
    - Chapter 3
  ],
  description: [
    The main body of Course Description 2 \
    #lorem(100)
  ],
  assessment: [
    - Assignment 1
    - Assignment 2
    - Assignment 3
    - Exam 1
    - Exam 2
  ],
)