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
    intro:'Really likes coffee',
    img_url: '/images/temp-avatar.png',
    color_theme: 'theme-default'
)

Job.create!(
    company: "Example Company", title: "Code Monkey",
    summary: "I was let loose on a bunch of typewriters, and by God, we wrote Midsummer Night's Dream.",
    start_month: "Apr", start_year: 2018,
    end_month: nil, end_year: nil,
    responsibilities:["Bananas", "Monkey management", "Guard duty for shenanigans"],
    skills_used:["Object-oriented design", "SOLID principles", "Agile methodology"],
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Feverestcollege.files.wordpress.com%2F2013%2F02%2F2_get-a-job-computer-key-5001294.jpg',
    order_id: 0, user_id: user.id
)
Job.create(
    company: "Another Example", title: "Minecraft Designer",
    summary: "Believe it or not, I was hired by a wealthy guy to follow him around and kill creepers while he built mediocre structures.  Why he didn't just play on creative mode I'll never know.",
    start_month: "Jul", start_year: 2016,
    end_month: "Apr", end_year: 2018,
    responsibilities:["Killing creepers","Mental health support","Hype man"],
    skills_used:["Plink plonk", "Doop-de-doo", "Ding-dong"],
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.PPBMLiYljuluJZtFxAZwDQHaHa%26pid%3DApi',
    order_id: 1, user_id: user.id
)
Job.create(
    company: "Tech Giant", title: "CEO",
    summary: "I thought it would be cool to be the real leader of the free world, so I became the CEO of Giant Tech Co.  Lo and behold, we actually do run things around here.",
    start_month: "Sep", start_year: 2014,
    end_month: "Jul", end_year: 2016,
    responsibilities:["MVP Design","Business management"],
    skills_used:["Product design","Startup creation","Product management"],
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.execunet.com%2Fm%2Fdart-job-search-target.jpg&f=1',
    order_id: 2, user_id: user.id
)

Skill.create!(name: "Product design",
    img_url: "https://cdn0.iconfinder.com/data/icons/business-2-41/129/172-512.png",
    order_id: 0, user_id: user.id)
Skill.create(name: "React.js",
    img_url: "https://cdn2.iconfinder.com/data/icons/designer-skills/128/react-512.png",
    order_id: 1, user_id: user.id)
Skill.create(name: "Semantic UI React",
    img_url: "https://react.semantic-ui.com/logo.png",
    order_id: 2, user_id: user.id)
Skill.create(name: "Rails",
    img_url: "http://png-2.findicons.com/files/icons/1607/ruby_on_rails/512/ror_logo.png",
    order_id: 3, user_id: user.id)
Skill.create(name: "ES6 Javascript",
    img_url:"https://www.shareicon.net/data/512x512/2016/07/06/106573_software_512x512.png",
    order_id: 4, user_id: user.id)
Skill.create(name: "Ruby",
    img_url: "https://image.flaticon.com/icons/png/512/919/919842.png",
    order_id: 5, user_id: user.id)
Skill.create(name: "Python",
    img_url: "http://icons.iconarchive.com/icons/cornmanthe3rd/plex/512/Other-python-icon.png",
    order_id: 6, user_id: user.id)

Github.create!(repo_owner: 'you', repo_name: 'your-repo-1',
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Favatars3.githubusercontent.com%2Fu%2F9585881%3Fs%3D400%26v%3D4&f=1',
    summary: 'The best repo of all time',
    contribution: 'JWT authorization, React-Router anchor tags, styling, Semantic gridding, component logic',
    order_id: 0, user_id: user.id)
Github.create(repo_owner: 'you', repo_name: 'your-repo-2',
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fs-media-cache-ak0.pinimg.com%2F736x%2Fa7%2Fe8%2Ffa%2Fa7e8fa149fb23e4cbcfe9e8406b6b911.jpg&f=1',
    summary: 'The other best repo',
    contribution: 'Initial setup of Postgres DB, API, and serializers, JWT, controller logic',
    order_id: 1, user_id: user.id)
Github.create(repo_owner: 'you', repo_name: 'your-repo-3',
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1978599420%2Felectrocat_400x400.png&f=1',
    contribution: 'Leaderboard, automated DB seeding, auth',
    summary: 'OK, there are at least 3 best repos',
    order_id: 2, user_id: user.id)
Github.create(repo_owner: 'you', repo_name: 'your-repo-4',
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Favatars2.githubusercontent.com%2Fu%2F31044959%3Fs%3D400%26v%3D4&f=1',
    contribution: 'Chaos crystals',
    summary: 'A four-way tie for best repo I guess',
    order_id: 3, user_id: user.id)

# These aren't implemented yet
Honor.create!(name: "MVP",
    summary: "I made like a lot of money",
    month: "Feb", year: "2002",
    order_id: 0, user_id: user.id)
Honor.create(name: "MVP2",
    summary: "I made like a lot of money",
    month: "Dec", year: "2003",
    order_id: 1, user_id: user.id)
Honor.create(name: "MVP3",
    summary: "I made like a lot of money",
    month: "Mar", year: "2004",
    order_id: 2, user_id: user.id)


Interest.create!(
    name: "Music", summary: "This guy really knew how to screw people over",
    order_id: 0, user_id: user.id)
Interest.create(
    name: "Acoustic guitar", summary: "I can play Wonderwall",
    order_id: 1, user_id: user.id)
Interest.create(
    name: "Reddit", summary: "What a bunch of degenerates",
    order_id: 2, user_id: user.id)


link1 = Link.create!(
    title: "Githerb", url: "https://www.github.com",
    summary: "It's a site what u want from me",
    order_id: 0, user_id: user.id)
link2 = Link.create(
    title: "The Internet", url: "https://www.google.com",
    summary: "Advertising hell",
    order_id: 1, user_id: user.id)
link3 = Link.create(
    title: "Ableton", url: "https://www.ableton.com/en/",
    summary: "A website from a company from a time in a place where the sea never ends into an infinite expanse of merpeople and crystal gazing spheres of liquid thought",
    order_id: 2, user_id: user.id)
