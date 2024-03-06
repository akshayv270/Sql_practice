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