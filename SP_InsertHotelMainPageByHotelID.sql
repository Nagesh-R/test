USE [welcomgroup]
GO
 Object  StoredProcedure [hotels].[SP_InsertHotelMainPageByHotelID]    Script Date 25-01-2016 112149 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [hotels].[SP_InsertHotelMainPageByHotelID]            
@Status char(1),            
@HName varchar(50),            
@HLName varchar(50),            
@HCat int,            
@Code varchar(6),            
@Priority int,            
@Loc varchar(50),            
@Address varchar(100),            
@Phone varchar(50),            
@Telex varchar(50),            
@Email varchar(50),            
@Fax varchar(50),            
@Flex text,            
@Business char(1),            
@Leisure char(1),            
@wa char(1),            
@wl char(1),            
@Booking char(1),            
@Home char(1),            
@Conference char(1),            
@Crs char(1),            
@PGI char(1),            
@flg_Online_CustStay char(1),            
@flg_Offline_CustStay char(1),        
@flg_Mobile_Online_PGI CHAR(1),           
@PGIA char(1),           
@lst_mod_usr varchar(10),
@airportName varchar(100),
@hotel_link varchar (250),
@FileLoc_hotelLogo varchar(500),
@airport_distance decimal(10,2),
@fileloc_imageloc varchar(50)   
As            
INSERT INTO w_hotel(flg_del, name_hotel, name_hotellname, id_hotelcat,            
code_hotel, No_priority, desc_location, Address_hotel, Phone_hotel,            
Telex_hotel, Email_hotel, Fax_hotel, Text_flexmessage,            
Flg_business, Flg_leisure, Flg_wa, Flg_wl, Flg_booking, Flg_home,            
Flg_conference, Flg_crs, Flg_PGI,flg_Online_CustStay,flg_Offline_CustStay, flg_Mobile_Online_PGI, flg_PGIA,        
lst_mod_usr, moddt, airport_name,hotel_link,FileLoc_hotelLogo,airport_distance,fileloc_imageloc)            
Values(@Status,@HName, @HLName, @HCat, @Code, @Priority, @Loc,            
@Address, @Phone, @Telex, @Email, @Fax, @Flex, @Business, @Leisure,            
@wa, @wl, @Booking, @Home, @Conference, @Crs, @PGI,@flg_Online_CustStay,@flg_Offline_CustStay,        
@flg_Mobile_Online_PGI,@PGIA,@lst_mod_usr, getdate(),@airportName,@hotel_link,@FileLoc_hotelLogo,@airport_distance,@fileloc_imageloc)            
return '1'

