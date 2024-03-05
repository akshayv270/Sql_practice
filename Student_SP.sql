create table tbl_Student(
Student_id INT IDENTITY(1,1) PRIMARY KEY,
Student_name varchar(50)  null,
Student_Address varchar(Max)  null,
Student_MobileNo Int,
Student_Age Int null,
Student_Marks Int null,
);


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


exec Student_Insert 'Akshay','Vadodara',1234567890,30,85;


exec Student_Insert 'Ankit2','Vadodara',1234567820,31,86;
exec Student_Insert 'Ankit','Vadodara','9876543210',31,84;
--------Update Student-----




ALTER PROCEDURE Sp_student_update
(
    @Student_name VARCHAR(50),
    @Student_Address VARCHAR(MAX),
    @Student_MobileNo VARCHAR(15),
    @Student_Age INT,
    @Student_Marks INT,
    @Student_Id INT
)
AS
BEGIN
    UPDATE tbl_Student 
    SET 
        Student_name = @Student_name,
        Student_Address = @Student_Address,
        Student_MobileNo = @Student_MobileNo,
        Student_Age = @Student_Age,
        Student_Marks = @Student_Marks
    WHERE 
        Student_id = @Student_Id;
		select Student_name,Student_Address,Student_MobileNo,Student_Age,Student_Marks from tbl_Student;
END

-----DELETE STUDENT SP--------

ALTER PROCEDURE SP_DELETE_STUDENT(
		@Student_id  int
)
AS
BEGIN
		DELETE FROM tbl_Student
		WHERE
			Student_id = @Student_id;

		select * from tbl_Student
END
-------------------End ------------



exec SP_DELETE_STUDENT 6



exec Sp_student_update 'Akshay8','Rajpipla',1234567890,32,95,1

ALTER TABLE tbl_Student
ALTER COLUMN Student_MobileNo VARCHAR(15);

select * from tbl_Student