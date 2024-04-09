use ClassVirtual   


select * from [dbo].[CSEAttMst]
select * from [dbo].[ECEAttMst] 

select * from [dbo].[CSETableMst] 
select * from [dbo].[ECETableMst] 
select * from [dbo].[RegistrationMst]


create table [dbo].[ECETableMst]
(
rollno int,
name varchar(50)
) 

create table [dbo].[CSE AIMLTableMst]
(
rollno int,
name varchar(50)
)

 
 create table [dbo].[CIVILTableMst]
(
rollno int,
name varchar(50)
)


create table [dbo].[METableMst]
(
rollno int,
name varchar(50)
)


create table [dbo].[EETableMst]
(
rollno int,
name varchar(50)
)

 create table [dbo].[ECEAttMst]
(
rollno int,
studentname varchar(50),
dateofclasss date,
attendancestatus varchar(50),
class varchar(50),
starttime time,
endtime time,
)

 create table [dbo].[EEAttMst]
(
rollno int,
studentname varchar(50),
dateofclasss date,
attendancestatus varchar(50),
class varchar(50),
starttime time,
endtime time,
) 


 create table [dbo].[MEAttMst]
(
rollno int,
studentname varchar(50),
dateofclasss date,
attendancestatus varchar(50),
class varchar(50),
starttime time,
endtime time,
)
 create table [dbo].[CIVILAttMst]
(
rollno int,
studentname varchar(50),
dateofclasss date,
attendancestatus varchar(50),
class varchar(50),
starttime time,
endtime time,
)



 create table tblcontact
 (
 contact_id int primary key identity,
 contact_name varchar(50), 
 contact_email varchar(50),
 contact_subject varchar(50),
 contact_message varchar(50)
 ) 

 select * from tblcontact


 
  
  create table tblpost
  (
  post_id int primary key identity,
  post_name varchar(1000),
  ) 

  select * from tblpost 
   
   
  create proc tblpost_insert
  @post_name varchar(1000)
  as
  begin
  insert into tblpost(post_name)values(@post_name)
  end
