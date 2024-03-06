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