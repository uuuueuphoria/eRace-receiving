/*
Post-Deployment Script Template                            
 Use SQLCMD syntax to include a file in the post-deployment script.            
 Example:      :r .\myfile.sql                                
 Use SQLCMD syntax to reference a variable in the post-deployment script.        
 Example:      :setvar TableName MyTable                            
               SELECT * FROM [$(TableName)]                    
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.        

--------------------------------------------------------------------------------------
*/
INSERT [dbo].[DatabaseVersion]([Major], [Minor], [Build])
    VALUES(1,1,0)
GO
INSERT [dbo].[Certifications]([CertificationLevel], [Description]) VALUES ('A', N'Instructor All Levels')
INSERT [dbo].[Certifications]([CertificationLevel], [Description]) VALUES ('B', N'All Levels')
INSERT [dbo].[Certifications]([CertificationLevel], [Description]) VALUES ('C', N'Automatic Transmissions Only')
INSERT [dbo].[Certifications]([CertificationLevel], [Description]) VALUES ('D', N'Novice Training')
GO
SET IDENTITY_INSERT [dbo].[Positions] ON 
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (1, N'Director', CAST(23.50 AS Decimal(5, 2)))
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (2, N'Race Coordinator', CAST(11.25 AS Decimal(5, 2)))
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (3, N'Race Investigator', CAST(11.25 AS Decimal(5, 2)))
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (4, N'Mechanic - Senior', CAST(9.80 AS Decimal(5, 2)))
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (5, N'Mechanic ', CAST(7.75 AS Decimal(5, 2)))
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (6, N'Track Service', CAST(5.80 AS Decimal(5, 2)))
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (7, N'Food Service', CAST(5.80 AS Decimal(5, 2)))
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (8, N'Shop ', CAST(6.85 AS Decimal(5, 2)))
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (9, N'Clerk', CAST(6.85 AS Decimal(5, 2)))
GO
INSERT [dbo].[Positions] ([PositionID], [Description], [Wage]) VALUES (10, N'Office Manager', CAST(6.85 AS Decimal(5, 2)))
GO
SET IDENTITY_INSERT [dbo].[Positions] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (1, N'Kreeg', N'Marla', N'8816 - 33 Ave.', N'Sherwood Park', N'T8A9T1', N'7804643526', 7, CAST(N'1972-10-04T00:00:00.000' AS DateTime), N'536703880')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (2, N'Smith', N'Kenny', N'670 - 56 St.', N'Edmonton', N'T5W3V8', N'7804760592', 5, CAST(N'1975-02-02T00:00:00.000' AS DateTime), N'578734225')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (3, N'Spencer', N'Mark', N'13307 - 190 Ave.', N'Edmonton', N'T6X1F8', N'7804255077', 7, CAST(N'1979-07-05T00:00:00.000' AS DateTime), N'688954436')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (4, N'Hall', N'Kathryn', N'472 - 52 St.', N'Sherwood Park', N'T8A1E6', N'7804644395', 7, CAST(N'1982-08-02T00:00:00.000' AS DateTime), N'884767652')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (5, N'Thargg', N'Marta', N'15281 - 176 Ave.', N'Edmonton', N'T6I6E1', N'7804898086', 2, CAST(N'1981-08-11T00:00:00.000' AS DateTime), N'882898740')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (6, N'Timber', N'Joshua', N'13474 - 181 St.', N'Edmonton', N'T5M9G0', N'7804897093', 3, CAST(N'1975-01-28T00:00:00.000' AS DateTime), N'576098124')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (7, N'Hush', N'Karol', N'3819 - 119 Ave.', N'Edmonton', N'T6T6R5', N'7804767240', 8, CAST(N'1980-09-23T00:00:00.000' AS DateTime), N'901287668')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (8, N'Johnson', N'Ira', N'5486 - 47 Ave.', N'St Albert', N'T8N6V2', N'7804597625', 8, CAST(N'1980-01-05T00:00:00.000' AS DateTime), N'946729101')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (9, N'Lark', N'Cybil', N'1366 - 87 St.', N'Edmonton', N'T5M9H0', N'7804892628', 8, CAST(N'1978-04-05T00:00:00.000' AS DateTime), N'789264764')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (10, N'Spyrszch', N'Clement', N'20818 - 88 St.', N'Edmonton', N'T5V9X6', N'7804734188', 5, CAST(N'1983-12-18T00:00:00.000' AS DateTime), N'872657321')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (11, N'Meeks', N'Jonathan', N'9552 - 132 St.', N'Edmonton', N'T5V8P9', N'7804738453', 6, CAST(N'1987-01-07T00:00:00.000' AS DateTime), N'920987598')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (12, N'Yates', N'Karen', N'3403 - 39 Ave.', N'St Albert', N'T8N9T6', N'7804583889', 10, CAST(N'1986-09-05T00:00:00.000' AS DateTime), N'867584684')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (13, N'Mako', N'Les', N'9794 - 50 Ave.', N'St Albert', N'T8N6Q4', N'7804598161', 5, CAST(N'1983-04-05T00:00:00.000' AS DateTime), N'789867658')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (14, N'Mills', N'Walter', N'7774 - 72 St.', N'Edmonton', N'T5J8A7', N'7804899160', 6, CAST(N'1981-11-12T00:00:00.000' AS DateTime), N'967869547')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (15, N'Imsri', N'Ishrat', N'15168 - 144 Ave.', N'Edmonton', N'T6M0H3', N'7804762382', 1, CAST(N'1972-12-30T00:00:00.000' AS DateTime), N'879132936')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (16, N'Qi', N'Quon', N'3213 - 12 Ave.', N'St Albert', N'T8N7Y1', N'7804188434', 5, CAST(N'1986-12-10T00:00:00.000' AS DateTime), N'768748947')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (17, N'Bree', N'Harlon', N'4299 - 17 Ave.', N'Edmonton', N'T6O9O4', N'7804762872', 2, CAST(N'1987-12-01T00:00:00.000' AS DateTime), N'867686674')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (18, N'Kipling', N'Casey', N'7860 - 20 St.', N'Edmonton', N'T5A4B2', N'7804765484', 2, CAST(N'1985-10-01T00:00:00.000' AS DateTime), N'658566585')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (19, N'Hrenew', N'Sadie', N'12160 - 201 St.', N'Edmonton', N'T5R1D1', N'7804732760', 6, CAST(N'1959-05-04T00:00:00.000' AS DateTime), N'631201873')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (20, N'Calder', N'James', N'5540 - 76 St.', N'Sherwood Park', N'T8A6B7', N'7804162716', 9, CAST(N'1983-03-03T00:00:00.000' AS DateTime), N'877567585')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (21, N'Collins', N'Martha', N'4825 - 18 St.', N'Sherwood Park', N'T8A7G8', N'7804161550', 4, CAST(N'1986-05-07T00:00:00.000' AS DateTime), N'867686767')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (22, N'Kuczera', N'Sydney', N'7458 - 70 St.', N'St Albert', N'T8N7S0', N'7804598260', 8, CAST(N'1986-08-08T00:00:00.000' AS DateTime), N'877694100')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (23, N'Dhaktra', N'Mackenzie', N'7027 - 179 Ave.', N'Edmonton', N'T6W1X5', N'7804778231', 4, CAST(N'1984-02-28T00:00:00.000' AS DateTime), N'768673520')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (24, N'Newland', N'Alex', N'9649 - 140 St.', N'Edmonton', N'T5B8R5', N'7804772032', 1, CAST(N'1980-09-02T00:00:00.000' AS DateTime), N'768664943')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (25, N'Farmer', N'Ashley', N'2374 - 97 St.', N'Sherwood Park', N'T8A2P6', N'7804645120', 6, CAST(N'1984-11-10T00:00:00.000' AS DateTime), N'766836301')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (26, N'Beecham', N'Kevin', N'20565 - 5 St.', N'Edmonton', N'T5F2X0', N'7804737794', 10, CAST(N'1986-10-30T00:00:00.000' AS DateTime), N'759470012')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (27, N'Clark', N'Jennifer', N'9815 - 197 St.', N'Edmonton', N'T5L4D4', N'7804735922', 5, CAST(N'1987-01-03T00:00:00.000' AS DateTime), N'877595750')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (28, N'Long', N'Bart', N'16834 - 173 Ave.', N'Edmonton', N'T6F4R7', N'7804253927', 2, CAST(N'1982-06-02T00:00:00.000' AS DateTime), N'876947403')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (29, N'Getz', N'Colleen', N'3143 - 35 St.', N'Edmonton', N'T5R4Y2', N'7804734149', 1, CAST(N'1973-07-07T00:00:00.000' AS DateTime), N'864947548')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (30, N'England', N'Karen', N'6414 - 89 St.', N'St Albert', N'T8N3D1', N'7804188952', 7, CAST(N'1978-08-14T00:00:00.000' AS DateTime), N'763534311')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (31, N'Greely', N'Alice', N'6463 - 20 Ave.', N'St Albert', N'T8N6F4', N'7804592058', 6, CAST(N'1980-10-10T00:00:00.000' AS DateTime), N'875642309')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (32, N'Euchner', N'Drew', N'4903 - 52 St.', N'St Albert', N'T8N5R1', N'7804189340', 3, CAST(N'1986-02-01T00:00:00.000' AS DateTime), N'867759009')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (33, N'Harlow', N'Brandon', N'11371 - 97 Ave.', N'Edmonton', N'T6W7V9', N'7804892926', 7, CAST(N'1984-07-03T00:00:00.000' AS DateTime), N'978675658')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (34, N'SparklingEyes', N'Melissa', N'7689 - 58 St.', N'Sherwood Park', N'T8A2L0', N'7804160428', 6, CAST(N'1982-08-01T00:00:00.000' AS DateTime), N'856756909')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (35, N'RunningWolf', N'Cletus', N'17243 - 136 St.', N'Edmonton', N'T5R7S2', N'7804892863', 1, CAST(N'1984-08-09T00:00:00.000' AS DateTime), N'766485752')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (36, N'Bureau', N'Jacques', N'8972 - 93 Ave.', N'Edmonton', N'T6R8M5', N'7804890640', 7, CAST(N'1986-12-06T00:00:00.000' AS DateTime), N'877574523')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (37, N'Serat', N'Marceau', N'16455 - 24 Ave.', N'Edmonton', N'T6X3W6', N'7804254210', 9, CAST(N'1982-10-15T00:00:00.000' AS DateTime), N'878998831')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (38, N'L''heureux', N'Renee', N'16214 - 52 Ave.', N'Edmonton', N'T6X3L8', N'7804251361', 1, CAST(N'1975-11-10T00:00:00.000' AS DateTime), N'867990022')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (39, N'Renard', N'Markus', N'13996 - 191 Ave.', N'Edmonton', N'T6Z5S8', N'7804254126', 2, CAST(N'1986-01-30T00:00:00.000' AS DateTime), N'987756465')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (40, N'LittleEagle', N'John', N'18693 - 161 St.', N'Edmonton', N'T5C0F1', N'7804258720', 2, CAST(N'1983-05-07T00:00:00.000' AS DateTime), N'978675654')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (41, N'Reese', N'Velma', N'4755 - 10 Ave.', N'Sherwood Park', N'T8A5N6', N'7804161638', 3, CAST(N'1986-07-05T00:00:00.000' AS DateTime), N'867596769')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (42, N'McLean', N'Clarissa', N'20149 - 37 St.', N'Edmonton', N'T5M6Y1', N'7804734896', 6, CAST(N'1985-09-09T00:00:00.000' AS DateTime), N'876759570')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (43, N'Jurgens', N'Denise', N'4103 - 61 Ave.', N'St Albert', N'T8N0O1', N'7804591813', 6, CAST(N'1984-12-13T00:00:00.000' AS DateTime), N'985745957')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (44, N'Skent', N'Karen', N'13984 - 30 St.', N'Edmonton', N'T5M0I7', N'7804770919', 7, CAST(N'1985-03-09T00:00:00.000' AS DateTime), N'968574531')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (45, N'Holt', N'Terry', N'2680 - 123 St.', N'Edmonton', N'T5A8L2', N'7804730646', 8, CAST(N'1986-11-01T00:00:00.000' AS DateTime), N'976867770')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (46, N'Fife', N'Holly', N'21500 - 202 St.', N'Edmonton', N'T5C7M2', N'7804739829', 7, CAST(N'1982-04-08T00:00:00.000' AS DateTime), N'968564421')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (47, N'MacMahon', N'Jana', N'9240 - 18 St.', N'Sherwood Park', N'T8A9F9', N'7804647780', 5, CAST(N'1961-05-09T00:00:00.000' AS DateTime), N'957564353')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (48, N'Markson', N'Russel', N'15890 - 22 St.', N'Edmonton', N'T5K6J9', N'7804891979', 7, CAST(N'1985-09-04T00:00:00.000' AS DateTime), N'967856640')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (49, N'Sharp', N'Susan', N'2053 - 26 St.', N'St Albert', N'T8N7G1', N'7804183872', 9, CAST(N'1984-09-02T00:00:00.000' AS DateTime), N'976865760')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (50, N'Klemp', N'Otto', N'20292 - 150 Ave.', N'Edmonton', N'T6E6G1', N'7804895963', 4, CAST(N'1977-02-01T00:00:00.000' AS DateTime), N'857547564')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (51, N'Harrow', N'Darcy', N'2110 - 38 Ave.', N'St Albert', N'T8N5R2', N'7804180321', 6, CAST(N'1986-08-27T00:00:00.000' AS DateTime), N'857568675')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (52, N'Engle', N'Karmen', N'14429 - 48 Ave.', N'Edmonton', N'T6D3X0', N'7804895477', 4, CAST(N'1982-09-30T00:00:00.000' AS DateTime), N'768676867')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (53, N'Duschene', N'Margaret', N'17817 - 1 St.', N'Edmonton', N'T5H1I4', N'7804761470', 5, CAST(N'1985-01-07T00:00:00.000' AS DateTime), N'768674845')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (54, N'Himmel', N'Valerie', N'14956 - 74 Ave.', N'Edmonton', N'T6Z7M6', N'7804771742', 4, CAST(N'1981-06-24T00:00:00.000' AS DateTime), N'768675957')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (55, N'Grea', N'Cecelia', N'17743 - 92 St.', N'Edmonton', N'T5W4B0', N'7804251420', 5, CAST(N'1982-07-15T00:00:00.000' AS DateTime), N'768946499')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (56, N'Banning', N'Len', N'894 - 197 Ave.', N'Edmonton', N'T6O4Q0', N'7804764250', 9, CAST(N'1986-10-24T00:00:00.000' AS DateTime), N'676856595')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (57, N'Dapu', N'Winnie', N'2799 - 95 St.', N'Edmonton', N'T5B9M2', N'7804303788', 9, CAST(N'1984-11-11T00:00:00.000' AS DateTime), N'867685655')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (58, N'Nutt', N'Ima', N'9379 - 71 Ave.', N'St Albert', N'T8N6I3', N'7804590584', 6, CAST(N'1986-12-01T00:00:00.000' AS DateTime), N'756574534')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Address], [City], [PostalCode], [Phone], [PositionID], [Birthdate], [SocialInsuranceNumber]) 
VALUES (59, N'Peace', N'Warren', N'5579 - 177 Ave.', N'Edmonton', N'T6A2A0', N'7804899517', 7, CAST(N'1983-03-05T00:00:00.000' AS DateTime), N'785645343')
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (1, N'Race Gear')
GO
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (2, N'Parts')
GO
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (3, N'Confectionary')
GO
INSERT [dbo].[Categories] ([CategoryID], [Description]) VALUES (4, N'Leisure')
GO

SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendors] ON 
GO
INSERT [dbo].[Vendors] ([VendorID], [Name], [Address], [City], [PostalCode], [Phone], [Contact]) VALUES (3, N'Sports Wear Wholesale', N'13317 - 290 Ave.', N'Edmonton', N'T6X3F8', N'7804255377',  N'Jerry Khan')
GO
INSERT [dbo].[Vendors] ([VendorID], [Name], [Address], [City], [PostalCode], [Phone], [Contact]) VALUES (4, N'Leathers Wear', N'472 - 152 St.', N'Sherwood Park', N'T8A1E5', N'7804644495', N'Shirley Ujest')
GO
INSERT [dbo].[Vendors] ([VendorID], [Name], [Address], [City], [PostalCode], [Phone], [Contact]) VALUES (5, N'CanAuto Parts', N'15288 - 76 Ave.', N'Edmonton', N'T5I6E1', N'7804898886', N'Iam Stewtent')
GO
INSERT [dbo].[Vendors] ([VendorID], [Name], [Address], [City], [PostalCode], [Phone], [Contact]) VALUES (6, N'Riders Ready Ltd', N'1347 - 181 St.', N'Edmonton', N'T5M9G1', N'7804897193', N'Lowan Behold')
GO
INSERT [dbo].[Vendors] ([VendorID], [Name], [Address], [City], [PostalCode], [Phone], [Contact]) VALUES (7, N'Kart Parts Company', N'17458 - 70 St.', N'St Albert', N'T8N6S0', N'7804597260',  N'Nole Itall')
GO
INSERT [dbo].[Vendors] ([VendorID], [Name], [Address], [City], [PostalCode], [Phone], [Contact]) VALUES (8, N'CostLess Stuff',  N'7027 - 39 Ave.', N'Edmonton', N'T6W3X5', N'7804778331', N'Holly Daye')
GO
INSERT [dbo].[Vendors] ([VendorID], [Name], [Address], [City], [PostalCode], [Phone], [Contact]) VALUES (9, N'Confectionary Supplies',  N'19649 - 140 St.', N'Edmonton', N'T6B8R5', N'7804762032', N'Jack Russel')
GO
INSERT [dbo].[Vendors] ([VendorID], [Name], [Address], [City], [PostalCode], [Phone], [Contact]) VALUES (10, N'Grocery UnLimited', N'2274 - 27 St.', N'Sherwood Park', N'T8A2P2', N'7804642220', N'Luke Wurm')
GO
SET IDENTITY_INSERT [dbo].[Vendors] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (1, N'Gearbox 5G Racing Suit - Mens S', 245.0000, 0, 3, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (2, N'Gearbox 5G Racing Suit Mens - M', 255.0000, 0, 3, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (3, N'Gearbox 5G Racing Suit Mens L', 275.0000, 0, 3, 3, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (4, N'GearBox 5G Racing Suit Mens XL', 310.0000, 0, 2, 3, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (5, N'GearBox 5G Racing Suit Ladies S', 245.0000, 0, 3, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (6, N'GearBox 5G Racing Suit Ladies M', 255.0000, 0, 5, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (7, N'GearBox 5G Racing Suit Junior S', 115.0000, 0, 8, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (8, N'GearBox 5G Racing Suit Junior M', 145.0000, 0, 15, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (9, N'GearBox 5G Racing Suit Junior L', 185.0000, 0, 13, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (10, N'GearBox Paul Tracy suit Mens S', 310.9900, 0, 5, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (12, N'GearBox Paul Tracy Suit Mens M', 325.9900,0, 3, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (13, N'GearBox Paul Tracy Suit Junior s', 156.0000, 0, 6, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (14, N'GearBox Paul Tracy Suit Junior M', 185.0000, 0, 2, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (15, N'GearBox Paul Tracy Suit Junior L', 210.0000, 0, 8, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (17, N'Aluminum Radiator 17 X 6.5', 95.0000, 0, 3, 2, 0.0000, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (18, N'Aluminum Radiator 18 X 6.5', 102.0000, 0, 4, 2, 0.0000, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (19, N'Tillet seat Small', 210.0000, 0, 2, 2, 5.0000, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (21, N'Tillet seat Medium', 223.0000, 0, 2, 2, 5.0000, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (22, N'Tillet seat Large', 242.0000, 0, 1, 2, 5.0000, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (23, N'CRG front hub w/b 100cc', 79.0000, 0, 26, 20, 0.0000, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (24, N'CRG Brake hubs 40mm', 79.0000, 0, 19, 20, 0.0000, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (25, N'Axle Bearigns 40mm', 27.0000, 0, 62, 24, 0.0000, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (27, N'Brake Pads Hard', 13.0000, 0, 52, 24, 0.0000, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (28, N'Rally Helmet Mens', 187.0000, 0, 16, 10, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (29, N'Rally Helmet Juniors', 134.0000, 0, 22, 10, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (30, N'GearBox Gloves Mens S', 42.0000, 0, 34, 15, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (31, N'GearBox Gloves Mens M', 42.0000, 0, 17, 15, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (32, N'GearBox Gloves Mens L', 42.0000, 0, 23, 15, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (33, N'GearBox Gloves Ladies S', 42.0000, 0, 23, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (34, N'GearBox Gloves Ladies m', 42.0000, 0, 5, 5, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (35, N'GearBox Gloves Junior S', 27.0000, 0, 15, 10, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (36, N'GearBox Gloves Junior M', 27.0000, 0, 12, 10, 0.0000, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (37, N'Twizzlers, Cherry, 90g', 1.2900, 0, 150, 50, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (38, N'Potato Chips, Regular, 85g', 1.9900, 60, 350, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (39, N'Potato Chips. BBQ, 85g', 1.9900, 60, 290, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (40, N'Potato Chips, All Dressed, 85g', 1.9900, 0, 390, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (41, N'M/W Popcorn, Plain, 125g', 1.9900, 0, 129, 50, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (42, N'M/W Popcorn, Butter, 125g', 1.9900, 0, 75, 75, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (43, N'Pez Dispenser', 2.2900, 0, 101, 20, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID])
VALUES (44, N'Pez Refill, Cherry', 1.4900, 0, 60, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (45, N'Cola, 600ml', 1.9900, 0, 260, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (46, N'Diet Cola, 600ml', 1.9900, 0, 179, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (47, N'Kit Kat, 120g', 1.2900, 0, 35, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (48, N'Cheezies, 120g', 2.2900,  0, 109, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (49, N'Potato Chips, Box, Reg, 500g', 3.2900,  0, 150, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (50, N'Popcorn Flavor, Cajun', 2.9900,  0, 25, 20, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (51, N'Pro Cart Track Guide', 0.9900,75, 75, 25, 0.0000, 4)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (52, N'Wunderbar, 120g', 1.2900, 40, 22, 50, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (53, N'H Choc Kisses, 100g', 2.2900, 32, 5, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (54, N'Pretzels, 225g', 2.2900, 0, 127, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (55, N'Potato Chips, S&V, 85g', 1.9900, 0, 360, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (56, N'Twizzlers, Licorice, 90g', 1.2900, 20, 27, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (57, N'Peanuts, Salt/Shell, 200g', 1.4900, 0, 150, 20, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (58, N'Cashews, Salt, 200g', 1.9900, 0, 109, 25, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (59, N'Licorice Whips, Grape, 150g', 1.4900, 0, 100, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (60, N'Guide to Cart Racing 2007,  DVD', 19.9900, 0, 25, 5, 0.0000, 4)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (61, N'Fred Nemo,  DVD', 21.9900, 0, 36, 0, 0.0000, 4)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (62, N'Track King 2007,  DVD', 19.9900, 0, 15, 10, 0.0000, 4)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (63, N'Peanuts, Roast, 250g', 3.9900, 0, 126, 35, 0.0000, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (64, N'DarkEye sunglasses', 37.0000, 0, 23, 5, 0.0000, 4)
GO
INSERT [dbo].[Products] ([ProductID], [ItemName], [ItemPrice],  [QuantityOnOrder], [QuantityOnHand], [ReOrderLevel], [ReStockCharge], [CategoryID]) 
VALUES (65, N'T-Shirt Cart Track', 22.0000, 10, 16, 25, 0.0000, 4)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[VendorCatalogs] ON 
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost]) 
VALUES (1, 1, 3, N'each', 1, 179.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (2, 2, 3, N'each', 1, 189.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (3, 3, 3, N'each', 1, 199.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (4, 4, 3, N'each', 1, 240.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (5, 5, 3, N'each', 1, 169.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (6, 6, 3, N'each', 1, 172.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (7, 7, 3, N'each', 1, 85.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (8, 8, 3, N'each', 1, 97.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (9, 9, 3, N'each', 1, 110.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (10, 10, 3, N'each', 1, 259.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (11, 12, 3, N'each', 1, 270.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (12, 13, 3, N'each', 1, 120.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (13, 14, 3, N'each', 1, 134.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (14, 15, 3, N'each', 1,162.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (17, 30, 3, N'case', 10, 370.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (18, 31, 3, N'case', 10, 380.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (19, 32, 3, N'case', 10, 395.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (20, 33, 3, N'case', 10, 370.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (21, 34, 3, N'case', 10, 380.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (22, 35, 3, N'case', 10, 210.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (23, 36, 3, N'case', 10, 220.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost]) 
VALUES (24, 1, 4, N'each', 1, 182.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (25, 2, 4, N'each', 1, 190.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (26, 3, 4, N'each', 1, 199.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (27, 4, 4, N'each', 1, 235.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (28, 5, 4, N'each', 1, 169.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (29, 6, 4, N'each', 1, 170.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (33, 10, 4, N'each', 1, 245.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (34, 12, 4, N'each', 1, 260.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (38, 28, 4, N'each', 1, 155.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (39, 29, 4, N'each', 1, 109.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (40, 30, 4, N'case', 10, 370.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (41, 31, 4, N'case', 10, 370.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (42, 32, 4, N'case', 10, 370.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (43, 33, 4, N'case', 10, 370.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (44, 34, 4, N'case', 10, 370.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (45, 28, 5, N'each', 1, 159.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (46, 29, 5, N'each', 1, 109.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (48, 17, 5, N'each', 1,82.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (49, 18, 5, N'each', 1, 90.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (53, 23, 5, N'each', 1, 70.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (54, 24, 5, N'each', 1, 70.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (55, 25, 5, N'each', 1, 23.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (56, 27, 5, N'each', 1, 11.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (60, 19, 7, N'each', 1, 192.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (61, 21, 7, N'each', 1, 201.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (62, 22, 7, N'each', 1, 219.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (63, 23, 7, N'each', 1, 69.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (64, 24, 7, N'each', 1, 69.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (65, 25, 7, N'each', 1, 23.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (66, 27, 7, N'each', 1, 11.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (67, 51, 8, N'case', 25, 21.50)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (68, 60, 8, N'each', 1, 13.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (69, 61, 8, N'each', 1, 19.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (70, 62, 8, N'each', 1, 14.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (71, 64, 8, N'case', 10, 251.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (72, 65, 8, N'case', 10, 192.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (73, 64, 3, N'case', 10, 256.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (74, 65, 3, N'case', 10, 195.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (81, 37, 8, N'case', 20, 24.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (82, 38, 8, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (83, 39, 8, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (84, 40, 8, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (85, 41, 8, N'case', 10, 15.69)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (86, 42, 8, N'case', 10, 15.69)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (89, 45, 8, N'each', 1, 1.05)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (90, 46, 8, N'each', 1, 1.05)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (91, 47, 8, N'case', 20, 24.25)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (92, 48, 8, N'case', 20, 42.20)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (93, 49, 8, N'case', 6, 17.10)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (94, 50, 8, N'case', 12, 21.70)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (95, 52, 8, N'case', 20, 23.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (96, 53, 8, N'case', 8, 14.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (97, 54, 8, N'case', 20, 41.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (98, 55, 8, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (99, 56, 8, N'case', 20, 24.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (100, 57, 8, N'case', 20, 24.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (101, 58, 8, N'case', 20, 27.25)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (102, 59, 8, N'case', 20, 26.70)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (103, 63, 8, N'case', 10, 32.90)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (110, 37, 9, N'case', 20, 24.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (112, 38, 9, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (113, 39, 9, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (114, 40, 9, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (115, 41, 9, N'case', 10, 15.79)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (116, 42, 9, N'case', 10, 15.79)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (117, 43, 9, N'case', 50, 98.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost]) 
VALUES (118, 44, 9, N'case', 100, 126.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (121, 47, 9, N'case', 20, 24.40)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (122, 48, 9, N'case', 20, 42.50)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (123, 49, 9, N'case', 6, 17.25)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (124, 50, 8, N'case', 12, 21.70)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (125, 52, 9, N'case', 20, 23.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (126, 53, 9, N'case', 8, 14.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (128, 55, 9, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (129, 56, 8, N'case', 20, 24.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (140, 37, 10, N'case', 20, 24.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (142, 38, 10, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (143, 39, 10, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (144, 40, 10, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (149, 45, 10, N'each', 1, 1.05)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (150, 46, 10, N'each', 1, 1.05)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (151, 47, 10, N'case', 20, 24.40)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (152, 48, 10, N'case', 20, 42.50)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (153, 49, 10, N'case', 6, 17.25)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (155, 52, 10, N'case', 20, 23.00)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (157, 54, 10, N'case', 20, 43.20)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (158, 55, 10, N'case', 20, 36.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (159, 56, 10, N'case', 20, 24.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (160, 57, 10, N'case', 20, 24.95)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (161, 58, 10, N'case', 20, 27.25)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (162, 59, 10, N'case', 20, 26.70)
GO
INSERT [dbo].[VendorCatalogs] ([VendorCatalogID], [ProductID], [VendorID],  [OrderUnitType], [OrderUnitSize], [OrderUnitCost])  
VALUES (163, 63, 10, N'case', 10, 32.90)
GO
SET IDENTITY_INSERT [dbo].[VendorCatalogs] OFF
GO


SET IDENTITY_INSERT [dbo].[CarClasses] ON 
GO
INSERT [dbo].[CarClasses] ([CarClassID], [CarClassName], [MaxEngineSize], [CertificationLevel], [RaceRentalFee], [Description]) VALUES (1, N'SeniorLite', CAST(10.0 AS Decimal(4, 1)), N'C', 15.0000, N'4 cycle max 65 mph')
GO
INSERT [dbo].[CarClasses] ([CarClassID], [CarClassName], [MaxEngineSize], [CertificationLevel], [RaceRentalFee], [Description]) VALUES (3, N'SeniorStock', CAST(30.0 AS Decimal(4, 1)), N'C', 15.0000, N'4 cycle max 80 mph 125cc')
GO
INSERT [dbo].[CarClasses] ([CarClassID], [CarClassName], [MaxEngineSize], [CertificationLevel], [RaceRentalFee], [Description]) VALUES (4, N'SeniorModified', CAST(30.0 AS Decimal(4, 1)), N'C', 15.0000, N'4 cycle max 100 mph 125cc')
GO
INSERT [dbo].[CarClasses] ([CarClassID], [CarClassName], [MaxEngineSize], [CertificationLevel], [RaceRentalFee], [Description]) VALUES (5, N'SeniorShift', CAST(40.0 AS Decimal(4, 1)), N'B', 15.0000, N'6 sp transmission 4 cycle max 100 mph')
GO
INSERT [dbo].[CarClasses] ([CarClassID], [CarClassName], [MaxEngineSize], [CertificationLevel], [RaceRentalFee], [Description]) VALUES (6, N'Youth', CAST(10.0 AS Decimal(4, 1)), N'D', 10.0000, N'2 cycle max 45 mph')
GO
INSERT [dbo].[CarClasses] ([CarClassID], [CarClassName], [MaxEngineSize], [CertificationLevel], [RaceRentalFee], [Description]) VALUES (8, N'Junior', CAST(10.0 AS Decimal(4, 1)), N'D', 10.0000, N'2 or 4 cycle max 60 mph')
GO
SET IDENTITY_INSERT [dbo].[CarClasses] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (1, N'Jaudon', N'Abbie', N'7804761359', N'21098 - 59 Ave.', N'Edmonton', N'T6X4C4', NULL, CAST(N'1998-10-25T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (2, N'Cherwinski', N'Abe', N'7804598973', N'4584 - 5 St.', N'St Albert', N'T8N5E7', NULL, CAST(N'1990-09-09T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (3, N'Sturchio', N'Abe', N'7804598655', N'7445 - 87 St.', N'St Albert', N'T8N5C4', NULL, CAST(N'1982-05-23T00:00:00.000' AS DateTime), N'A', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (4, N'Barsness', N'Abel', N'7804167086', N'9226 - 82 St.', N'Sherwood Park', N'T8A4T0', NULL, CAST(N'2004-07-28T00:00:00.000' AS DateTime), N'D', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (5, N'Birkenmeier', N'Abel', N'7804256113', N'8871 - 57 St.', N'Edmonton', N'T5A3H6', NULL, CAST(N'1992-05-26T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (6, N'Boocks', N'Abigail', N'7804160955', N'2534 - 94 St.', N'Sherwood Park', N'T8A0L9', NULL, CAST(N'1990-06-22T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (7, N'Crask', N'Abraham', N'7804167439', N'1259 - 71 St.', N'Sherwood Park', N'T8A0N1', NULL, CAST(N'1986-08-18T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (8, N'Zamudio', N'Abram', N'7804893863', N'767 - 18 St.', N'Edmonton', N'T5T7L1', NULL, CAST(N'1991-08-12T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (9, N'Bruzewicz', N'Adaline', N'7804302031', N'9658 - 92 Ave.', N'Edmonton', N'T6W0E6', NULL, CAST(N'1982-09-10T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (10, N'Gullatt', N'Adaline', N'7804169346', N'8021 - 8 Ave.', N'Sherwood Park', N'T8A6C8', NULL, CAST(N'1988-12-24T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (11, N'Yumas', N'Adaline', N'7804731373', N'7949 - 20 Ave.', N'Edmonton', N'T6G1L5', NULL, CAST(N'1991-10-01T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (12, N'Yeats', N'Adam', N'7804306521', N'16212 - 185 St.', N'Edmonton', N'T5V3O7', NULL, CAST(N'2002-07-11T00:00:00.000' AS DateTime), N'D', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (13, N'Belitz', N'Adelina', N'7804736908', N'1378 - 94 Ave.', N'Edmonton', N'T6F4G3', NULL, CAST(N'2000-04-07T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (14, N'Conley', N'Adeline', N'7804255744', N'14786 - 80 Ave.', N'Edmonton', N'T6M5S4', NULL, CAST(N'2009-08-27T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (15, N'Engleman', N'Adelle', N'7804255408', N'10775 - 69 Ave.', N'Edmonton', N'T6B4E3', NULL, CAST(N'2007-03-10T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (16, N'Saporito', N'Adolph', N'7804584164', N'4584 - 5 St.', N'St Albert', N'T8N7O5', NULL, CAST(N'2008-09-11T00:00:00.000' AS DateTime), N'D', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (17, N'Hasselvander', N'Adrianne', N'7804309775', N'2140 - 202 Ave.', N'Edmonton', N'T6R7F8', NULL, CAST(N'1985-02-24T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (18, N'Sadan', N'Adrien', N'7804596495', N'4584 - 5 St.', N'St Albert', N'T8N8W2', NULL, CAST(N'1983-08-17T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (19, N'Suihkonen', N'Adriene', N'7804599880', N'4584 - 5 St.', N'St Albert', N'T8N6Q6', NULL, CAST(N'1984-06-04T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (20, N'Gennarelli', N'Agustin', N'7804764245', N'2822 - 201 St.', N'Edmonton', N'T5M1I4', NULL, CAST(N'2004-07-06T00:00:00.000' AS DateTime), N'D', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (21, N'Stabel', N'Agustin', N'7804730165', N'18019 - 213 St.', N'Edmonton', N'T5N7H7', NULL, CAST(N'2002-11-02T00:00:00.000' AS DateTime), N'D', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (22, N'Demarcus', N'Ahmed', N'7804778314', N'5895 - 187 Ave.', N'Edmonton', N'T6P4V6', NULL, CAST(N'1993-03-03T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (23, N'Jelinek', N'Ahmed', N'7804598332', N'4584 - 5 St.', N'St Albert', N'T8N9M2', NULL, CAST(N'1994-12-19T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (24, N'Mcgreal', N'Ai', N'7804896544', N'1147 - 182 St.', N'Edmonton', N'T5Y3H1', NULL, CAST(N'1974-07-11T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (25, N'Engelsman', N'Aileen', N'7804737665', N'16555 - 215 Ave.', N'Edmonton', N'T6A8T9', NULL, CAST(N'1971-02-12T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (26, N'Miyasato', N'Alaine', N'7804763009', N'2589 - 112 St.', N'Edmonton', N'T5G0N0', NULL, CAST(N'1983-08-10T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (27, N'Notik', N'Alaine', N'7804775756', N'4004 - 146 St.', N'Edmonton', N'T5V8Q3', NULL, CAST(N'1995-08-12T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (28, N'Loosier', N'Alan', N'7804764344', N'19932 - 88 Ave.', N'Edmonton', N'T6S6F8', NULL, CAST(N'1991-04-23T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (29, N'Nagy', N'Alan', N'7804736856', N'5824 - 7 Ave.', N'Edmonton', N'T6G1M9', NULL, CAST(N'1979-03-25T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (30, N'Doney', N'Alana', N'7804762010', N'2783 - 129 St.', N'Edmonton', N'T5D9Z8', NULL, CAST(N'1994-12-17T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (31, N'Florin', N'Alane', N'7804586283', N'4584 - 5 St.', N'St Albert', N'T8N4Z7', NULL, CAST(N'2001-11-23T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (32, N'Hullett', N'Alanna', N'7804737695', N'7580 - 28 St.', N'Edmonton', N'T5H6A0', NULL, CAST(N'1992-02-25T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (33, N'Seymore', N'Alayna', N'7804644415', N'3007 - 26 St.', N'Sherwood Park', N'T8A2W8', NULL, CAST(N'1973-08-18T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (34, N'Murton', N'Albert', N'7804304991', N'2041 - 23 St.', N'Edmonton', N'T5P7L0', NULL, CAST(N'2002-02-20T00:00:00.000' AS DateTime), N'D', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (35, N'Delbrune', N'Alberto', N'7804583312', N'7531 - 82 St.', N'St Albert', N'T8N9Q9', NULL, CAST(N'1997-01-11T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (36, N'Westover', N'Albina', N'7804894276', N'11845 - 22 St.', N'Edmonton', N'T5R0I2', NULL, CAST(N'1990-07-03T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (37, N'Buzo', N'Aldo', N'7804164816', N'813 - 7 St.', N'Sherwood Park', N'T8A1B3', NULL, CAST(N'1976-11-11T00:00:00.000' AS DateTime), N'A', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (38, N'Cottongim', N'Aldo', N'7804896783', N'1001 - 14 Ave.', N'Edmonton', N'T6U6L9', NULL, CAST(N'1980-02-03T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (39, N'Handeland', N'Aldo', N'7804589096', N'4584 - 5 St.', N'St Albert', N'T8N2S3', NULL, CAST(N'1990-06-21T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (40, N'Lillehaug', N'Aldo', N'7804892544', N'959 - 94 St.', N'Edmonton', N'T5L4H6', NULL, CAST(N'1984-11-22T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (41, N'Colonna', N'Alec', N'7804891325', N'15353 - 16 St.', N'Edmonton', N'T5T2U4', NULL, CAST(N'1994-06-19T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (42, N'Deike', N'Alec', N'7804165962', N'5459 - 3 Ave.', N'Sherwood Park', N'T8A6F1', NULL, CAST(N'1994-11-03T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (43, N'Rouser', N'Aleen', N'7804251453', N'12704 - 196 St.', N'Edmonton', N'T5N6Y1', NULL, CAST(N'1992-12-18T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (44, N'Bouffard', N'Alejandro', N'7804761915', N'1127 - 104 St.', N'Edmonton', N'T5N1J2', NULL, CAST(N'1985-12-19T00:00:00.000' AS DateTime), N'A', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (45, N'Knudsen', N'Alejandro', N'7804598430', N'4584 - 5 St.', N'St Albert', N'T8N8J7', NULL, CAST(N'1977-12-08T00:00:00.000' AS DateTime), N'A', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (46, N'Loukanis', N'Alene', N'7804775112', N'20377 - 187 Ave.', N'Edmonton', N'T6I3S3', NULL, CAST(N'1992-09-25T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (47, N'Pach', N'Alene', N'7804737498', N'2126 - 90 St.', N'Edmonton', N'T5W3V0', NULL, CAST(N'1994-01-07T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (48, N'Allman', N'Aleshia', N'7804733403', N'14311 - 184 St.', N'Edmonton', N'T5W4K0', NULL, CAST(N'2002-07-22T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (49, N'Mehrotra', N'Aleshia', N'7804168088', N'5189 - 21 St.', N'Sherwood Park', N'T8A2C7', NULL, CAST(N'1986-06-06T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (50, N'Alfano', N'Alesia', N'7804259207', N'13675 - 135 St.', N'Edmonton', N'T5H1T5', NULL, CAST(N'1971-07-26T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (51, N'Pascall', N'Alexandra', N'7804305471', N'12735 - 42 Ave.', N'Edmonton', N'T6E2Z4', NULL, CAST(N'1997-10-05T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (52, N'Castelluccio', N'Alexandria', N'7804598567', N'4584 - 5 St.', N'St Albert', N'T8N8Y9', NULL, CAST(N'2004-04-23T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (53, N'Cioffi', N'Alexia', N'7804169084', N'158 - 59 St.', N'Sherwood Park', N'T8A5A4', NULL, CAST(N'1990-08-09T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (54, N'Kicklighter', N'Alfonzo', N'7804647816', N'1925 - 89 Ave.', N'Sherwood Park', N'T8A2O6', NULL, CAST(N'1990-04-03T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (55, N'Coval', N'Ali', N'7804775158', N'7393 - 89 Ave.', N'Edmonton', N'T6C4A3', NULL, CAST(N'1993-10-04T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (56, N'Elko', N'Alica', N'7804736978', N'5659 - 180 Ave.', N'Edmonton', N'T6H7C8', NULL, CAST(N'1992-04-03T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (57, N'Manasco', N'Alisa', N'7804308455', N'15717 - 148 Ave.', N'Edmonton', N'T6G6X2', NULL, CAST(N'1972-12-21T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (58, N'Gehrking', N'Aliza', N'7804304477', N'2639 - 132 Ave.', N'Edmonton', N'T6H2Y7', NULL, CAST(N'1982-01-01T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (59, N'Smoldt', N'Aliza', N'7804259278', N'2615 - 206 St.', N'Edmonton', N'T5N6Z2', NULL, CAST(N'2003-08-21T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (60, N'Lopaz', N'Alla', N'7804891910', N'16461 - 200 St.', N'Edmonton', N'T5K6D7', NULL, CAST(N'1982-10-28T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (61, N'Bezak', N'Alleen', N'7804766907', N'5463 - 23 St.', N'Edmonton', N'T5D3H3', NULL, CAST(N'1998-09-17T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (62, N'Swenor', N'Allegra', N'7804777246', N'5297 - 195 St.', N'Edmonton', N'T5N8M8', NULL, CAST(N'1982-04-07T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (63, N'Thobbs', N'Allen', N'7804306314', N'21550 - 103 Ave.', N'Edmonton', N'T6Q8L5', NULL, CAST(N'1998-09-21T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (64, N'Martelles', N'Allie', N'7804766156', N'10635 - 99 St.', N'Edmonton', N'T5E7V1', NULL, CAST(N'1978-05-10T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (65, N'Scialpi', N'Allie', N'7804765530', N'6768 - 70 St.', N'Edmonton', N'T5S7G1', NULL, CAST(N'2000-02-19T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender])
VALUES (66, N'Thurmer', N'Allison', N'7804580526', N'5496 - 28 Ave.', N'St Albert', N'T8N1O7', NULL, CAST(N'1995-11-14T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (67, N'Plants', N'Alma', N'7804898397', N'9211 - 64 Ave.', N'Edmonton', N'T6M5Y4', NULL, CAST(N'2007-11-08T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (68, N'Juarbe', N'Alphonso', N'7804769172', N'20693 - 156 Ave.', N'Edmonton', N'T6H9L5', NULL, CAST(N'2006-12-07T00:00:00.000' AS DateTime), N'D', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (69, N'Steibel', N'Alphonso', N'7804763767', N'5885 - 123 Ave.', N'Edmonton', N'T6F5Y0', NULL, CAST(N'2004-01-12T00:00:00.000' AS DateTime), N'D', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (70, N'Blackington', N'Alta', N'7804768963', N'19771 - 61 St.', N'Edmonton', N'T5L5P2', NULL, CAST(N'2001-01-10T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (71, N'Gulbraa', N'Altha', N'7804896721', N'12137 - 5 Ave.', N'Edmonton', N'T6Y0A3', NULL, CAST(N'1981-09-12T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (72, N'Heddleson', N'Alton', N'7804769398', N'18938 - 106 St.', N'Edmonton', N'T5O3H0', NULL, CAST(N'1980-11-01T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (73, N'Macha', N'Alva', N'7804647024', N'5470 - 93 Ave.', N'Sherwood Park', N'T8A9J4', NULL, CAST(N'1993-01-13T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (74, N'Aslinger', N'Alvaro', N'7804641230', N'4062 - 4 St.', N'Sherwood Park', N'T8A7I9', NULL, CAST(N'1979-03-28T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (75, N'Hadad', N'Alvaro', N'7804588193', N'4584 - 5 St.', N'St Albert', N'T8N9I5', NULL, CAST(N'1985-11-27T00:00:00.000' AS DateTime), N'A', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (76, N'Orlin', N'Alvera', N'7804584674', N'4584 - 5 St.', N'St Albert', N'T8N1Z1', NULL, CAST(N'2003-09-10T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (77, N'Blumenstein', N'Alysia', N'7804585512', N'4584 - 5 St.', N'St Albert', N'T8N9M4', NULL, CAST(N'1987-03-13T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (78, N'Coss', N'Alyssa', N'7804306880', N'9793 - 30 St.', N'Edmonton', N'T5X9B5', NULL, CAST(N'1999-12-21T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (79, N'Waltos', N'Alyssa', N'7804160972', N'6639 - 52 St.', N'Sherwood Park', N'T8A4W2', NULL, CAST(N'2000-02-18T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (80, N'Radman', N'Amado', N'7804776808', N'467 - 144 Ave.', N'Edmonton', N'T6D2H6', NULL, CAST(N'1985-12-13T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (81, N'Derryberry', N'Amberly', N'7804764431', N'6934 - 152 St.', N'Edmonton', N'T5X7Y4', NULL, CAST(N'1980-06-28T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (82, N'Timas', N'America', N'7804257010', N'8580 - 207 St.', N'Edmonton', N'T5P6W4', NULL, CAST(N'1979-02-07T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (83, N'Zien', N'Amira', N'7804764327', N'12221 - 19 St.', N'Edmonton', N'T5C1V1', NULL, CAST(N'2006-07-15T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (84, N'Mondoux', N'Amos', N'7804647980', N'3465 - 95 Ave.', N'Sherwood Park', N'T8A8S6', NULL, CAST(N'2001-09-12T00:00:00.000' AS DateTime), N'D', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (85, N'Newland', N'Amos', N'7804763101', N'14852 - 17 Ave.', N'Edmonton', N'T6M0C8', NULL, CAST(N'1993-02-21T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (86, N'Capello', N'Amparo', N'7804303926', N'3356 - 145 Ave.', N'Edmonton', N'T6Y1Z3', NULL, CAST(N'1990-04-12T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (87, N'Rakers', N'Amparo', N'7804644374', N'7168 - 99 St.', N'Sherwood Park', N'T8A0Q6', NULL, CAST(N'1987-09-12T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (88, N'Descamps', N'Amy', N'7804581141', N'4584 - 5 St.', N'St Albert', N'T8N5A1', NULL, CAST(N'2009-08-12T00:00:00.000' AS DateTime), N'D', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (89, N'Ferrigno', N'An', N'7804897270', N'12213 - 110 Ave.', N'Edmonton', N'T6V6F2', NULL, CAST(N'1983-06-17T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (90, N'Pieffer', N'An', N'7804255084', N'18475 - 84 Ave.', N'Edmonton', N'T6E3S0', NULL, CAST(N'1972-07-10T00:00:00.000' AS DateTime), N'A', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (91, N'Mattis', N'Analisa', N'7804259493', N'595 - 201 St.', N'Edmonton', N'T5L0B6', NULL, CAST(N'1993-06-09T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (92, N'Scholzen', N'Anderson', N'7804768453', N'8179 - 143 Ave.', N'Edmonton', N'T6I4I3', NULL, CAST(N'1986-02-28T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (93, N'Vatch', N'Andra', N'7804734618', N'6222 - 115 Ave.', N'Edmonton', N'T6W9J9', NULL, CAST(N'1989-03-13T00:00:00.000' AS DateTime), N'B', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (94, N'Sheats', N'Andre', N'7804896504', N'17946 - 210 St.', N'Edmonton', N'T5L3U2', NULL, CAST(N'1986-12-18T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (95, N'Abu', N'Andrea', N'7804591580', N'4584 - 5 St.', N'St Albert', N'T8N4C6', NULL, CAST(N'1999-06-03T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (96, N'Wiesler', N'Andrea', N'7804585332', N'4584 - 5 St.', N'St Albert', N'T8N4F6', NULL, CAST(N'1985-01-11T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (97, N'Celestin', N'Andreas', N'7804643475', N'1573 - 41 St.', N'Sherwood Park', N'T8A5L1', NULL, CAST(N'1984-08-08T00:00:00.000' AS DateTime), N'B', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (98, N'Lounds', N'Andy', N'7804767074', N'8294 - 40 Ave.', N'Edmonton', N'T6N0J1', NULL, CAST(N'1992-06-27T00:00:00.000' AS DateTime), N'C', N'M')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (99, N'Berard', N'Anette', N'7804771064', N'4000 - 185 Ave.', N'Edmonton', N'T6T9X7', NULL, CAST(N'1993-11-14T00:00:00.000' AS DateTime), N'C', N'F')
GO
INSERT [dbo].[Members] ([MemberId], [LastName], [FirstName], [Phone], [Address], [City], [PostalCode], [EmailAddress], [BirthDate], [CertificationLevel], [Gender]) 
VALUES (100, N'Frieling', N'Angel', N'7804599012', N'4584 - 5 St.', N'St Albert', N'T8N8S2', NULL, CAST(N'2002-11-12T00:00:00.000' AS DateTime), N'D', N'M')
GO
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (1, N'98Z7326M5', N'Rental', 1, N'Certified', N'Honda CX1 110cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (2, N'57L7675W6', N'Rental', 1, N'Certified', N'Honda CX1 110cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (3, N'86I2772Q2', N'Rental', 1, N'Certified', N'Honda CX1 110cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (4, N'27O8418G4', N'Rental', 1, N'Certified', N'Honda CX1 110cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (5, N'57F2828P3', N'Rental', 1, N'Certified', N'Honda CX1 110cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (6, N'72P3986C6', N'Rental', 1, N'Certified', N'Honda SL 125 cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (7, N'74U1565S7', N'Rental', 1, N'Certified', N'Honda SL 125 cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (8, N'29B4822Z5', N'Rental', 1, N'InShop', N'Honda SL 125 cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (9, N'37C5961P7', N'Rental', 1, N'Wrecked', N'Honda SL 125 cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (10, N'1P189759PF895', N'Rental', 3, N'Certified', N'Vector Raptor 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (11, N'1V139419TH217', N'Rental', 3, N'Certified', N'Vector Raptor 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (12, N'5O339331GH598', N'Rental', 3, N'Certified', N'Vector Raptor 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (13, N'4I855371YL349', N'Rental', 3, N'Certified', N'Vector SL 100cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (14, N'5P436627OW413', N'Rental', 3, N'Certified', N'Vector SL 100cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (15, N'5X116317QC659', N'Rental', 3, N'Certified', N'Vector SL 100cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (16, N'9S746432DP842', N'Rental', 3, N'Certified', N'Vector SL 100cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (17, N'1A486874PM462', N'Rental', 3, N'InShop', N'Vector SL 100cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (18, N'9183361398KY9', N'Rental', 3, N'InShop', N'Pro Racer 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (19, N'3945636259TK3', N'Rental', 3, N'Certified', N'Pro Racer 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (20, N'5949295864MY6', N'Rental', 3, N'Certified', N'Pro Racer 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (21, N'8675556753RF6', N'Rental', 3, N'Certified', N'Pro Racer 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (22, N'I542RQY2', N'Rental', 3, N'Certified', N'Ratox Gladiator 80cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (23, N'X714WIT7', N'Rental', 3, N'Certified', N'Ratox Gladiator 80cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (24, N'Z138CXK9', N'Rental', 3, N'Certified', N'Ratox Gladiator 80cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (25, N'R412VGO6', N'Rental', 5, N'Certified', N'Ratox Speed 100 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (26, N'E812SZO3', N'Rental', 5, N'Certified', N'Ratox Speed 100 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (27, N'X928DXN6', N'Rental', 5, N'Certified', N'Ratox Speed 100 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (28, N'H297WOS1', N'Rental', 5, N'Certified', N'Ratox Speed 100 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (29, N'K982YVX3', N'Rental', 5, N'Certified', N'Ratox Speed 100 125cc', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (30, N'57J1623E6', N'Rental', 5, N'Certified', N'Honda 105', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (31, N'18W1117M1', N'Rental', 5, N'Certified', N'Honda 105', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (32, N'41T9457I9', N'Rental', 5, N'Certified', N'Honda 105', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (33, N'53B9176M6', N'Rental', 5, N'InShop', N'Honda 105', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (34, N'68H9536U3', N'Rental', 5, N'Certified', N'Honda 105', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (35, N'4242386772SK6', N'Rental', 5, N'Certified', N'Suziuk 110', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (36, N'4849257972EL5', N'Rental', 5, N'Certified', N'Suziuk 110', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (37, N'6817391593VM2', N'Rental', 5, N'Wrecked', N'Suziuk 110', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (38, N'8518275939SH6', N'Rental', 5, N'InShop', N'Suziuk 110', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (39, N'6684849364UQ9', N'Rental', 5, N'Certified', N'Suziuk 110', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (40, N'3744982636FS8', N'Rental', 6, N'Certified', N'Suziuk 120', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (41, N'5274318281TH2', N'Rental', 6, N'Certified', N'Suziuk 120', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (42, N'4V241273WJ833', N'Rental', 6, N'Certified', N'Vector 45', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (43, N'5L286876SB419', N'Rental', 6, N'Certified', N'Vector 45', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (44, N'2U537682RL872', N'Rental', 6, N'Certified', N'Vector 45', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (45, N'8L196664GU634', N'Rental', 6, N'InShop', N'Vector 45', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (46, N'8D754315HZ315', N'Rental', 6, N'InShop', N'Vector 45', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (47, N'8U721231TI683', N'Rental', 6, N'Wrecked', N'Vector 45', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (48, N'3T899433IH586', N'Rental', 6, N'Certified', N'Vector 45', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (49, N'1C536874ER429', N'Rental', 6, N'Certified', N'Vector 45', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (50, N'82L5146G4', N'Rental', 8, N'Certified', N'Honda BearPaw', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (51, N'35B1725S7', N'Rental', 8, N'Certified', N'Honda BearPaw', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (52, N'58W3528Z7', N'Rental', 8, N'Certified', N'Honda BearPaw', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (53, N'17F8193Z1', N'Rental', 8, N'Certified', N'Honda BearPaw', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (54, N'P636SNK6', N'Rental', 8, N'Certified', N'Ratox 602', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (55, N'W659NEV9', N'Rental', 8, N'Certified', N'Ratox 602', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (56, N'D524LSW1', N'Rental', 8, N'Certified', N'Ratox 602', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (57, N'T976GBB3', N'Rental', 8, N'Certified', N'Ratox 604', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (58, N'S717XIG5', N'Rental', 8, N'Certified', N'Ratox 604', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [SerialNumber], [Ownership], [CarClassID], [State], [Description], [MemberID]) VALUES (59, N'U851TNR6', N'Rental', 8, N'Certified', N'Ratox 604', NULL)
GO
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO

SET IDENTITY_INSERT [dbo].[Invoices] ON 
GO
--race 2568
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4316, CAST(N'2019-07-11T00:00:00.000' AS DateTime), 7, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4317, CAST(N'2019-07-11T00:00:00.000' AS DateTime), 7, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4333, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4350, CAST(N'2019-07-14T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4366, CAST(N'2019-07-16T00:00:00.000' AS DateTime), 8, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4370, CAST(N'2019-07-16T00:00:00.000' AS DateTime), 8, 60.00, 3.00)
GO

--race 2569
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4386, CAST(N'2019-07-19T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4404, CAST(N'2019-07-20T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4405, CAST(N'2019-07-20T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4411, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4425, CAST(N'2019-07-22T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4765, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
--race 2570
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4319, CAST(N'2019-07-11T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4321, CAST(N'2019-07-11T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4331, CAST(N'2019-07-11T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4336, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4341, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4351, CAST(N'2019-07-14T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4402, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 7, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4413, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 7, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4417, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4435, CAST(N'2019-07-24T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
--race 2571
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4769, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4472, CAST(N'2019-08-02T00:00:00.000' AS DateTime), 9, 60.00, 3.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4801, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4804, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4805, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4810, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4813, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4814, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4820, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4828, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
--race 2572
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4315, CAST(N'2019-07-11T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4324, CAST(N'2019-07-11T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4334, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4335, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4342, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4344, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4357, CAST(N'2019-07-14T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4362, CAST(N'2019-07-16T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4374, CAST(N'2019-07-17T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4376, CAST(N'2019-07-17T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
--race 2573
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4352, CAST(N'2019-07-14T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4378, CAST(N'2019-07-18T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4390, CAST(N'2019-07-20T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4392, CAST(N'2019-07-20T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4396, CAST(N'2019-07-20T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4397, CAST(N'2019-07-20T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4414, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4418, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4422, CAST(N'2019-07-22T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4423, CAST(N'2019-07-22T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
--race 2574
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4326, CAST(N'2019-07-11T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4327, CAST(N'2019-07-11T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4332, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4338, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4340, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4347, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4348, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4349, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4356, CAST(N'2019-07-14T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4360, CAST(N'2019-07-14T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
--race 2575
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4358, CAST(N'2019-07-14T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4363, CAST(N'2019-07-16T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4364, CAST(N'2019-07-16T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4381, CAST(N'2019-07-18T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4394, CAST(N'2019-07-20T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4408, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4409, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4428, CAST(N'2019-07-23T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4436, CAST(N'2019-07-24T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4440, CAST(N'2019-07-24T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
--race 2576
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4421, CAST(N'2019-07-22T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4430, CAST(N'2019-07-23T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4431, CAST(N'2019-07-23T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4438, CAST(N'2019-07-24T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4441, CAST(N'2019-07-24T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4457, CAST(N'2019-08-01T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4458, CAST(N'2019-08-01T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4467, CAST(N'2019-08-02T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4468, CAST(N'2019-08-02T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4473, CAST(N'2019-08-03T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
--race 2577
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4359, CAST(N'2019-07-14T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4380, CAST(N'2019-07-18T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4383, CAST(N'2019-07-18T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4387, CAST(N'2019-07-19T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4388, CAST(N'2019-07-19T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4403, CAST(N'2019-08-20T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4452, CAST(N'2019-08-27T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4455, CAST(N'2019-08-27T00:00:00.000' AS DateTime), 7, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4460, CAST(N'2019-08-01T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4463, CAST(N'2019-08-01T00:00:00.000' AS DateTime), 9, 115.00, 5.75)
GO
--race 2578
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4920, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4921, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4932, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4935, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4945, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4952, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4955, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4960, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4963, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4970, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
--race 2579
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4947, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4948, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4958, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4969, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4977, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4978, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4982, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4983, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4990, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4992, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
--race 2580
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5004, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5009, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5010, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5011, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5014, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5019, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5021, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5023, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5024, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5028, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
--race 2581
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5051, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5054, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5059, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5060, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5062, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5070, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5074, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5075, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5080, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5081, CAST(N'2019-09-01T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
--race 2584
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5094, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5095, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5098, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5102, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5106, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5107, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5110, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5113, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5115, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5116, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
--race 2585
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5138, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5140, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5143, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5144, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5148, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5150, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5153, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5154, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5157, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5160, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
--race 2586
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5162, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5163, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5165, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5168, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5169, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5171, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5173, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5177, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5178, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5180, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
--race 2587
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5181, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5184, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5186, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5187, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5190, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5192, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5193, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5195, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 7, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5197, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5198, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 9, 19.95, 1.00)
GO
--race 2590
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4841, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4848, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4849, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4860, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4871, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4882, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 14.95, 0.75)
GO
--next week
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5250, CAST(N'2019-09-04T00:00:00.000' AS DateTime), 9, 10.00, 0.50)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5251, CAST(N'2019-09-04T00:00:00.000' AS DateTime), 9, 10.00, 0.50)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5252, CAST(N'2019-09-04T00:00:00.000' AS DateTime), 9, 10.00, 0.50)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5253, CAST(N'2019-09-04T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5254, CAST(N'2019-09-04T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5255, CAST(N'2019-09-04T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5256, CAST(N'2019-09-05T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5257, CAST(N'2019-09-05T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5258, CAST(N'2019-09-05T00:00:00.000' AS DateTime), 9, 10.00, 0.50)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5259, CAST(N'2019-09-06T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5260, CAST(N'2019-09-06T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5261, CAST(N'2019-09-06T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5263, CAST(N'2019-09-06T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5264, CAST(N'2019-09-06T00:00:00.000' AS DateTime), 9, 10.00, 0.50)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5265, CAST(N'2019-09-06T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5266, CAST(N'2019-09-07T00:00:00.000' AS DateTime), 9, 10.00, 0.50)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5267, CAST(N'2019-09-07T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5268, CAST(N'2019-09-07T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5269, CAST(N'2019-09-07T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (5270, CAST(N'2019-09-07T00:00:00.000' AS DateTime), 9, 15.00, 0.75)
GO
--shop sales
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4775,  CAST(N'2019-08-31T00:00:00.000' AS DateTime), 7, 130.2600, 7.8200)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4776, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 8.9500, 0.5400)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4777, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 709.7000, 45.3000)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4778, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 728.5000, 46.5000)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4779,  CAST(N'2019-08-31T00:00:00.000' AS DateTime), 7, 3.28, 0.17)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4780, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 12.53, 0.63)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4781, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 96.94, 4.85)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [InvoiceDate], [EmployeeID], [SubTotal], [GST]) VALUES (4782, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 9, 9.45, 0.47)
GO

SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceDetails] ON 
GO
--match shop sale invoices
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (44, 4775, 34, 1, 42.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (45, 4775, 45, 3, 1.9900)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (46, 4775, 47, 1, 1.2900)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (47, 4775, 64, 1, 37.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (48, 4775, 65, 2, 22.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (49, 4776, 39, 1, 1.9900)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (50, 4776, 44, 1, 1.9900)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (51, 4776, 45, 1, 1.9900)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (52, 4776, 57, 2, 1.4900)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (53, 4777, 1, 1, 245.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (54, 4777, 2, 2, 255.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (55, 4778, 1, 1, 245.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (56, 4778, 2, 1, 255.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (57, 4778, 3, 1, 275.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (59, 4779, 37, 1, 1.29)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (60, 4779, 49, 1, 1.99)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (61, 4780, 45, 3, 1.99)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (62, 4780, 37, 1, 1.29)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (63, 4781, 42, 2, 1.99)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (64, 4781, 47, 1, 1.99)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (65, 4781, 50, 1, 1.99)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (66, 4781, 63, 2, 3.99)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (67, 4781, 64, 1, 37.00)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (68, 4781, 65, 2, 22.00)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (69, 4782, 42, 2, 1.99)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (70, 4782, 45, 2, 1.99)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailID], [InvoiceID], [ProductID], [Quantity], [Price]) VALUES (71, 4782, 59, 1, 1.49)
GO
SET IDENTITY_INSERT [dbo].[InvoiceDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNumber], [OrderDate], [EmployeeID], [TaxGST], [SubTotal], [VendorID], [Closed], [Comment]) 
VALUES (733, 697, CAST(N'2019-06-04T00:00:00.000' AS DateTime), 20, 73.6100, 1472.2000, 4, 1, NULL)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNumber], [OrderDate], [EmployeeID], [TaxGST], [SubTotal], [VendorID], [Closed], [Comment]) 
VALUES (734, 698, CAST(N'2019-06-05T00:00:00.000' AS DateTime), 49, 63.2700, 1265.3000, 8, 1, NULL)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNumber], [OrderDate], [EmployeeID], [TaxGST], [SubTotal], [VendorID], [Closed], [Comment]) 
VALUES (758, 713, CAST(N'2019-08-02T00:00:00.000' AS DateTime), 49, 22.1600, 443.2500, 5, 1, NULL)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNumber], [OrderDate], [EmployeeID], [TaxGST], [SubTotal], [VendorID], [Closed], [Comment]) 
VALUES (759, 714, CAST(N'2019-08-02T00:00:00.000' AS DateTime), 37, 65.7500, 1314.9000, 6, 1, NULL)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNumber], [OrderDate], [EmployeeID], [TaxGST], [SubTotal], [VendorID], [Closed], [Comment]) 
VALUES (771, 721, CAST(N'2019-08-24T00:00:00.000' AS DateTime), 20, 52.8500, 1056.9200, 8, 0, NULL)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNumber], [OrderDate], [EmployeeID], [TaxGST], [SubTotal], [VendorID], [Closed], [Comment]) 
VALUES (773, 722, CAST(N'2019-08-24T00:00:00.000' AS DateTime), 20, 27.2000, 544.0500, 9, 0, NULL)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNumber], [OrderDate], [EmployeeID], [TaxGST], [SubTotal], [VendorID], [Closed], [Comment]) 
VALUES (774, NULL, NULL, 20, 5.5900, 111.7800, 8, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[OrderDetails] ON
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (5995, 733, 3, 3, 1, 196.2000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (5996, 733, 4, 2, 1, 210.3000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (5997, 733, 31, 12, 1, 28.9500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (5998, 733, 33, 4, 1, 28.9500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (5999, 734, 37, 2, 20, 16.5000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6000, 734, 38, 3, 20, 26.2500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6001, 734, 39, 3, 20, 26.2500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6002, 734, 40, 3, 20, 26.2500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6003, 734, 41, 8, 10, 13.2000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6004, 734, 42, 12, 10, 14.1000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6005, 734, 45, 240, 1, 0.9500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6006, 734, 46, 240, 1, 0.9500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6007, 734, 54, 4, 20, 26.7500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6008, 734, 57, 6, 20, 17.2500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6009, 734, 58, 3, 20, 18.2500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6215, 758, 17, 2, 1, 82.2000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6216, 758, 24, 3, 1, 52.9900)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6217, 758, 27, 12, 1, 9.9900)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6218, 759, 28, 5, 1, 159.9900)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6219, 759, 29, 5, 1, 102.9900)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6298, 771, 64, 1, 10, 279.9900)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6300, 771, 65, 4, 10, 179.9900)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6301, 771, 51, 3, 10, 18.9900)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6305, 773, 37, 2, 20, 16.5000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6306, 773, 38, 3, 20, 26.2500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6307, 773, 39, 3, 20, 26.2500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6308, 773, 40, 3, 20, 26.2500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6309, 773, 41, 8, 10, 13.2000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6310, 773, 42, 12, 10, 14.1000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6311, 774, 52, 2, 20, 17.9900)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6312, 774, 53, 4, 8, 14.2000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [OrderUnitSize], [Cost]) VALUES (6313, 774, 56, 1, 20, 19.0000)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ReceiveOrders] ON
GO
INSERT [dbo].[ReceiveOrders] ([ReceiveOrderID], [OrderID], [ReceiveDate], [EmployeeID]) VALUES (824, 771, CAST(N'2019-08-26T00:00:00.000' AS DateTime), 56)
GO
INSERT [dbo].[ReceiveOrders] ([ReceiveOrderID], [OrderID], [ReceiveDate], [EmployeeID]) VALUES (825, 773, CAST(N'2019-08-27T00:00:00.000' AS DateTime), 56)
GO
SET IDENTITY_INSERT [dbo].[ReceiveOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[ReceiveOrderItems] ON
GO
INSERT [dbo].[ReceiveOrderItems] ([ReceiveOrderItemID],[ReceiveOrderID], [OrderDetailID], [ItemQuantity]) VALUES (7210, 824, 6298, 10)
GO
INSERT [dbo].[ReceiveOrderItems] ([ReceiveOrderItemID],[ReceiveOrderID], [OrderDetailID], [ItemQuantity]) VALUES (7211, 824, 6300, 30)
GO
INSERT [dbo].[ReceiveOrderItems] ([ReceiveOrderItemID],[ReceiveOrderID], [OrderDetailID], [ItemQuantity]) VALUES (7212, 825, 6305, 40)
GO
INSERT [dbo].[ReceiveOrderItems] ([ReceiveOrderItemID],[ReceiveOrderID], [OrderDetailID], [ItemQuantity]) VALUES (7213, 825, 6308, 60)
GO
INSERT [dbo].[ReceiveOrderItems] ([ReceiveOrderItemID],[ReceiveOrderID], [OrderDetailID], [ItemQuantity]) VALUES (7214, 825, 6309, 80)
GO
INSERT [dbo].[ReceiveOrderItems] ([ReceiveOrderItemID],[ReceiveOrderID], [OrderDetailID], [ItemQuantity]) VALUES (7215, 825, 6310, 120)
GO

SET IDENTITY_INSERT [dbo].[ReceiveOrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[ReturnOrderItems] ON
GO
INSERT [dbo].[ReturnOrderItems] ([ReturnOrderItemID],[ReceiveOrderID], [OrderDetailID], [UnOrderedItem], [ItemQuantity], [Comment], [VendorProductID]) VALUES (210, 824, 6300, NULL, 10, N'Damaged', NULL)
GO
SET IDENTITY_INSERT [dbo].[ReturnOrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[RacePenalties] ON
GO
INSERT [dbo].[RacePenalties] ([PenaltyID], [Description]) VALUES (1, N'Mechanical')
GO
INSERT [dbo].[RacePenalties] ([PenaltyID], [Description]) VALUES (2, N'Crash')
GO
INSERT [dbo].[RacePenalties] ([PenaltyID], [Description]) VALUES (3, N'Disqualified')
GO
INSERT [dbo].[RacePenalties] ([PenaltyID], [Description]) VALUES (4, N'Scratched')
GO
SET IDENTITY_INSERT [dbo].[RacePenalties] OFF
GO

SET IDENTITY_INSERT [dbo].[Races] ON
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2568, CAST(N'2019-08-31T10:00:00.000' AS DateTime), 6, 15, N'Y', N'Novice Youth', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2569, CAST(N'2019-08-31T11:00:00.000' AS DateTime), 6, 15, N'Y', N'Novice Youth', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2570, CAST(N'2019-08-31T13:00:00.000' AS DateTime), 10, 20, N'Y', N'Novice Junior', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2571, CAST(N'2019-08-31T14:00:00.000' AS DateTime), 10, 20, N'Y', N'Novice Junior Requalifier', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2572, CAST(N'2019-08-31T15:00:00.000' AS DateTime), 10, 20, N'Y', N'Open', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2573, CAST(N'2019-08-31T16:00:00.000' AS DateTime), 10, 20, N'Y', N'Open', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2574, CAST(N'2019-08-31T17:00:00.000' AS DateTime), 10, 20, N'Y', N'Open', N'B')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2575, CAST(N'2019-08-31T18:00:00.000' AS DateTime), 10, 20, N'Y', N'Open', N'B')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2576, CAST(N'2019-09-01T12:00:00.000' AS DateTime), 10, 20, N'Y', N'Open', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2577, CAST(N'2019-09-01T15:00:00.000' AS DateTime), 10, 20, N'Y', N'Open', N'B')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2578, CAST(N'2019-09-01T13:00:00.000' AS DateTime), 10, 20, N'Y', N'Open Requalifier', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2579, CAST(N'2019-09-01T14:00:00.000' AS DateTime), 10, 20, N'Y', N'Open Requalifier', N'B')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2580, CAST(N'2019-09-01T16:00:00.000' AS DateTime), 10, 20, N'Y', N'Open Requalifier', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2581, CAST(N'2019-09-01T17:00:00.000' AS DateTime), 10, 20, N'Y', N'Open Requalifier', N'B')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2582, CAST(N'2019-09-02T10:00:00.000' AS DateTime), 6, 20, N'Y', N'Finals Youth', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2583, CAST(N'2019-09-02T11:00:00.000' AS DateTime), 10, 20, N'Y', N'Finals Juniors', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2584, CAST(N'2019-09-02T12:00:00.000' AS DateTime), 10, 20, N'Y', N'Semis', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2585, CAST(N'2019-09-02T13:00:00.000' AS DateTime), 10, 20, N'Y', N'Semis', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2586, CAST(N'2019-09-02T14:00:00.000' AS DateTime), 10, 20, N'Y', N'Semis', N'B')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2587, CAST(N'2019-09-02T15:00:00.000' AS DateTime), 10, 20, N'Y', N'Semis', N'B')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2588, CAST(N'2019-09-02T16:00:00.000' AS DateTime), 10, 20, N'Y', N'Finals', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2589, CAST(N'2019-09-02T17:00:00.000' AS DateTime), 10, 20, N'Y', N'Finals', N'B')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2590, CAST(N'2019-09-01T11:00:00.000' AS DateTime), 6, 15, N'Y', N'Novice Youth, Requalifier', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2591, CAST(N'2019-09-07T11:00:00.000' AS DateTime), 6, 15, N'Y', N'Novice Youth', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2592, CAST(N'2019-09-07T12:00:00.000' AS DateTime), 6, 15, N'Y', N'Novice Youth', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2593, CAST(N'2019-09-07T13:00:00.000' AS DateTime), 10, 20, N'Y', N'Novice Junior', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2594, CAST(N'2019-09-07T14:00:00.000' AS DateTime), 10, 20, N'Y', N'Novice Junior', N'D')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2595, CAST(N'2019-09-07T15:00:00.000' AS DateTime), 10, 20, N'Y', N'Minimum C', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2596, CAST(N'2019-09-07T16:00:00.000' AS DateTime), 10, 20, N'Y', N'Minimum C', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2597, CAST(N'2019-09-07T17:00:00.000' AS DateTime), 10, 20, N'Y', N'Minimum C', N'C')
GO
INSERT [dbo].[Races] ([RaceID],[RaceDate], [NumberOfCars], [Laps], [Run], [Comment], [CertificationLevel]) VALUES (2598, CAST(N'2019-09-07T18:00:00.000' AS DateTime), 10, 20, N'Y', N'Minimum C', N'C')
GO
SET IDENTITY_INSERT [dbo].[Races] OFF
GO
SET IDENTITY_INSERT [dbo].[RaceDetails] ON
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13568, 2568, 43, 83, 3, CAST(N'00:37:34' as time), NULL, NULL, 4316, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13569, 2568, 40, 69, 2, CAST(N'00:36:32' as time), NULL, NULL, 4317, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13570, 2568, 48, 15, 4, CAST(N'00:38:39' as time), NULL, NULL, 4333, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13571, 2568, 42, 67, 1, CAST(N'00:34:34' as time), NULL, NULL, 4350, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13572, 2568, 41, 16, 5, CAST(N'00:41:35' as time), NULL, NULL, 4366, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13573, 2568, 44, 68, 6, CAST(N'00:42:45' as time), NULL, NULL, 4370, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13574, 2569, 41, 52, 2, CAST(N'00:35:45' as time), NULL, NULL, 4386, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13575, 2569, 42, 14, 5, CAST(N'00:42:33' as time), NULL, NULL, 4404, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13576, 2569, 48, 88, 6, CAST(N'00:45:32' as time), NULL, NULL, 4405, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13577, 2569, 43, 4, 1, CAST(N'00:34:35' as time), NULL, NULL, 4411, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13578, 2569, 49, 20, 4, CAST(N'00:38:43' as time), NULL, NULL, 4425, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13579, 2569, 40, 68, 3, CAST(N'00:37:44' as time), NULL, NULL, 4765, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13580, 2570, 58, 12, 4, CAST(N'00:27:40' as time), NULL, NULL, 4319, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13581, 2570, 52, 70, 6, CAST(N'00:31:32' as time), NULL, NULL, 4321, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13582, 2570, 55, 34, 10, CAST(N'00:35:31' as time), NULL, NULL, 4331, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13583, 2570, 56, 48, 3, CAST(N'00:27:38' as time), NULL, NULL, 4336, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13584, 2570, 59, 100, 1, CAST(N'00:25:27' as time), NULL, NULL, 4341, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13585, 2570, 51, 59, 5, CAST(N'00:29:26' as time), NULL, NULL, 4351, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13586, 2570, 57, 76, 7, CAST(N'00:32:30' as time), NULL, NULL, 4402, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13587, 2570, 53, 84, 9, CAST(N'00:34:35' as time), NULL, NULL, 4413, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13588, 2570, 54, 31, 2, CAST(N'00:26:25' as time), NULL, NULL, 4417, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13589, 2570, 50, 21, 8, CAST(N'00:33:31' as time), NULL, NULL, 4435, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13590, 2571, 55, 12, 5, CAST(N'00:27:35' as time), NULL, NULL, 4769, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13591, 2571, 51, 70, 10, CAST(N'00:35:34' as time), NULL, NULL, 4472, 50.00, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13592, 2571, 54, 34, 4, CAST(N'00:27:26' as time), NULL, NULL, 4801, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13593, 2571, 59, 48, 8, CAST(N'00:31:38' as time), NULL, NULL, 4804, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13594, 2571, 52, 100, 2, CAST(N'00:26:14' as time), NULL, NULL, 4805, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13595, 2571, 58, 59, 3, CAST(N'00:26:35' as time), NULL, NULL, 4810, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13596, 2571, 50, 76, 7, CAST(N'00:30:28' as time), NULL, NULL, 4813, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13597, 2571, 53, 84, 6, CAST(N'00:28:34' as time), NULL, NULL, 4814, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13598, 2571, 57, 31, 1, CAST(N'00:25:50' as time), NULL, NULL, 4820, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13599, 2571, 56, 21, 9, CAST(N'00:31:45' as time), NULL, NULL, 4828, 4.95, 10.00, 0, null)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13600, 2572, 13, 1, 7, CAST(N'00:26:30' as time), NULL, NULL, 4315, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13601, 2572, 19, 22, 4, CAST(N'00:24:20' as time), NULL, NULL, 4324, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13602, 2572, 11, 78, 10, CAST(N'00:30:20' as time), NULL, NULL, 4334, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13603, 2572, 16, 5, 6, CAST(N'00:25:25' as time), NULL, NULL, 4335, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13604, 2572, 22, 54, 1, CAST(N'00:21:30' as time), NULL, NULL, 4342, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13605, 2572, 21, 65, 8, CAST(N'00:27:26' as time), NULL, NULL, 4344, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13606, 2572, 15, 42, 2, CAST(N'00:22:24' as time), NULL, NULL, 4357, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13607, 2572, 12, 53, 5, CAST(N'00:24:47' as time), NULL, NULL, 4362, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13608, 2572, 14, 11, 9, CAST(N'00:28:56' as time), NULL, NULL, 4374, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13609, 2572, 24, 23, 3, CAST(N'00:26:39' as time), NULL, NULL, 4376, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13610, 2573, 21, 43, 4, CAST(N'00:23:24' as time), NULL, NULL, 4352, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13611, 2573, 13, 39, NULL, NULL, 4, N'No show', 4378, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13612, 2573, 12, 36, 6, CAST(N'00:25:57' as time), NULL, NULL, 4390, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13613, 2573, 24, 85, 3, CAST(N'00:21:46' as time), NULL, NULL, 4392, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13614, 2573, 22, 47, 1, CAST(N'00:20:40' as time), NULL, NULL, 4396, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13615, 2573, 19, 98, NULL, NULL, 2, N'lap 15', 4397, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13616, 2573, 11, 99, 5, CAST(N'00:25:53' as time), NULL, NULL, 4414, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13617, 2573, 14, 95, 8, CAST(N'00:28:35' as time), NULL, N'Spinout lap 16, Recovered', 4418, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13618, 2573, 15, 30, 2, CAST(N'00:21:41' as time), NULL, NULL, 4422, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13619, 2573, 16, 63, 7, CAST(N'00:26:39' as time), NULL, NULL, 4423, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13620, 2574, 23, 10, 9, CAST(N'00:26:42' as time), NULL, NULL, 4326, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13621, 2574, 31, 86, 2, CAST(N'00:22:07' as time), NULL, NULL, 4327, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13622, 2574, 28, 2, 5, CAST(N'00:25:39' as time), NULL, NULL, 4332, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13623, 2574, 35, 33, 10, CAST(N'00:27:01' as time), NULL, NULL, 4338, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13624, 2574, 16, 62, 7, CAST(N'00:26:17' as time), NULL, NULL, 4340, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13625, 2574, 32, 29, 8, CAST(N'00:26:33' as time), NULL, NULL, 4347, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13626, 2574, 25, 66, 1, CAST(N'00:21:03' as time), NULL, NULL, 4348, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13627, 2574, 11, 6, 6, CAST(N'00:25:57' as time), NULL, NULL, 4349, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13628, 2574, 14, 93, 3, CAST(N'00:23:46' as time), NULL, NULL, 4356, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13629, 2574, 21, 75, 4, CAST(N'00:23:56' as time), NULL, NULL, 4360, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13630, 2575, 21, 77, 4, CAST(N'00:22:37' as time), NULL, NULL, 4358, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13631, 2575, 28, 82, 10, CAST(N'00:27:38' as time), NULL, NULL, 4363, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13632, 2575, 39, 94, 2, CAST(N'00:21:35' as time), NULL, NULL, 4364, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13633, 2575, 19, 44, 7, CAST(N'00:26:21' as time), NULL, NULL, 4381, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13634, 2575, 32, 45, 9, CAST(N'00:27:09' as time), NULL, NULL, 4394, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13635, 2575, 22, 57, 5, CAST(N'00:22:47' as time), NULL, NULL, 4408, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13636, 2575, 25, 37, 3, CAST(N'00:22:07' as time), NULL, NULL, 4409, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13637, 2575, 34, 9, 6, CAST(N'00:23:12' as time), NULL, NULL, 4428, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13638, 2575, 36, 80, 1, CAST(N'00:21:13' as time), NULL, NULL, 4436, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13639, 2575, 30, 18, 8, CAST(N'00:26:38' as time), NULL, NULL, 4440, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13640, 2576, 7, 13, 1, CAST(N'00:20:43' as time), NULL, NULL, 4421, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13641, 2576, 1, 28, 7, CAST(N'00:27:03' as time), NULL, NULL, 4430, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13642, 2576, 17, 35, 5, CAST(N'00:24:26' as time), NULL, NULL, 4431, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13643, 2576, 13, 41, 9, CAST(N'00:28:38' as time), NULL, N'collision', 4438, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13644, 2576, 22, 46, 3, CAST(N'00:24:03' as time), NULL, NULL, 4441, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13645, 2576, 11, 17, 8, CAST(N'00:27:30' as time), NULL, N'collision', 4457, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13646, 2576, 23, 51, NULL, NULL, 2, N'collision', 4458, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13647, 2576, 12, 73, 2, CAST(N'00:21:54' as time), NULL, NULL, 4467, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13648, 2576, 2, 61, 6, CAST(N'00:26:56' as time), NULL, NULL, 4468, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13649, 2576, 3, 91, 4, CAST(N'00:24:13' as time), NULL, NULL, 4473, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13650, 2577, 36, 49, 3, CAST(N'00:21:42' as time), NULL, NULL, 4359, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13651, 2577, 27, 32, 4, CAST(N'00:22:15' as time), NULL, NULL, 4380, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13652, 2577, 26, 97, 9, CAST(N'00:27:21' as time), NULL, NULL, 4383, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13653, 2577, 11, 19, 8, CAST(N'00:27:12' as time), NULL, NULL, 4387, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13654, 2577, 20, 50, 6, CAST(N'00:25:34' as time), NULL, NULL, 4388, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13655, 2577, 12, 92, 1, CAST(N'00:20:12' as time), NULL, NULL, 4403, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13656, 2577, 10, 64, 2, CAST(N'00:21:21' as time), NULL, NULL, 4452, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13657, 2577, 19, 71, 5, CAST(N'00:23:46' as time), NULL, NULL, 4455, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13658, 2577, 34, 55, 7, CAST(N'00:26:12' as time), NULL, NULL, 4460, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13659, 2577, 24, 38, 10, CAST(N'00:27:34' as time), NULL, NULL, 4463, 100.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13660, 2578, 16, 78, 9, CAST(N'00:30:28' as time), NULL, NULL, 4920, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13661, 2578, 15, 11, 4, CAST(N'00:23:24' as time), NULL, NULL, 4921, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13662, 2578, 13, 41, 3, CAST(N'00:21:07' as time), NULL, NULL, 4932, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13663, 2578, 10, 95, 5, CAST(N'00:26:18' as time), NULL, NULL, 4935, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13664, 2578, 24, 17, 2, CAST(N'00:20:21' as time), NULL, NULL, 4945, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13665, 2578, 11, 65, 7, CAST(N'00:27:05' as time), NULL, NULL, 4952, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13666, 2578, 22, 28, 6, CAST(N'00:26:35' as time), NULL, NULL, 4955, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13667, 2578, 20, 98, 10, CAST(N'00:30:48' as time), NULL, NULL, 4960, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13668, 2578, 23, 39, 1, CAST(N'00:20:11' as time), NULL, NULL, 4963, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13669, 2578, 14, 51, 8, CAST(N'00:28:26' as time), NULL, NULL, 4970, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13670, 2579, 19, 82, 7, CAST(N'00:26:49' as time), NULL, NULL, 4947, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13671, 2579, 14, 38, 4, CAST(N'00:23:13' as time), NULL, NULL, 4948, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13672, 2579, 31, 97, 2, CAST(N'00:21:55' as time), NULL, NULL, 4958, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13673, 2579, 25, 19, 8, CAST(N'00:24:24' as time), NULL, NULL, 4969, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13674, 2579, 36, 45, 3, CAST(N'00:22:23' as time), NULL, NULL, 4977, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13675, 2579, 32, 33, 10, CAST(N'00:29:35' as time), NULL, NULL, 4978, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13676, 2579, 29, 10, 5, CAST(N'00:24:12' as time), NULL, NULL, 4982, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13677, 2579, 22, 18, 9, CAST(N'00:28:51' as time), NULL, NULL, 4983, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13678, 2579, 16, 29, 1, CAST(N'00:21:14' as time), NULL, NULL, 4990, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13679, 2579, 21, 44, 6, CAST(N'00:25:27' as time), NULL, NULL, 4992, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13680, 2580, 12, 36, 3, CAST(N'00:24:16' as time), NULL, NULL, 5004, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13681, 2580, 21, 99, 2, CAST(N'00:23:52' as time), NULL, NULL, 5009, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13682, 2580, 13, 28, 6, CAST(N'00:27:34' as time), NULL, NULL, 5010, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13683, 2580, 24, 53, 1, CAST(N'00:20:57' as time), NULL, NULL, 5011, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13684, 2580, 15, 63, 4, CAST(N'00:24:19' as time), NULL, NULL, 5014, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13685, 2580, 16, 91, 9, CAST(N'00:28:34' as time), NULL, NULL, 5019, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13686, 2580, 22, 65, 7, CAST(N'00:27:17' as time), NULL, NULL, 5021, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13687, 2580, 11, 46, 5, CAST(N'00:26:44' as time), NULL, NULL, 5023, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13688, 2580, 19, 41, 10, CAST(N'00:29:52' as time), NULL, NULL, 5024, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13689, 2580, 10, 5, 8, CAST(N'00:28:07' as time), NULL, NULL, 5028, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13690, 2581, 16, 19, 6, CAST(N'00:26:39' as time), NULL, NULL, 5051, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13691, 2581, 12, 44, 1, CAST(N'00:20:17' as time), NULL, NULL, 5054, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13692, 2581, 25, 50, 7, CAST(N'00:27:03' as time), NULL, NULL, 5059, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13693, 2581, 24, 6, 10, CAST(N'00:30:01' as time), NULL, N'spinout - collision', 5060, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13694, 2581, 31, 18, 4, CAST(N'00:22:38' as time), NULL, NULL, 5062, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13695, 2581, 39, 10, 3, CAST(N'00:21:54' as time), NULL, NULL, 5070, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13696, 2581, 11, 33, 2, CAST(N'00:20:26' as time), NULL, NULL, 5074, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13697, 2581, 34, 38, 8, CAST(N'00:29:09' as time), NULL, N'spinout - collision', 5075, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13698, 2581, 36, 71, 5, CAST(N'00:24:32' as time), NULL, NULL, 5080, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13699, 2581, 19, 75, 9, CAST(N'00:29:54' as time), NULL, N'spinout - collision', 5081, 4.95, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13700, 2582, 40, 67, 3, CAST(N'00:37:06' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13701, 2582, 44, 43, 5, CAST(N'00:39:11' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13702, 2582, 48, 52, 6, CAST(N'00:40:56' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13703, 2582, 42, 69, 4, CAST(N'00:39:09' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13704, 2582, 41, 20, 1, CAST(N'00:35:36' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13705, 2582, 49, 68, 2, CAST(N'00:36:29' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13706, 2583, 53, 100, 10, CAST(N'00:33:45' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13707, 2583, 50, 31, 7, CAST(N'00:31:40' as time), NULL, N'spinout - collision', null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13708, 2583, 54, 59, 3, CAST(N'00:26:04' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13709, 2583, 51, 34, 8, CAST(N'00:31:51' as time), NULL, N'spinout - collision', null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13710, 2583, 56, 12, 2, CAST(N'00:25:55' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13711, 2583, 55, 48, 4, CAST(N'00:27:02' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13712, 2583, 59, 84, 5, CAST(N'00:29:20' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13713, 2583, 58, 76, 9, CAST(N'00:33:07' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13714, 2583, 52, 70, 6, CAST(N'00:31:36' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13715, 2583, 57, 21, 1, CAST(N'00:25:20' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13716, 2584, 15, 99, 2, CAST(N'00:21:16' as time), NULL, NULL, 5094, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13717, 2584, 13, 53, 1, CAST(N'00:20:09' as time), NULL,NULL, 5095, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13718, 2584, 23, 43, 8, CAST(N'00:24:08' as time), NULL, NULL, 5098, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13719, 2584, 21, 17, 6, CAST(N'00:22:38' as time), NULL, NULL, 5102, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13720, 2584, 14, 63, 5, CAST(N'00:22:26' as time), NULL, NULL, 5106, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13721, 2584, 22, 11, 3, CAST(N'00:21:57' as time), NULL, NULL, 5107, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13722, 2584, 20, 47, 7, CAST(N'00:22:48' as time), NULL, NULL, 5110, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13723, 2584, 10, 73, 10, CAST(N'00:27:07' as time), NULL, NULL, 5113, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13724, 2584, 24, 8, 9, CAST(N'00:26:08' as time), NULL, NULL, 5115, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13725, 2584, 11, 39, 4, CAST(N'00:22:03' as time), NULL, NULL, 5116, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13726, 2585, 15, 85, 2, CAST(N'00:20:37' as time), NULL, NULL, 5138, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13727, 2585, 16, 91, 3, CAST(N'00:21:38' as time), NULL,NULL, 5140, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13728, 2585, 10, 54, 1, CAST(N'00:20:26' as time), NULL, NULL, 5143, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13729, 2585, 11, 13, 5, CAST(N'00:22:59' as time), NULL, NULL, 5144, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13730, 2585, 14, 41, 4, CAST(N'00:22:23' as time), NULL, NULL, 5148, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13731, 2585, 24, 46, 10, CAST(N'00:27:25' as time), NULL, NULL, 5150, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13732, 2585, 15, 42, 6, CAST(N'00:23:23' as time), NULL, NULL, 5153, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13733, 2585, 20, 22, 8, CAST(N'00:24:13' as time), NULL, NULL, 5154, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13734, 2585, 19, 35, 7, CAST(N'00:23:29' as time), NULL, NULL, 5157, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13735, 2585, 23, 36, 9, CAST(N'00:26:15' as time), NULL, NULL, 5160, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13736, 2586, 28, 64, 1, CAST(N'00:20:22' as time), NULL, NULL, 5162, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] )
VALUES (13737, 2586, 22, 86, 8, CAST(N'00:23:40' as time), NULL,NULL, 5163, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13738, 2586, 24, 38, 5, CAST(N'00:21:34' as time), NULL, NULL, 5165, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13739, 2586, 14, 33, 6, CAST(N'00:21:51' as time), NULL, NULL, 5168, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13740, 2586, 11, 94, 7, CAST(N'00:22:05' as time), NULL, NULL, 5169, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13741, 2586, 10, 49, 3, CAST(N'00:20:35' as time), NULL, NULL, 5171, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13742, 2586, 32, 10, 2, CAST(N'00:20:27' as time), NULL, NULL, 5173, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13743, 2586, 39, 45, 10, CAST(N'00:25:14' as time), NULL, NULL, 5177, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13744, 2586, 16, 80, 4, CAST(N'00:21:13' as time), NULL, NULL, 5178, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13745, 2586, 31, 66, 9, CAST(N'00:24:57' as time), NULL, NULL, 5180, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13746, 2587, 20, 92, 8, CAST(N'00:24:59' as time), NULL, NULL, 5181, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13747, 2587, 19, 97, 5, CAST(N'00:23:09' as time), NULL,NULL, 5184, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13748, 2587, 15, 94, 7, CAST(N'00:24:22' as time), NULL, NULL, 5186, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13749, 2587, 36, 37, 6, CAST(N'00:24:06' as time), NULL, NULL, 5187, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13750, 2587, 24, 32, 2, CAST(N'00:21:03' as time), NULL, NULL, 5190, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13751, 2587, 32, 29, 4, CAST(N'00:23:06' as time), NULL, NULL, 5192, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13752, 2587, 31, 77, 3, CAST(N'00:21:41' as time), NULL, NULL, 5193, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13753, 2587, 12, 18, 10, CAST(N'00:25:51' as time), NULL, NULL, 5195, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13754, 2587, 34, 57, 9, CAST(N'00:25:46' as time), NULL, NULL, 5197, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13755, 2587, 16, 9, 1, CAST(N'00:20:42' as time), NULL, NULL, 5198, 0.00, 15.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13756, 2588, 16, 99, 10, CAST(N'00:27:48' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13757, 2588, 22, 53, 4, CAST(N'00:24:44' as time), NULL,NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13758, 2588, 14, 11, 9, CAST(N'00:26:16' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13759, 2588, 10, 63, 6, CAST(N'00:25:33' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13760, 2588, 15, 39, 2, CAST(N'00:22:48' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13761, 2588, 24, 85, 3, CAST(N'00:24:34' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13762, 2588, 19, 91, 8, CAST(N'00:26:04' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13763, 2588, 21, 54, 1, CAST(N'00:20:41' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13764, 2588, 12, 13, 7, CAST(N'00:25:58' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13765, 2588, 20, 41, 5, CAST(N'00:25:08' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13766, 2589, 24, 64, 4, CAST(N'00:21:43' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13767, 2589, 14, 38, 3, CAST(N'00:21:14' as time), NULL,NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13768, 2589, 20, 49, 2, CAST(N'00:21:08' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13769, 2589, 35, 10, 10, CAST(N'00:25:36' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13770, 2589, 39, 80, 9, CAST(N'00:24:54' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13771, 2589, 16, 33, 7, CAST(N'00:24:13' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13772, 2589, 15, 32, 6, CAST(N'00:23:43' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13773, 2589, 19, 77, 1, CAST(N'00:19:22' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13774, 2589, 31, 94, 8, CAST(N'00:24:44' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13775, 2589, 30, 9, 5, CAST(N'00:22:40' as time), NULL, NULL, null, 0.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13776, 2590, 48,88, 5, CAST(N'00:42:07' as time), NULL, NULL, 4841, 4.95, 10.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13777, 2590, 40, 14, 6, CAST(N'00:44:53' as time), NULL,'spinout', 4848, 4.95, 10.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13778, 2590, 43, 16, 4, CAST(N'00:40:40' as time), NULL, NULL, 4849, 4.95, 10.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13779, 2590, 42, 20, 1, CAST(N'00:35:20' as time), NULL, NULL, 4860, 4.95, 10.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13780, 2590, 41, 15, 3, CAST(N'00:39:26' as time), NULL, NULL, 4871, 4.95, 10.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13781, 2590, 44, 68, 2, CAST(N'00:36:03' as time), NULL, NULL, 4882, 4.95, 10.00, 0, NULL)
GO
--next week
--youth
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13782, 2591, null, 88, null, null, NULL, NULL, 5250, 10.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13797, 2591, null, 14, null, null, NULL, null, 5266, 10.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13783, 2592, null, 16, null, null, NULL, NULL, 5251, 10.00, 0.00, 0, NULL)
GO
--junior
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13784, 2593, null, 76, null, null, NULL, NULL, 5252, 10.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13790, 2593, null, 70, null, null, NULL, NULL, 5258, 10.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13795, 2593, null, 21, null, null, NULL, NULL, 5264, 10.00, 0.00, 0, NULL)
GO
--b/c/a open
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13785, 2595, null, 99, null, null, NULL, NULL, 5253, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13786, 2595, null, 53, null, null, NULL,NULL, 5254, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13787, 2595, null, 11, null, null, NULL, NULL, 5255, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13788, 2595, null, 63, null, null, NULL, NULL, 5256, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13793, 2595, null, 77, null, null, NULL, NULL, 5261, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13794, 2595, null, 94, null, null, NULL, NULL, 5263, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13796, 2595, null, 9, null, null, NULL, NULL, 5265, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13799, 2595, null, 13, null, null, NULL, NULL, 5268, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13800, 2595, null, 41, null, null, NULL, NULL, 5269, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13801, 2595, null, 64, null, null, NULL, NULL, 5270, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13789, 2596, null, 97, null, null, NULL,NULL, 5257, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13791, 2596, null, 94, null, null, NULL, NULL, 5259, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13792, 2596, null, 37, null, null, NULL, NULL, 5260, 15.00, 0.00, 0, NULL)
GO
INSERT [dbo].[RaceDetails] ([RaceDetailID], [RaceID],[CarID], [MemberID], [Place], [RunTime], [PenaltyID], [Comment], [InvoiceID], [RaceFee], [RentalFee], [Refund], [RefundReason] ) 
VALUES (13798, 2596, null, 32, null, null, NULL, NULL, 5267, 15.00, 0.00, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[RaceDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[RaceFees] ON
GO
INSERT [dbo].[RaceFees] ([RaceFeeID], [Description],[Fee]) VALUES (1,'Youth standard',8.95)
GO
INSERT [dbo].[RaceFees] ([RaceFeeID], [Description],[Fee]) VALUES (2,'Junior standard',8.95)
GO
INSERT [dbo].[RaceFees] ([RaceFeeID], [Description],[Fee]) VALUES (3,'Adult standard',11.95)
GO
INSERT [dbo].[RaceFees] ([RaceFeeID], [Description],[Fee]) VALUES (4,'Canada Day Rally',100.00)
GO
INSERT [dbo].[RaceFees] ([RaceFeeID], [Description],[Fee]) VALUES (5,'Labor Day Rally',100.00)
GO
INSERT [dbo].[RaceFees] ([RaceFeeID], [Description],[Fee]) VALUES (6,'Re-Qualifier',4.95)
GO
SET IDENTITY_INSERT [dbo].[RaceFees] OFF
GO
