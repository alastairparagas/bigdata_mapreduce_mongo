mongo --host mongo --eval "use company"
mongo --host mongo --eval "db.createCollection('department')"
mongo --host mongo --eval "db.createCollection('dependent')"
mongo --host mongo --eval "db.createCollection('dept_locations')"
mongo --host mongo --eval "db.createCollection('employee')"
mongo --host mongo --eval "db.createCollection('project')"
mongo --host mongo --eval "db.createCollection('works_on')"
mongoimport --host mongo --db company --collection department --drop --file /data/company/department.json --jsonArray
mongoimport --host mongo --db company --collection dependent --drop --file /data/company/dependent.json --jsonArray
mongoimport --host mongo --db company --collection dept_locations --drop --file /data/company/dept_locations.json --jsonArray
mongoimport --host mongo --db company --collection employee --drop --file /data/company/employee.json --jsonArray
mongoimport --host mongo --db company --collection project --drop --file /data/company/project.json --jsonArray
mongoimport --host mongo --db company --collection works_on --drop --file /data/company/works_on.json --jsonArray

mongo --host mongo --eval "use premiere"
mongo --host mongo --eval "db.createCollection('customer')"
mongo --host mongo --eval "db.createCollection('orderline')"
mongo --host mongo --eval "db.createCollection('orders')"
mongo --host mongo --eval "db.createCollection('part')"
mongo --host mongo --eval "db.createCollection('rep')"
mongoimport --host mongo --db premiere --collection customer --drop --file /data/premiere/Customer.json --jsonArray
mongoimport --host mongo --db premiere --collection orderline --drop --file /data/premiere/OrderLine.json --jsonArray
mongoimport --host mongo --db premiere --collection orders --drop --file /data/premiere/Orders.json --jsonArray
mongoimport --host mongo --db premiere --collection part --drop --file /data/premiere/Part.json --jsonArray
mongoimport --host mongo --db premiere --collection rep --drop --file /data/premiere/Rep.json --jsonArray

mongo --host mongo --eval "use shopping"
mongo --host mongo --eval "db.createCollection('shopping')"
mongoimport --host mongo --db shopping --collection shopping --drop --file /data/shopping/shopping.csv --type csv --fields city,category,price,card_type
mongo --host mongo --eval "use pet"
mongo --host mongo --eval "db.createCollection('pet')"
mongoimport --host mongo --db pet --collection pet --drop --file /data/pet/pet.csv --type csv --fields owner,pet
