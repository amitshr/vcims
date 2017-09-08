Rails.application.routes.draw do
  
  root "app_pages#home"
  get 'tutorials/bookList'

  get 'tutorials/pageList'

  get 'tutorials/chapterList'

  get 'tutorials/questionList'

  get 'tutorials/answerList'

  get 'tutorials/profile'

  get 'newses/new'

  post 'newses/create'

  get 'newses/edit'

  patch 'newses/update'

  get 'newses/delete'

  get 'newses/show'

  get 'newses/profile'

  get 'app_pages/post'
  post 'app_pages/loginCreate'
  get 'app_pages/login' 
  get 'app_pages/logout'
  get 'app_pages/blog'
  get 'app_pages/home'
  get 'app_pages/teacher'
  get 'app_pages/course'
  get 'app_pages/student'
  get 'app_pages/center'
  get 'app_pages/about'
  get 'app_pages/services'
  get 'app_pages/contact'

  get 'app_pages/tutorial'

  get 'app_pages/signup'

  get 'authentications/new'

  post 'authentications/create'

  get 'authentications/pass'

  get 'authentications/fail'

  get 'authentications/error'

  get 'panels/student'

  get 'panels/teacher'

  get 'panels/admin'
  get 'panels/center'

  get 'videos/new'

  post 'videos/create'

  patch 'videos/update'

  get 'videos/edit'

  get 'videos/delete'

  get 'videos/show'

  get 'logins/index'
  get 'logins/logout'
  get 'logins/new'

  get 'logins/create'

  get 'registrations/new'

  post 'registrations/create'

  get 'registrations/edit'

  patch 'registrations/update'

  get 'registrations/delete'

  get 'registrations/show'

  get 'comments/new'

  post 'comments/create'

  get 'comments/edit'

  patch 'comments/update'

  get 'comments/delete'

  get 'comments/show'

  get 'teacher_statuses/new'

  post 'teacher_statuses/create'

  get 'teacher_statuses/edit'

  patch 'teacher_statuses/update'

  get 'teacher_statuses/delete'

  get 'teacher_statuses/show'

  get 'student_statuses/new'

  post 'student_statuses/create'

  get 'student_statuses/edit'

  patch 'student_statuses/update'

  get 'student_statuses/delete'

  get 'student_statuses/show'

  get 'rooms/new'

  post 'rooms/create'

  get 'rooms/edit'

  patch 'rooms/update'

  get 'rooms/delete'

  get 'rooms/show'

  get 'universities/new'

  post 'universities/create'

  get 'universities/edit'

  patch 'universities/update'

  get 'universities/delete'

  get 'universities/show'

  get 'experiences/new'

  post 'experiences/create'

  get 'experiences/edit'

  patch 'experiences/update'

  get 'experiences/delete'

  get 'experiences/show'

  get 'colleges/new'

  post 'colleges/create'

  get 'colleges/edit'

  patch 'colleges/update'

  get 'colleges/delete'

  get 'colleges/show'

  get 'images/new'

  post 'images/create'

  get 'images/edit'

  patch 'images/update'

  post 'images/createNext'

  get 'images/delete'

  get 'images/show'

  get 'schools/new'

  post 'schools/create'

  get 'schools/edit'

  patch 'schools/update'

  get 'schools/delete'

  get 'schools/show'

  get 'tests/new'

  post 'tests/create'

  get 'tests/edit'

  patch 'tests/update'

  get 'tests/delete'

  get 'tests/show'

  get 'tests/profile'

  get 'exams/new'

  post 'exams/create'

  get 'exams/edit'

  patch 'exams/update'

  get 'exams/delete'

  get 'exams/show'

  get 'results/new'

  post 'results/create'

  get 'results/edit'

  patch 'results/update'

  get 'results/delete'

  get 'results/show'

  get 'sesions/new'

  post 'sesions/create'

  get 'sesions/edit'

  patch 'sesions/update'

  get 'sesions/delete'

  get 'sesions/show'

  get 'queries/new'

  post 'queries/create'

  get 'queries/edit'

  patch 'queries/update'

  get 'queries/delete'

  get 'queries/show'

  get 'qualifications/new'

  post 'qualifications/create'

  get 'qualifications/edit'

  patch 'qualifications/update'

  get 'qualifications/delete'

  get 'qualifications/show'

  get 'addresses/new'

  post 'addresses/create'

  get 'addresses/edit'

  patch 'addresses/update'

  get 'addresses/delete'

  get 'addresses/show'

  get 'klasses/new'

  post 'klasses/create'

  get 'klasses/edit'

  patch 'klasses/update'

  get 'klasses/delete'

  get 'klasses/show'

  get 'boards/new'

  post 'boards/create'

  get 'boards/edit'

  patch 'boards/update'

  get 'boards/delete'

  get 'boards/show'

  get 'answers/new'

  post 'answers/create'

  get 'answers/edit'

  patch 'answers/update'

  get 'answers/delete'

  get 'answers/show'

  get 'questtions/new'

  post 'questtions/create'

  get 'questtions/edit'

  patch 'questtions/update'

  get 'questtions/delete'

  get 'questtions/show'

  get 'pages/new'

  post 'pages/create'

  get 'pages/edit'

  patch 'pages/update'

  get 'pages/delete'

  get 'pages/show'

  get 'chapters/new'

  post 'chapters/create'

  get 'chapters/edit'

  patch 'chapters/update'

  get 'chapters/delete'

  get 'chapters/show'

  get 'books/new'

  post 'books/create'

  get 'books/edit'

  patch 'books/update'

  get 'books/delete'

  get 'books/show'

  get 'subjects/new'

  post 'subjects/create'

  get 'subjects/edit'

  patch 'subjects/update'

  get 'subjects/delete'

  get 'subjects/show'

  get 'courses/new'

  post 'courses/create'

  get 'courses/edit'

  patch 'courses/update'

  get 'courses/delete'
  get 'courses/profile'

  get 'courses/show'

  get 'batches/new'

  post 'batches/create'

  get 'batches/edit'

  get 'batches/batchList'

  get 'batches/profile'

  patch 'batches/update'

  get 'batches/delete'

  get 'batches/show'

  get 'centers/new'

  post 'centers/create'

  get 'centers/edit'

  patch 'centers/update'

  get 'centers/delete'
  
  get 'centers/profile'

  get 'centers/show'

  get 'teachers/new'

  post 'teachers/create'

  get 'teachers/edit'

  get 'teachers/post'

  get 'teachers/teacher'

  patch 'teachers/update'

  get 'teachers/delete'
  
  get 'teachers/profile'

  get 'teachers/show'

  get 'teachers/teacherList'

  get 'students/studentList'

  get 'students/new'

  post 'students/create'

  get 'students/edit'

  get 'students/post'

  get 'students/profile'

  get 'students/student'

  patch 'students/update'

  get 'students/delete'

  get 'students/show'

  get 'blogs/new'

  post 'blogs/create'

  get 'blogs/edit'

  patch 'blogs/update'

  get 'blogs/delete'

  get 'blogs/blogList'


  get 'blogs/show'

  get 'posts/new'

  post 'posts/create'

  get 'posts/edit'

  get 'posts/specificPost'

  get 'posts/profile'  

  patch 'posts/update'

  get 'posts/delete'

  get 'posts/show'

  get 'categories/new'

  post 'categories/create'

  get 'categories/edit'

  patch 'categories/update'

  get 'categories/delete'

  get 'categories/show'

  get 'categories/signup'

  get 'users/new'

  post 'users/create'

  get 'users/edit'

  patch 'users/update'

  get 'users/delete'

  get 'users/show'

  get 'users/profile'

  get 'users/login'
  
  post 'users/loginCreate'

  get 'users/logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
