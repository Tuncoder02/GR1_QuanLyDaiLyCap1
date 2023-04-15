Create database QLDLC1
use QLDLC1

/*tao bang customers*/
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

/*tao bang product*/

create table product(
ProductId varchar(6),
ProductName Nvarchar(50),
ProductPrice int,
ProductQuantity int,
ProductInfo Nvarchar(100),
ProductColor Nvarchar(50),
ProductImageLink Varchar(1000),
ProductNumberSold int,
ProductUnit Nvarchar(10)
constraint pk_Product Primary key(ProductId))
insert into product
(ProductId,ProductName,ProductPrice,ProductQuantity,ProductInfo,ProductColor,ProductNumberSold,ProductUnit)
values
('VG001',	N'Vỏ gối 001',	300000,	100,	N'Chất liệu: Modal'	,N'Xanh',	0,	N'Cái'),
('VG002',	N'Vỏ gối 002',	320000,	100,	N'Chất liệu: Modal'	,N'Xanh',	0,	N'Cái'),
('VG003',	N'Vỏ gối 003',	320000,	100,	N'Chất liệu: Modal'	,N'Kẻ',	0,	N'Cái'),
('VG004',	N'Vỏ gối 004',	297000,	100,	N'Chất liệu: Modal'	,N'Xanh hoa lá',	0,	N'Cái'),
('VG005',	N'Vỏ gối 005',	234000,	100,	N'Chất liệu: Modal'	,N'Trắng',	0,	N'Cái'),
('VG006',	N'Vỏ gối 006',	270000,	100,	N'Chất liệu: Modal'	,N'Xanh',	0,	N'Cái'),
('VG007',	N'Vỏ gối 007',	290000,	100,	N'Chất liệu: Modal'	,N'Kẻ',	0,	N'Cái'),
('VG008',	N'Vỏ gối 008',	290000,	100,	N'Chất liệu: Modal'	,N'Trắng',	0,	N'Cái'),
('VG009',	N'Vỏ gối 009',	290000,	100,	N'Chất liệu: Modal'	,N'Đỏ',	0,	N'Cái'),
('VC001',	N'Vỏ chăn 001',	1890000,	100,	N'Chất liệu: Modal'	,N'Xanh',	0,	N'Cái'),
('VC003',	N'Vỏ chăn 003',	2020000,	100,	N'Chất liệu: Modal'	,N'Kẻ',	0,	N'Cái'),
('VC005',	N'Vỏ chăn 005',	1726000,	100,	N'Chất liệu: Modal'	,N'Trắng',	0,	N'Cái'),
('VC006',	N'Vỏ chăn 006',	1828000,	100,	N'Chất liệu: Modal'	,N'Xanh',	0,	N'Cái'),
('VC007',	N'Vỏ chăn 007',	2000000,	100,	N'Chất liệu: Modal'	,N'Kẻ',	0,	N'Cái'),
('VC008',	N'Vỏ chăn 008',	1902000,	100,	N'Chất liệu: Modal'	,N'Trắng',	0,	N'Cái'),
('VC009',	N'Vỏ chăn 009',	2329000,	100,	N'Chất liệu: Modal'	,N'Đỏ',	0,	N'Cái'),
('GA001',	N'Ga 001',	3472000,	100,	N'Chất liệu: Modal'	,N'Xanh',	0,	N'Cái'),
('GA003',	N'Ga 003',	3952000,	100,	N'Chất liệu: Modal'	,N'Kẻ',	0,	N'Cái'),
('GA005',	N'Ga 005',	2789000,	100,	N'Chất liệu: Modal'	,N'Trắng',	0,	N'Cái'),
('GA006',	N'Ga 006',	2987000,	100,	N'Chất liệu: Modal'	,N'Xanh',	0,	N'Cái'),
('GA007',	N'Ga 007',	3000000,	100,	N'Chất liệu: Modal'	,N'Kẻ',	0,	N'Cái'),
('GA008',	N'Ga 008',	3492000,	100,	N'Chất liệu: Modal'	,N'Trắng',	0,	N'Cái'),
('GA009',	N'Ga 009',	3200000,	100,	N'Chất liệu: Modal'	,N'Đỏ',	0,	N'Cái'),
('RG001',	N'Ruột gối 001',	90000,	100,	N'Chất liệu: Bông Polyester '	,N'Trắng',	0,	N'Cái'),
('RG002',	N'Ruột gối 002',	150000,	100,	N'Chất liệu: Bông Micro '	,N'Trắng',	0,	N'Cái'),
('RG003',	N'Ruột gối 003',	160000,	100,	N'Chất liệu: Bông Micro '	,N'Trắng',	0,	N'Cái'),
('RC001',	N'Ruột chăn 001',	747000,	100,	N'Chất liệu: Bông Polyester'	,N'Trắng',	0,	N'Cái'),
('RC002',	N'Ruột chăn 002',	792000,	100,	N'Chất liệu: Bông Micro Poly'	,N'Trắng',	0,	N'Cái'),
('RC004',	N'Ruột chăn 004',	800000,	100,	N'Chất liệu: Bông Micro Poly'	,N'Trắng',	0,	N'Cái'),
('D001',	N'Đệm 001',	1848000,	100,	N'Đệm bông ép, gập 3 tấm'	,N'Xám',	0,	N'Cái'),
('D002',	N'Đệm 002',	5414000,	100,	N'Đệm lò xo thép cacbon'	,N'Trắng',	0,	N'Cái'),
('D003',	N'Đệm 003',	4020000,	100,	N'Đệm lò xo thép cacbon'	,N'Trắng',	0,	N'Cái'),
('D004',	N'Đệm 004',	5000000,	100,	N'Đệm than hoạt tính'	,N'Trắng',	0,	N'Cái'),
('D005',	N'Đệm 005',	12000000,	100,	N'Đêm lò xo KING'	,N'Trắng',	0,	N'Cái')

select * from product

/*tao bang hoa don Nhap*/
create table BillImport(
BillImportId int,
BillImportDate Date,
BillTotalMoney int,
BillPayPercent int
constraint pk_BillImport primary key(BillImportId))
select * from BillImport


/* tao bang chi tiet hoa don nhap*/
Create table BillImportDetails(
BillImportDetailsId int,
BillImportId int,
ProductId varchar(6),
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

/*tao bang chi tiet hoa don xuat*/
Create table BillExportDetails(
BillExportDetailsId int,
BillExportId int,
ProductId varchar(6),
Quantity int,
constraint pk_BillExportDetails primary key (BillExportDetailsId),
constraint fk_BillExport foreign key (BillExportId) references BillExport(BillExportId),
constraint fk_BillExportProduct foreign key (ProductId) references Product(ProductId)
)
select * from BillExportDetails

