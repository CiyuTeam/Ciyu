name: Sample form
description: Create an issue. 
title: "[Bug]: "
labels: [bug]
assignees:
  - octocat
body:
  - type: input
    id: sample-input
    attributes:
      label: Sample Input
      description: Write text here.
      placeholder: Here will be text
    validations:
      required: true
