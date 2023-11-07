use dog_school;

INSERT INTO age_groups
 (id, description)
 VALUES 
 (1,'under 6 months'),
 (2,'from 6 months to 12 months'),
 (3,'over 12 months'),
 (4,'all ages');
 
 INSERT INTO courses
 (name, description, age_group)
 VALUES
 ('Puppy Basic Obedience Training',
 "This course is perfect for new dog owners.
 Your furry friend will learn essential commands like sit, stay, come, and leash manners.
 Through positive reinforcement techniques, we'll help your dog become a well-behaved companion.",
 1),
  ('Teenager Basic Obedience Training',
 "This course is perfect for new dog owners.
 Your furry friend will learn essential commands like sit, stay, come, and leash manners.
 Through positive reinforcement techniques, we'll help your dog become a well-behaved companion.",
 2),
  ('Adult Basic Obedience Training',
 "This course is perfect for new dog owners.
 Your furry friend will learn essential commands like sit, stay, come, and leash manners.
 Through positive reinforcement techniques, we'll help your dog become a well-behaved companion.",
 3),
 ('Canine Agility and Fitness',
 "Get ready to watch your dog thrive in this high-energy course!
 We'll introduce them to agility equipment, teaching them to navigate tunnels, jumps, and weave poles.
 Not only will this boost their physical fitness, but it will also strengthen the bond between you and your canine companion.",
 3),
 ('Canine Good Citizen Certification',
 "Prepare your dog for real-world situations with our Canine Good Citizen course.
 They'll learn polite behavior in public, including greeting strangers, walking on a loose leash, and staying calm around other dogs.
 This certification is a testament to your dog's good manners and responsible ownership.",
 4),
 ('Reactive Dog Rehabilitation',
 "Is your dog reactive or anxious around other dogs or people?
 Our Reactive Dog Rehabilitation course provides specialized training to help them overcome these challenges.
 Using positive reinforcement and desensitization techniques, we'll work on building confidence and teaching them to respond calmly in various situations.",
 4),
 ('Therapy Dog Certification',
 "Make a positive impact in your community with our Therapy Dog Certification course.
 We'll prepare you and your dog to visit hospitals, nursing homes, and other facilities where your canine companion can bring comfort and joy to those in need.
 This course covers the skills and behaviors necessary for successful therapy dog work.",
 3);
 
 INSERT INTO owners
 (name, surname, phone)
 VALUES
 ('Olivia', 'Anderson', 5551111),
 ('Ethan', 'Martinez', 5552222),
 ('Sophia', 'Davis', 5553333),
 ('Noah', 'Wilson', 5554444),
 ('Ava','Taylor', 5555555),
 ('Liam','Brown', 5556666),
 ('Mia', 'Johnson', 5557777),
 ('Lucas', 'Smith', 5558888),
 ('Isabella', 'Williams', 5559999);
  
 INSERT INTO dogs
 (name, breed, sex, age, owner_id)
 VALUES
 ('Simon', 'Chihuahua', 'male', 10, 7),
 ('Toast', 'Chihuahua', 'male', 5, 7),
 ('Buddy', 'German Shepherd', 'male', 48, 1),
 ('Charlie', 'Dobermann', 'female', 60, 2),
 ('Prada', 'French Bulldog', 'female', 12, 3),
 ('Lily', 'Borzoi', 'female', 4, 4),
 ('Pickles', 'Dachshund', 'female', 16, 5),
 ('Muffin', 'Chihuahua', 'male', 15, 6),
 ('Fox', 'German Shepherd', 'male', 3, 8),
 ('Bella', 'Chihuahua', 'female', 5, 9);
  
 INSERT INTO course_attendees
 (course_id, dog_id)
 VALUES
 (1, 6),
 (1, 9),
 (2, 1),
 (3, 8),
 (3, 7),
 (4, 3),
 (4, 4),
 (5, 5),
 (5, 2),
 (5, 10),
 (6, 1),
 (7, 4);
 

 
