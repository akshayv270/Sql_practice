
CREATE PROCEDURE SP_SELECT_STUDENT
AS
BEGIN
		select 
			Student_name,Student_Address,
			Student_MobileNo,
			Student_Age,
			Student_Marks
		from 
			tbl_Student;
END