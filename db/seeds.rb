# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.destroy_all
Honor.destroy_all
Skill.destroy_all
Interest.destroy_all
Link.destroy_all
User.destroy_all
Github.destroy_all

user = User.create!(first_name: 'Douglas', last_name: 'Ward',
    email:"ward92@example.com", phone: '4345483214',
    username:"wardou2", password: ENV['CODERLOADER_PASSWORD'],
    title:"Full Stack Web Developer",
    bio: "Hello, my name is Douglas. I'm a Seattle-based web developer with a background in Electrical Engineering. I recently made the transition to software in order to pursue a career in more creative and energetic fields.",
    intro:'Full Stack Web Developer. Really likes coffee.',
    img_url: '/images/temp-avatar.png',
    color_theme: 'theme-default'
)

Job.create!(
    company: "Electroimpact", title: "Electrical Engineer",
    summary: "Electroimpact is a leading supplier of industrial machinery and automation to the aerospace industry.",
    start_month: "Dec", start_year: 2015,
    end_month: "Jul", end_year: 2018,
    responsibilities:[
      "Lead design and build for electrical segment of Accurate Robot System delivered to customer on time and under budget",
      "Designed and debugged printed circuit boards with Altium Designer software in order to ensure quality",
      "Client interaction and on-site experience at Airbus UK and Boeing Everett"
    ],
    skills_used:["Object-oriented design", "SOLID principles", "Agile methodology"],
    img_url: 'https://www.electroimpact.com/Images/LogoBanner_Color.png',
    order_id: 0, user_id: user.id
)

Skill.create(name: "React.js",
    img_url: "https://cdn2.iconfinder.com/data/icons/designer-skills/128/react-512.png",
    order_id: 0, user_id: user.id)
Skill.create(name: "Semantic UI React",
    img_url: "https://react.semantic-ui.com/logo.png",
    order_id: 1, user_id: user.id)
Skill.create(name: "Rails",
    img_url: "http://png-2.findicons.com/files/icons/1607/ruby_on_rails/512/ror_logo.png",
    order_id: 2, user_id: user.id)
Skill.create(name: "ES6 Javascript",
    img_url:"https://www.shareicon.net/data/512x512/2016/07/06/106573_software_512x512.png",
    order_id: 3, user_id: user.id)
Skill.create(name: "Ruby",
    img_url: "https://image.flaticon.com/icons/png/512/919/919842.png",
    order_id: 4, user_id: user.id
  )

Github.create!(
    repo_url_front: "https://github.com/wardou2/BeatquencherReact",
    repo_url_back: "https://github.com/wardou2/BeatquencherRails",
    demo_url: "https://beatquencher.herokuapp.com",
    name: "Beatquencher",
    img_url: 'https://repository-images.githubusercontent.com/190749915/a0fc7980-9cc2-11e9-8078-3107bf13dfea',
    summary: 'An online music sequencer with customizable instruments for quickly sketching musical ideas.',
    contribution: [
      'Utilized Tone JS package to implement synthesizers.',
      'Used React to create a responsive sequencer that updates instruments and notes in real time.',
      'Developed a Ruby on Rails API backend with endpoints for Users, Projects, Instruments, Scenes, and Tracks.',
      'Implemented login with Google OAuth and Cookies to authenticate users.'
    ],
    order_id: 0, user_id: user.id)

Github.create(
    repo_url_front: "https://github.com/wardou2/portfolio-react",
    repo_url_back: "https://github.com/wardou2/portfolio-rails",
    demo_url: "",
    name: "Portfolio (this site!)",
    img_url: 'https://raw.githubusercontent.com/wardou2/portfolio-react/master/public/images/Portfolio-Example.png',
    summary: 'A single-page portfolio website for programmers.',
    contribution: [
      'Implemented a user interface employing React and Semantic-React.',
      'Developed Ruby on Rails API backend to serve data.',
      'Utilized JSON Web Tokens and Local Storage to store encrypted user information client-side.',
      'Constructed edit-in-place functionality with React and Semantic-React.'
    ],
    order_id: 1, user_id: user.id)

Github.create(
    repo_url_front: "https://github.com/wardou2/album-report",
    name: "Album Report",
    img_url: 'https://raw.githubusercontent.com/wardou2/album-report/master/public/images/Album-Report-Example.png',
    summary: 'A website for tracking and taking notes on favorite albums.',
    contribution: [
      'Implemented Ruby on Rails API backend with endpoints for artists, notes, and albums.',
      'Developed a user interface using ES6 Javascript.',
      'Leveraged the Last.fm API to provide album search and information functionality.'
    ],
    order_id: 2, user_id: user.id)

Github.create(
    repo_url_front: "https://github.com/RylanBauermeister/under_the_table",
    demo_url: "https://donation-nation.herokuapp.com/",
    name: "Donation Nation",
    img_url: '',
    summary: 'A satirical social media solution for fiscal entrepreneurship.',
    contribution: [
      'Built using Ruby on Rails MVC framework.',
      'Developed a user interface using Rails views and the Bootstrap gem.',
      'Utilized Rails to implement inboxes, messaging, and notifications.'
    ],
    order_id: 3, user_id: user.id)

# These aren't implemented yet
# Honor.create!(name: "MVP",
#     summary: "I made like a lot of money",
#     month: "Feb", year: "2002",
#     order_id: 0, user_id: user.id)
# Honor.create(name: "MVP2",
#     summary: "I made like a lot of money",
#     month: "Dec", year: "2003",
#     order_id: 1, user_id: user.id)
# Honor.create(name: "MVP3",
#     summary: "I made like a lot of money",
#     month: "Mar", year: "2004",
#     order_id: 2, user_id: user.id)
#
#
# Interest.create!(
#     name: "Music", summary: "This guy really knew how to screw people over",
#     order_id: 0, user_id: user.id)
# Interest.create(
#     name: "Acoustic guitar", summary: "I can play Wonderwall",
#     order_id: 1, user_id: user.id)
# Interest.create(
#     name: "Reddit", summary: "What a bunch of degenerates",
#     order_id: 2, user_id: user.id)
#
#
# link1 = Link.create!(
#     title: "Githerb", url: "https://www.github.com",
#     summary: "It's a site what u want from me",
#     order_id: 0, user_id: user.id)
# link2 = Link.create(
#     title: "The Internet", url: "https://www.google.com",
#     summary: "Advertising hell",
#     order_id: 1, user_id: user.id)
# link3 = Link.create(
#     title: "Ableton", url: "https://www.ableton.com/en/",
#     summary: "A website from a company from a time in a place where the sea never ends into an infinite expanse of merpeople and crystal gazing spheres of liquid thought",
#     order_id: 2, user_id: user.id)
