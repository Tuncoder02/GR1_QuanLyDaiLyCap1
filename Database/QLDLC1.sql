Create database QLDLC1
use QLDLC1

//tao bang customers
create table customer(
CustomerId int,
CustomerFirstName Nvarchar(10),
CustomerLastName Nvarchar(10),
CustomerCompany Nvarchar(50),
CustomerAddress Nvarchar(50),
CustomerDistrict Nvarchar(30),
CustomerCity Nvarchar(30),
CustomerDiscount int,
CustomerPhoneNumber varchar(10)
Constraint pk_Customer Primary key (CustomerId))
select * from customer

//tao bang product

create table product(
ProductId varchar,
ProductName Nvarchar,
ProductPrice int,
ProductQuantity int,
ProductInfo Nvarchar,
ProductColor Nvarchar,
ProductImageLink Varchar,
ProductNumberSold int,
ProductUnit Nvarchar
constraint pk_Product Primary key(ProductId))
select * from product

//tao bang hoa don Nhap
create table BillImport(
BillImportId int,
BillImportDate Date,
BillTotalMoney int,
BillPayPercent int
constraint pk_BillImport primary key(BillImportId))
select * from BillImport


// tao bang chi tiet hoa don nhap
Create table BillImportDetails(
BillImportDetailsId int,
BillImportId int,
ProductId varchar,
Quantity int,
constraint pk_BillImportDetails primary key (BillImportDetailsId),
constraint fk_BillImport foreign key (BillImportId) references BillImport(BillImportId),
constraint fk_BillImportProduct foreign key (ProductId) references Product(ProductId)
)
select * from BillImportDetails

// tao bang hoa don xuat
create table BillExport(
BillExportId int,
CustomerId int,
BillExportDate Date,
BillTotalMoney int,
BillPayPercent int,
constraint pk_BillExport primary key(BillExportId),
constraint fk_Customer foreign key (customerId) references Customer(CustomerId))
select * from BillExport

//tao bang chi tiet hoa don xuat
Create table BillExportDetails(
BillExportDetailsId int,
BillExportId int,
ProductId varchar,
Quantity int,
constraint pk_BillExportDetails primary key (BillExportDetailsId),
constraint fk_BillExport foreign key (BillExportId) references BillExport(BillExportId),
constraint fk_BillExportProduct foreign key (ProductId) references Product(ProductId)
)
select * from BillExportDetails


