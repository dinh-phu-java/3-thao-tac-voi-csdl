create database library;
use library;
create table student_card(
    card_id int auto_increment primary key,
    student_name nvarchar(150),
    dob date,
    address nvarchar(150),
    email nvarchar(50),
    phone nvarchar(14),
    image nvarchar(100)
);
create table category(
    category_id int auto_increment primary key,
    category_name nvarchar(150)
);

create table book(
    book_id int auto_increment primary key,
    category_id int,
    book_name nvarchar(100),
    publisher nvarchar(100),
    author nvarchar(100),
    publish_date date,
    publish_version int,
    price float,
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);

create table BorrowOrder(
    borrow_id int primary key auto_increment,
    card_id int,
    foreign key(card_id) references student_card(card_id)
);

create table borrow_detail(
    detail_id int auto_increment primary key,
    borrow_id int,
    book_id int,
    book_quantity int,
    borrow_date date,
    expect_return_date date,
    actual_return_date date,
    foreign key (borrow_id) references borroworder(borrow_id),
    foreign key (book_id) references book(book_id)
);