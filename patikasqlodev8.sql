
--1-test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
Create Table employee (
	id SERIAL Primary Key,
	name Varchar(50),
	birthday Date,
	email Varchar(100)
);

--2-Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim. -> Bunu ctrl+c ctrl+v ile hallettim, uzun olduğu için adımlarını yazmayacam :)

--3-Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
Update employee
Set
	name = 'Ali Bakır',
	birthday  = '2002-03-21',
	email = 'alibakirx@gmail.com'
Where id = 1;
Update employee
Set
	name = 'Hilal Can',
	birthday  = '2002-09-11',
	email = 'hilalcan1@gmail.com'
Where id = 5;
Update employee
Set
	name = 'Berfin Baran',
	birthday  = '2002-02-18',
	email = 'brfnbrn2@gmail.com'
Where id = 14;
Update employee
Set
	name = 'Sema Aycicek',
	birthday  = '2002-02-01',
	email = 'semacck3@gmail.com'
Where id = 18;
Update employee
Set
	name = 'Berfin Aras',
	birthday  = '2002-05-27',
	email = 'arasbrfn5@gmail.com'
Where id = 35;

--4-Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
Delete From employee
Where id > 6 and id < 10;

DELETE from employee
Where name Like 'C%';

DELETE from employee
Where email ILike 'D%' and name Like 'D%';

DELETE from employee
Where birthday = '1915-12-27'
Returning *;
 
DELETE from employee
Where name Like '%F%t' AND email ILike 'F%'
Returning *;




