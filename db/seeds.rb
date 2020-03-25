puts "Deleting all seeds"

Book.destroy_all && Event.destroy_all && Illustrator.destroy_all &&
Blog.destroy_all if Rails.env.development?

puts "Creating all seeds"

Book.create!(title: "The Boy and the Toad", description: "When a young boy walking along a canal, befriends a toad, magic intervenes as we follow their epic adventures in the underwater Kingdom of Canalia: a place where ingenious inhabitants recycle bikes dumped into the canal into energy to power their Kingdom. A story of bravery, friendship and adventure, Sal Hendrie wrote the tale in Leiden, a charming dutch town boasting many canals. It is illustrated by Nguyen Thanh Vu, a talented Vietnamese illustrator from Là Studio, Saigon, Vietnam.", size: "15 x 20 x 10", color: "purple, yellow and white", age: "all ages", material: "paper", pages: 22, year: 2019, price: 15.99)

Blog.create!(title: "Welcome to Sal Hendrie's website!", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates ea obcaecati illum cumque! Natus accusamus unde quasi consequuntur. Recusandae facere est nulla autem quae sit magnam, a at? Temporibus, quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, modi, odit. Enim consequuntur alias nulla accusantium, quod deserunt impedit dicta sapiente, sequi magnam ut aliquam soluta culpa at repudiandae rerum!")

Blog.create!(title: "Poem", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates ea obcaecati illum cumque! Natus accusamus unde quasi consequuntur. Recusandae facere est nulla autem quae sit magnam, a at? Temporibus, quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, modi, odit. Enim consequuntur alias nulla accusantium, quod deserunt impedit dicta sapiente, sequi magnam ut aliquam soluta culpa at repudiandae rerum!")

Illustrator.create!(name: "Nguyen Thanh Vu", description: "Nguyen Thanh Vu is an illustrator at Lá, a small studio located in Saigon (Vietnam). His hobby consists in searching for fun things to do rather than focusing on his on-going job. He has the amazing talent of distraction. He is currently learning to become an amateur carpenter.")

Event.create!(time: DateTime.new(2019, 10, 03, 8, 0), description: "Great event to attend you should definitely come at this time and date in Paris")

Event.create!(time: DateTime.new(2020, 05, 06, 12, 0), description: "Great event to attend you should definitely come at this time and date in Berlin")

Event.create!(time: DateTime.new(2020, 03, 24, 15, 30), description: "Great event to attend you should definitely come at this time and date in Budapest")
