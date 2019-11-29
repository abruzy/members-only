<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://www.microverse.org/">
    <img src="doc/microverse.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Members only</h3>

  <p align="center">
    This is a basic authentication systems that restricts users to only access areas of the site they are authorized to.
    <br />
    <a href="https://github.com/abruzy/members-only/blob/master/README.md"><strong>Explore the docs �</strong></a>
    <br />
    <br />
    <a href="https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks.">Assigment</a>
    �
    <a href="https://github.com/abruzy/members-only/issues">Report Bug</a>
    �
    <a href="https://github.com/abruzy/members-only/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

<!-- [![Product Name Screen Shot][product-screenshot]](https://example.com) -->
This is an exclusive clubhouse where your members can write embarrassing posts about non-members. Inside the clubhouse, members can see who the author of a post is but, outside, they can only see the story and wonder who wrote it.

### Built With
This progam was made using this technologies
* [Ruby](https://www.ruby-lang.org/en/)
* [Rails](https://rubyonrails.org/)
* [Rubocop](https://github.com/rubocop-hq/rubocop)
* [Stickler](https://stickler-ci.com/)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

* Ruby
You can easily install Ruby on your Linux computer by using [Homebrew](https://docs.brew.sh/) and [Chruby](https://github.com/postmodern/chruby)
```sh
brew install chruby
brew install ruby-install
ruby-install ruby
```

* Rails
  You can easily install Rails by using [the odin project's giude](https://www.theodinproject.com/courses/web-development-101/lessons/your-first-rails-application) or directly from the [rails site](https://rubyonrails.org/)

```sh
  gem install rails
```

### Installation

<!-- 1. Get a free API Key at [https://example.com](https://example.com) -->
1. Clone the repo
```sh
git clone https://github.com/abruzy/members-only
```
2. Install all necessary gems
```
$ bundle install --without production
```
3. migrate the database:
```
$ rails db:migrate
```
4. run the test suite to verify that everything is working correctly:
```
$ rails test
```
5. If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

<!-- USAGE EXAMPLES -->
## Usage
1. Sign up or login
2. create, update, edit and delete posts

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/abruzy/members-only/issues) for a list of proposed features (and known issues).


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.


<!-- CONTACT -->
## Contact


* Collins Ugwu: [Github](https://github.com/collinsugwu), [Twitter](https://twitter.com/collinsugwu_me
* Abubarkar Diallo: [Github](https://github.com/abruzy)

Project Link: [https://github.com/abruzy/members-only](https://github.com/abruzy/members-only)

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/abruzy/members-only
[contributors-url]: https://github.com/abruzy/members-only/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/abruzy/members-only
[forks-url]: https://github.com/abruzy/members-only/network/members
[stars-shield]: https://img.shields.io/github/stars/abruzy/members-only
[stars-url]: https://github.com/abruzy/members-only/stargazers
[issues-shield]: https://img.shields.io/github/issues/abruzy/members-only
[issues-url]: https://github.com/abruzy/members-only/issues
[license-shield]: https://img.shields.io/github/license/abruzy/members-only
[license-url]: https://github.com/abruzy/members-only/blob/master/LICENSE.txt
