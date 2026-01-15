# 天津大学课程描述模板

本仓库提供了一个 [Typst](https://typst.app/) 课程描述模板，旨在帮助生成清晰专业的课程摘要，适合天津大学学生申请欧陆学校时使用。

- 添加了credit system的说明
- 增加学分在目录的显示方便查阅

## 预览

| ![](./assets/course description-1.png) | ![](./assets/course description-2.png) |
| ------------------------------------ | ------------------------------------ |
| ![](./assets/course description-3.png) | ![](./assets/course description-4.png) |

## 使用方法

你可以在 [typst.app](https://typst.app/) 导入项目进行在线编辑，也可以使用 [VS Code](https://code.visualstudio.com/) 进行本地编辑（需安装 **Tinymist Typst** 插件获得实时预览功能）。

在 `main.typ` 文件中，你只需要填写你的大学、专业、学院、姓名、学号以及每门课程的详细信息。模板将自动生成包含课程描述的 PDF 文件。

### 元数据

请在你的 `main.typ` 文件开头填写以下元数据：

```typst
#import "template.typ": template, course
#show: template.with(
  university: "The name of your University",
  major: "The name of your major",
  school: "The name of your School / Department",
  name: "Your Name",
  id: "Your Student ID",
  // The cover image settings
  cover: (
    logo_path: "logo_bupt2.png",
    logo_width: 100%,
    logo_with_university_name: true,
  ),
  // The watermark image settings as the background of the document
  watermark: (
    img_path: "logo_bupt_translucent.png",
    img_width: 160mm,
  ),
)
```

### 课程分类

使用 `= 课程类别名称` 来创建新的类别。例如，如果你想创建一个名为"专业课程"的类别，可以这样写：

```typst
= Major Courses
#course(...)
#course(...)
```

### 课程描述项目

`#course` 函数的参数都是命名参数。如果你不想填写某些参数，可以直接不使用它们。例如，如果你不需要"先修课程"，可以这样写：

```typst
#course(
  name: [Course Name 1],
  id: [Course ID 1],
  semester: [Semester 1],
  credit: [Credit 1],
  hours: [Hours 1],
  grade: [Grade 1],
  preparatory: [Preparatory Course(s) 1],
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
```

这样"先修课程"部分将不会在此课程描述表中显示。

## 致谢

本模板基于 [typst-course-description-template](https://github.com/dsyislearning/typst-course-description-template) 修改而成，感谢原作者的开源贡献。

## 致谢致谢

本模板由作者[ChriisWei](https://github.com/ChriisWei)（[原仓库地址](https://github.com/ChriisWei/course-description-template-hhu/tree/main)）分享的模板修改而成，可以给他点点star，感谢开源。
