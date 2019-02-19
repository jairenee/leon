## Introduction

Leon is an **open-source personal assistant** who can live **on your server**.

He **does stuff** when you **ask for it**.

You can **talk to him** and he can **talk to you**.
You can also **text him** and he can also **text you**.
If you want to, Leon can communicate with you by being **offline to protect your privacy**.

### Why?
> 1. If you are a developer (or not), you may want to build many things that could help in your daily life.
> Instead of building a dedicated project for each of those ideas, Leon can help you with his
> packages/modules (skills) structure.
> 2. With this generic structure, everyone can create his own modules and share them with others.
> Therefore there is only one core (to rule them all).
> 3. Leon uses AI concepts, which is cool.
> 4. Privacy matters, you can configure Leon to talk with him offline. You can already text with him without any third party services.
> 5. Open-source is great.

### What is this repository for?
> This repository contains the following nodes of Leon:
> - The server
> - The packages/modules
> - The web app
> - The hotword node

Sounds good for you? Then let's get started!

## Getting Started

### Prerequisites

None! All provided in jairewiz/node10-python3.6

### Installation

```sh
# Clone the repository (stable branch)
git clone -b master https://github.com/jairenee/leon.git leon-docker

# Go to the project root
cd leon-docker

# Build
docker build -t leon-docker .
```

### Usage

```sh
docker run --rm -p 1337:1337 -p 8889:4242 leon-docker
# Go to http://localhost:1337
# Hooray! Leon is running
```

## Documentation

For full documentation on Leon itself visit [docs.getleon.ai](https://docs.getleon.ai).

## Roadmap

To know what is going on, follow [roadmap.getleon.ai](https://roadmap.getleon.ai).

## Contributing

If you have an idea about improving Leon, do not hesitate.

**Leon needs open-source to live**, the more modules he has, the more skillful he becomes.

## The Story Behind Leon

You'll find a write-up on this [blog post](https://blog.getleon.ai/the-story-behind-leon/).

## Stay Tuned
- [Newsletter](https://getleon.ai)
- [Blog](https://blog.getleon.ai)
- [GitHub issues](https://github.com/leon-ai/leon/issues)
- [Twitter](https://twitter.com/louistiti_fr)
- [#LeonAI](https://twitter.com/hashtag/LeonAI)

## License
(Until I make my own significant changes to the product, please instead support the upstream project!)

[MIT License](https://github.com/leon-ai/leon/blob/develop/LICENSE.md)

Copyright (c) 2019-present, Louis Grenard <louis.grenard@gmail.com>

Maintainer of this particular fork: Jaime Renee Wiz <jaime.wissner@gmail.com>

## Cheers!
![Cheers!](https://assets-cdn.github.com/images/icons/emoji/unicode/1f37b.png?v6 "Cheers!")
