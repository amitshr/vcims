# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
 image = Image.create([{description: 'default'},{size: '100'}])
 
 News.create([{image_id: image.id},{content: 'first news'}])
 
 subject = Subject.create([{title: 'new subject'}])
 
 klass = Klass.create([{title: 'new class'}])
 
 board = Board.create([{short_name: 'new'},{state:'new state'},{full_name:'new full name'}])
 
 Course.create([{course_name:'foundation'},{subject_id: subject.id },{klass_id: klass.id},{board_id: board.id},{fee:'1000'},{duration:'1'},{description: 'new course'}])
 
 category1 = Category.create([{category_name: 'admin'}])
 
 category2 = Category.create([{category_name: 'center'}])
 
 User.create([{user_name: 'amitshr532@gmail.com'},{email: 'amitshr532@gmail.com'},{password: 'adminamit'},{category_id: category1.id},{email_verification: '1'},{status: '1'}])
  
 user = User.create([{user_name: 'newcenter@gmail.com'},{email: 'newcenter@gmail.com'},{password: 'center123'},{category_id: category1.id},{email_verification: '1'},{status: '1'}])
 
 Center.create([{user_id: user.id},{center_name:'new center'},{center_incharge:'amit sharma'},{mobile_number:'9872569970'}])