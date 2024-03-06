Alter Procedure Student_Insert

(
@Student_name as varchar(50),
@Student_Address as varchar(Max),
@Student_MobileNo as varchar(15),
@Student_Age as Int,
@Student_Marks as Int

)
As

begin
insert into tbl_Student(Student_name,Student_Address,Student_MobileNo,Student_Age,Student_Marks)
values(@Student_name,@Student_Address,@Student_MobileNo,@Student_Age,@Student_Marks)
select Student_name,Student_Address,Student_MobileNo,Student_Age,Student_Marks from tbl_Student;
end
go
