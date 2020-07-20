# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.create([{
    personal_dev: "Read more", "Define your core values", "Attend seminars", "develop a power hour", "find a mentor", "learn continuously", "Develop a positive attitude", "Strengthen communication skills", "write your life purpose", "Discover your inner strength"},
    {finance: "Learn personal finance 101", "Learn to manage your money", "Develop a budget", "Develop an excellent credit rating", "Track and develop your networth", "invest 10% of your income", "Fins a financial advisor/mentor", "Own/invest in real estate", "Increase your income", "Plan your retirement"},
    {travel: "Take a staycation", "Travel within your own state", "Visit all 50 states","Attend a major spoting event", "Attend a major cultural event", "Visit one of the 7 wonders", "Go camping/glamping", "Travel the world", "Visit somewhere you've never been", "Travel first-class", },
    {lifestyle: "Eat better food", "Declutter your life", "Buy less", "buy better quality", "lower carbon-footprint", "Strive for balance", "Maintain ideal body weight", "Develop a long-life mindset", "Complete an endurance event", "Move to a better neighborhood"},
    {career: "Do a career assessment", "Continue eduaction", "Find or develop your passion", "Be a good employee", "Be a good leader", "Be an expert in something", "Become an authority", "Be your own boss", "Create multiple income sources"},
    {family_and_friends: "Choose food friends", "Find your life partner", "Weed out the negative people in your life", "Be a good Friend", "Plan family time/adventure", "Learn how to be a good parent", "Be there for your children", "Have regular family meetings", "Establish family traditions", "Plan quality time with friends"},
    {giving_back: "Donate to local charities", "Volunteer in your community", "Make a difference in the world", "Trace your ancestry", "Become a mentor", "Do something nice for others everyday", "Do something nice for your family", "Help a friend with a problem", "Volunteer at your local school", "Visit the elderly at a local nursing home"},
    {hobbies_and_passions: "Photography", "Arts and craft", "Gaming", "Cycling", "Music", "Dancing", "Yoga", "Gardening", "Water sports", "Hiking"},
    {adventure: "Family roadtrip", "Climb a mountain", "Visit a volcano", "Try something new", "Discover somewhere new in your city", "Attend a new cultural event", "Try new ethnic foods", "A yes day", "Do a scavenger hunt", "Train trip across country"
    }])
