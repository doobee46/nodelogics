# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    Plan.create([{

           name: 'beginner',
           price: 0,
           ssd: 20,
           memory: 512,
           transfer: 250,
           processor: 1,
           popular:false

    },
    {
    	   name: 'starter',
    	   price: 3, 
	       ssd: 30,
	       memory: 1,
	       transfer: 1,
	       processor:1,
	       popular:false
    },
    {
    	   name:'power',
    	   price: 5,
           ssd: 40,
           memory: 2,
           transfer: 1,
           processor: 1,
           popular:true
    },
    {
    	   name:'elite',
    	   price: 8,
           ssd: 60,
           memory: 2,
           transfer: 1,
           processor: 2,
           popular:false
    },
    {
    	   name:'master',
    	   price: 10,
           ssd: 80,
           memory: 4,
           transfer: 1,
           processor: 2,
           popular:false
    }

    ])
