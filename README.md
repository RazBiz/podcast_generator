## Podcast Feed generator 

A github action to generate podcast feed from a YAML file. YAML is easy to read and write than XML, and this action will convert YAML file into a valid podcast feed. 

## Usage 

### Turn on Gitub Pages 
In your repository, go to Settings > Pages and select the 'main' branch as the source. This will create a link to your page and give all of the content in the main branch a URL. Copy this URL for next steps of the process.

### Create YAML file
Create a YAML file in your repository with the following format:

```
title: The Future in Tech ---
subtitle: Powered by LinkedIn Learning
author: Ray Villalobos
description: Conversations with leaders building next generation techology tools.
image: /images/artwork.jpg
language: en-us
category: Technology
format: audio/mpeg
link: https://razbiz.github.io/podcast_test
item:
  - title: EP01-What's Happening in 2023
    description: Ray Villalobos and Content Managers Natalie Pao and Simon St. Laurent discuss what 2023 holds for the future in technology.
    published: Thu, 12 Jan 2023 18:00:00 GMT
    file: /audio/TFIT01.mp3
    duration: 00:00:36
    length: 576,324
  - title: EP02-What is Generative AI?
    description:  Pinar Demirdag discusses the fundamentals of generative AI, its practical applications, and future developments as companies create AI strategies in 2023.
    published: Thu, 19 Jan 2023 18:00:00 GMT
    file: /audio/TFIT02.mp3
    duration: 00:00:22
    length: 351,963
```

### Sample workflow
You will need your own workflow file. Here is a sample:

```commandline
name: Generate podcast feed
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repo
        uses: actions/checkout@v3
      - name: Run Feed Generator
        uses: RazBiz/podcast_generator@main
```

