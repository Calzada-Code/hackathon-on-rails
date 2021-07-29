# Hello, hackathoneros👋!

If your project implies web development, you are in the right place ❤️

May you already imagine what you can find here, and I'm happy to present the "Hackathon on Rails
pack", but first, let me tell you about my motivation for creating it  😁.

I'm a big fan of hackathons 🚀, and what I like the most is that they are composed by people,
passion, team work, talent and a lot of fun, the ingredients for a great event. Also, it is a great
opportunity to prove your skills, make new friends and learn a lot.

As we already know, we have to create a great solution using software, and we don't have a lot of
time for all the setup that implies starting a new project from zero. We only want to take care of
our solution's logic, I mean we only want to start creating features, and we don't want to waste
time choosing a framework for styling, routing, rendering charts and all those things that we have
to consider before starting to code.

This ingredients for this amazing pack are:

- [Ruby on Rails](https://rubyonrails.org/)
- [Bootstrap](https://getbootstrap.com/)
- [Devise](https://github.com/heartcombo/devise)

## Configuration for development and test environments

> :bulb: Prerequisites: install git, Ruby 2.7.0, Node.js and PostgreSQL (>=9.5).

```bash
git clone https://github.com/Calzada-Code/hackathon-on-rails.git
cd hackathon-on-rails
gem install bundler --version=2.1.2
bundle install
bin/rails db:create
bin/rails db:migrate
bin/rails server
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Calzada-Code/hackathon-on-rails.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected
to adhere to the [code of conduct](https://github.com/Calzada-Code/hackathon-on-rails/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
