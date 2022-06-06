CREATE DATABASE Truong
USE Truong
GO 
CREATE TABLE Student2(
	Student_ID int NOT NULL,
	TenSv nvarchar(40),
	Age int,
	BirthDay datetime,
	MaLop int 
)
INSERT INTO Student2(Student_ID,TenSv,Age,BirthDay,MaLop) VALUES (123,N'Đỗ Đức Mạnh',22,'11-13-2001',456)
GO
ALTER TABLE Student2
	ADD CONSTRAINT ck PRIMARY KEY(Student_ID)
GO
ALTER TABLE Student2
	DROP CONSTRAINT ck
GO
ALTER TABLE Student2 
	ALTER COLUMN MaLop int NOT NULL;
GO
ALTER TABLE Student2
	ADD CONSTRAINT ck PRIMARY KEY(MaLop)
GO
CREATE TABLE LopHoc1(
	MaLop int,CONSTRAINT mn FOREIGN KEY(MaLop) REFERENCES Student2(MaLop),
	TenLop Varchar(40)
)
GO 

INSERT INTO LopHoc1(MaLop,TenLop) VALUES (456,'T2203M')

SELECT * FROM LopHoc1
SELECT * FROM Student2
