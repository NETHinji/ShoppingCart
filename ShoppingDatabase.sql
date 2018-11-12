use Training_19Sep18_Pune



create table Shopping(
FirstName nvarchar(20) ,
LastName nvarchar(20),
Mobile_Number nvarchar(10) primary key,
Email_Address nvarchar(50) ,
Pass nvarchar(20) not null,
SecurityQues nvarchar(100) ,
Answer nvarchar(30) 

 
);
drop table shopping;

create procedure InsertValues(
@FirstName nvarchar(20) ,
@LastName nvarchar(20),
@Mobile_Number nvarchar(10),
@Email_Address nvarchar(50) ,
@Pass nvarchar(20),
@SecurityQues nvarchar(100) ,
@Answer nvarchar(30) 
)
as
begin
	insert into Shopping
values(@FirstName ,@LastName ,@Mobile_Number,@Email_Address,@Pass, @SecurityQues, @Answer)
end


select * from shopping;



drop table shopping;

alter table Shopping 
alter column SecurityQues int;

create table SecurityQuestion(
id int identity(1,1),
question varchar(100),

);
insert into SecurityQuestion values('What month were you born?'),('What is your favorite colour'),('What is the first name of your best friend in high school?');


select * from Shopping





create table Address(
Mobile_Number nvarchar(10),
ord_FullName nvarchar(20),
ord_MobileNumber nvarchar(10),
Home_Address nvarchar(60) ,
City nvarchar(20),
StateOfCity nvarchar(20) ,
Country nvarchar(20) ,
Pincode int ,
foreign key(Mobile_Number) references shopping(Mobile_Number)
);

create procedure InsertAddress(
@Mobile_Number nvarchar(10),
@ord_FullName nvarchar(20),
@ord_MobileNumber nvarchar(10),
@Home_Address nvarchar(60) ,
@City nvarchar(20),
@StateOfCity nvarchar(20) ,
@Country nvarchar(20) ,
@Pincode int 
)
as
begin
	insert into Address
values(@Mobile_Number ,@ord_FullName ,@ord_MobileNumber,@Home_Address,@City, @StateOfCity, @Country, @Pincode)
end


delete from address;
select * from address;




-------------------------------------------------------------------------------------------------------------------------------------


create table Category
(
CategoryId int identity(1,1) primary key,
CategoryName varchar(50) not null unique
)

insert into Category
values ('Watches'),('Laptops'),('Mobiles')

create table CreatenewAccount
(
Id int identity primary key,
Name varchar(50) unique not null,
Password1 varchar(50) null,
mobilenumber varchar(50),
email varchar(50),
securityqtn varchar(250),
answer varchar(50)
)

create proc Adddetails_SSVPP
(
@Name varchar(50) ,
@Password1 varchar(50) ,
@mobilenumber varchar(50),
@email varchar(50),
@securityqtn varchar(250),
@answer varchar(50)
)
as
begin
	insert into CreatenewAccount_SSVPP
	values(@Name, @Password1,@mobilenumber ,@email ,@securityqtn,@answer)
	
end

select * from CreatenewAccount_SSVPP
create proc LoginDetails(
@Name varchar(50) ,
@Password1 varchar(50) 
)
as
begin 
select Name,Password1 from CreatenewAccount_SSVPP where Name=@Name and Password1=@Password1 
end

create proc ForgotPassword_SSVPP
(
@Name varchar(50),
@Password1 varchar(50) ,
@securityqtn varchar(250),
@answer varchar(50)
)
as
begin
	update CreatenewAccount_SSVPP set Password1=@Password1 where securityqtn=@securityqtn and answer=@answer and Name=@Name
		
end
select * from CreatenewAccount_SSVPP





---------------------------------------------------------------------------------------------------------------------------------------------




create table Productdetails_ShoppingCart1(
productId int,
productname varchar(50),

price  bigint,
productimage varchar(50),
category varchar(50)
)
insert into Productdetails_ShoppingCart1 values(100,'HeadPhone',2000,'images_electronics/headphone_electronics.jpg','Electronics')
insert into Productdetails_ShoppingCart1 values(101,'Mobile',20000,'images_electronics/mobile_electronics.jpg','Electronics') 
insert into Productdetails_ShoppingCart1 values(102,'Television',25000,'images_electronics/tv_electronics.jpg','Electronics') 
insert into Productdetails_ShoppingCart1 values(103,'Laptop',40000,'images_electronics/laptop_electronics.jpg','Electronics') 
insert into Productdetails_ShoppingCart1 values(104,'HomeTheatre',20000,'images_electronics/hometheatre_electronics.jpg','Electronics')  

insert into Productdetails_ShoppingCart1 values(105,'T-shirt',1000,'ImageClothing/Shirt1.jpg','Clothing')
insert into Productdetails_ShoppingCart1 values(106,'T-shirt',1500,'ImageClothing/Clothing.jpg','Clothing') 
insert into Productdetails_ShoppingCart1 values(107,'Jocket',2000,'ImageClothing/shirt2.jpg','Clothing') 
insert into Productdetails_ShoppingCart1 values(108,'Dress',1500,'ImageClothing/dress.jpg','Clothing') 
insert into Productdetails_ShoppingCart1 values(109,'frock',2000,'ImageClothing/frock.jpg','Clothing') 

insert into Productdetails_ShoppingCart1 values(110,'Oranges',200,'ImageGrocery/fruits.jpg','Grocery')
insert into Productdetails_ShoppingCart1 values(111,'Cookies',100,'ImageGrocery/grocery1.jpg','Grocery') 
insert into Productdetails_ShoppingCart1 values(112,'Noodles',150,'ImageGrocery/grocery2.jpg','Grocery') 
insert into Productdetails_ShoppingCart1 values(113,'Cheese',400,'ImageGrocery/grocery3.jpg','Grocery') 

insert into Productdetails_ShoppingCart1 values(114,'Bangles',20000,'AccessoriesImage/bangle.jpg','Accessories')
insert into Productdetails_ShoppingCart1 values(115,'Necklace',10000,'AccessoriesImage/jwellary1.jpg','Accessories') 
insert into Productdetails_ShoppingCart1 values(116,'Ring',50000,'AccessoriesImage/ring.jpg','Accessories') 
select * from Productdetails_ShoppingCart1
update Productdetails_ShoppingCart1 set productname='Bangles' where productId=114
update Productdetails_ShoppingCart1 set productname='Necklace' where productId=115
update Productdetails_ShoppingCart1 set productname='Ring' where productId=116
