SET IDENTITY_INSERT tblUser ON
Merge into tblUser As Target 
Using (VALUES
        (0, 'Bennett','bennett@gmail.com',null, '123' ),
        (1, 'Ruth','ruth@gmail.com',null, '123')

        )
        AS SOURCE(UserID, UserName, UserEmail, UserImage, UserPassword)
        ON Target.UserID = Source.UserID
        WHEN NOT MATCHED BY Target Then 
        INSERT(UserID, UserName, UserEmail, UserImage, UserPassword)
        Values(UserID, UserName, UserEmail, UserImage, UserPassword);
SET IDENTITY_INSERT tblUser OFF

Merge into tblCategory As Target 
Using (VALUES
        (1,'Mechanical'),
        (2,'Electrical'),
        (3,'Stationary'),
        (4,'Furniture')
        )
        AS SOURCE(CategoryID, CategoryName)
        ON Target.CategoryID = Source.CategoryID
        WHEN NOT MATCHED BY Target Then 
        INSERT(CategoryID, CategoryName)
        Values(CategoryID, CategoryName);

        
Merge into tblSubCategory As Target 
Using (VALUES
        (1, 1, 'Fans'),
        (2, 1, 'Toasters'),
        (3, 1, 'Vacumes'),
        (4, 2, 'Power Adapter'),
        (5, 2, 'Extension cord'),
        (6, 3, 'Cupboard'),
        (7, 3, 'Toilet'),
        (8, 4, 'Chair'),
        (9, 4, 'Bed'),
        (10, 4, 'Couch')
        )
        AS SOURCE(SubCategoryID, CategoryID, CategoryName)
        ON Target.SubCategoryID = Source.SubCategoryID
        WHEN NOT MATCHED BY Target Then 
        INSERT(SubCategoryID, CategoryID,CategoryName)
        Values(SubCategoryID, CategoryID, CategoryName);

Merge into tblManufacturer As Target 
Using (VALUES
        (1, 'Ametek', 0),
        (2, 'Betco', 1),
        (3, 'Bromwell', 0),
        (4, 'Big Ass', 0),
        (5, 'Rhino', 1)
        )
        AS SOURCE(ManufacturerID, ManufacturerName, UserID)
        ON Target.ManufacturerID = Source.ManufacturerID
        WHEN NOT MATCHED BY Target Then 
        INSERT(ManufacturerID, ManufacturerName, UserID)
        Values(ManufacturerID, ManufacturerName, UserID);

Merge into tblProduct As Target 
Using (VALUES 
        (1, 1, 1, 'Bakugo','Fans/Fan1.jpeg', 'Haiku H', 'F853-RW', 2005),
        (2, 2, 1, 'Midoriya','Fans/Fan2.jpeg', 'Luray Eco', 'CF118', 2001),
        (3, 2, 1, 'Tenacity','Fans/Fan3.jpeg', 'Aviation', 'RS213', 2020),
        (4, 3, 1, 'Spinnus','Fans/Fan4.jpeg', 'Aviation', 'CC105', 2015),
        (5, 4, 1, 'Rotator','Fans/Fan5.jpeg', 'Luray', 'TS103', 2017),
        (6, 5, 2, 'Lotus','Toasters/Toaster1.jpeg', 'Luray Eco', 'MODELS', 1998),
        (7, 5, 2, 'Dragonfly','Toasters/Toaster2.jpeg', 'Haiku', 'DS875', 2003),
        (8, 1, 2, 'Butterfly','Toasters/Toaster3.jpeg', 'Luray Eco', 'DS654', 2005),
        (9, 3, 2, 'Jade','Toasters/Toaster3.jpeg', 'Haiku', 'TP987', 2021),
        (10, 5, 2, 'Langus','Toasters/Toaster5.png', 'Aviation', 'ZX987', 2021),
        (11, 1, 3, 'Spiff','Vacuums/vacuuum1.jpeg', 'Aviation', 'VF648', 2018),
        (12, 4, 3, 'Spotty','Vacuums/Vacuum2.jpeg', 'Aviation', 'CD451', 2000),
        (13, 4, 3, 'Suction 3k','Vacuums/vacuum3.png', 'Haiku', 'A-FA0DS', 1999),
        (14, 2, 3, 'Floor Scraper','Vacuums/Vacuum4.jpeg', 'Luray Eco', 'VB-SDA', 1997),
        (15, 3, 3, 'Dual Carpet/hardwood','Vacuums/Vacuum5.jpeg', 'Haiku', 'LK202', 2000)
        )
        AS SOURCE(ProductID, ManufacturerID, SubCategoryID, ProductName, ProductImage, Series, Model, ModelYear)
        ON Target.ProductID = Source.ProductID
        WHEN NOT MATCHED BY Target Then 
        INSERT(ProductID, ManufacturerID, SubCategoryID, ProductName, ProductImage, Series, Model, ModelYear)
        Values(ProductID, ManufacturerID, SubCategoryID, ProductName, ProductImage, Series, Model, ModelYear);

Merge into tblProperty As Target 
Using (VALUES
        (1, 'Airflow(CFM)', 0, 1), 
        (2, 'Power(W)', 0, 1), 
        (3, 'Operating Voltage(VAC)', 0, 1),
        (4, 'Fan (Speed RPM)', 0, 1),
        (5, 'Number of fan speeds', 0, 1),
        (6, 'Sound at max speed (dBA)', 0, 1 ),
        (7, 'Fan sweep diameter(in)', 0, 1 ),
        (8, 'Height(in)', 0, 1),
        (9, 'Weight (lbs)', 0, 1),

        (10, 'Use Type', 1, 0 ),
        (11, 'Application', 1, 0 ),
        (12, 'Mounting Location', 1, 0 ),
        (13, 'Accessories', 1, 0 ),
        (14, 'Model Year', 1, 0)

        )
        AS SOURCE(PropertyID, PropertyName, IsType, IsTechSpec)
        ON Target.PropertyID = Source.PropertyID
        WHEN NOT MATCHED BY Target Then 
        INSERT(PropertyID, PropertyName, IsType, IsTechSpec)
        Values(PropertyID, PropertyName, IsType, IsTechSpec);

Merge into tblPropertyValue As Target 
Using (VALUES
        (1, 1, '5467'),
        (2, 1, '21'),
        (3, 1, '240'),
        (4, 1, '200'),
        (5, 1, '7'),
        (6, 1, '35'),
        (7, 1, '60'),
        (8, 1, '57'),
        (9, 1, '13'),

        (10, 1, 'Commercial'),
        (11, 1, 'Indoor'),
        (12, 1, 'Roof'),
        (13, 1, 'With Light'),

        (1, 2, '5260'),
        (2, 2, '20'),
        (3, 2, '240'),
        (4, 2, '210'),
        (5, 2, '8'),
        (6, 2, '25'),
        (7, 2, '55'),
        (8, 2, '58'),
        (9, 2, '14'),

        (10, 2, 'Commercial'),
        (11, 2, 'Indoor'),
        (12, 2, 'Roof'),
        (13, 2, 'With Light'),

        (1, 3, '5167'),
        (2, 3, '23'),
        (3, 3, '240'),
        (4, 3, '200'),
        (5, 3, '7'),
        (6, 3, '30'),
        (7, 3, '60'),
        (8, 3, '50'),
        (9, 3, '11'),

        (10, 3, 'Commercial'),
        (11, 3, 'Indoor'),
        (12, 3, 'Roof'),
        (13, 3, 'With Light'),

        (1, 4, '5310'),
        (2, 4, '19'),
        (3, 4, '240'),
        (4, 4, '205'),
        (5, 4, '10'),
        (6, 4, '25'),
        (7, 4, '53'),
        (8, 4, '47'),
        (9, 4, '10'),

        (10, 4, 'Commercial'),
        (11, 4, 'Indoor'),
        (12, 4, 'Roof'),
        (13, 4, 'With Light'),

        (1, 5, '5035'),
        (2, 5, '25'),
        (3, 5, '110'),
        (4, 5, '208'),
        (5, 5, '4'),
        (6, 5, '30'),
        (7, 5, '44'),
        (8, 5, '48'),
        (9, 5, '8'),

        (10, 5, 'Commercial'),
        (11, 5, 'Indoor'),
        (12, 5, 'Roof'),
        (13, 5, 'With Light'),

        (2, 6, '30'),
        (3, 6, '240'),
        (8, 6, '5'),
        (9, 6, '4'),
        (10, 6, 'Commercial'),
        (11, 6, 'Kitchen'),



        (2, 7, '21'),
        (3, 7, '240'),
        (8, 7, '10'),
        (9, 7, '8'),
        (10, 7, 'Commercial'),
        (11, 7, 'Kitchen'),


        (2, 8, '24'),
        (3, 8, '110'),
        (8, 8, '5'),
        (9, 8, '5'),
        (10, 8, 'Commercial'),
        (11, 8, 'Kitchen'),


        (2, 9, '20'),
        (3, 9, '110'),
        (8, 9, '7'),
        (9, 9, '8'),
        (10, 9, 'Commercial'),
        (11, 9, 'Kitchen'),


        (2, 10, '20'),
        (3, 10, '240'),
        (8, 10, '12'),
        (9, 10, '9'),
        (10, 10, 'Commercial'),
        (11, 10, 'Kitchen'),


        (1, 11, '3000'),
        (2, 11, '21'),
        (3, 11, '240'),
        (4, 11, '400'),
        (8, 11, '26'),
        (9, 11, '36'),
        (10, 11, 'Commercial'),
        (11, 11, 'Indoor'),
        (12, 11, null),
        (13, 11, 'Vacuum attachment kit'),

        (1, 12, '3500'),
        (2, 12, '27'),
        (3, 12, '240'),
        (4, 12, '200'),
        (8, 12, '30'),
        (9, 12, '45'),

        (10, 12, 'Commercial'),
        (11, 12, 'Indoor'),
        (12, 12, null),
        (13, 12, 'Vacuum attachment kit'),

        (1, 13, '2500'),
        (2, 13, '19'),
        (3, 13, '110'),
        (4, 13, '300'),
        (8, 13, '17'),
        (9, 13, '34'),
        (10, 13, 'Commercial'),
        (11, 13, 'Car'),
        (12, 13, 'Portable'),
        (13, 13, 'Vacuum attachment kit'),

        (1, 14, '3500'),
        (2, 14, '25'),
        (3, 14, '240'),
        (4, 14, '320'),
        (8, 14, '25'),
        (9, 14, '45'),
        (10, 14, 'Commercial'),
        (11, 14, 'Indoor'),
        (12, 14, null),
        (13, 14, 'Vacuum attachment kit'),

        (1, 15, '2500'),
        (2, 15, '19'),
        (3, 15, '110'),
        (4, 15, '290'),
        (8, 15, '17'),
        (9, 15, '34'),
        (10, 15, 'Commercial'),
        (11, 15, 'Car'),
        (12, 15, 'Portable'),
        (13, 15, 'Vacuum attachment kit')

        )
        AS SOURCE(PropertyID, ProductID, Value)
        ON Target.PropertyID = Source.PropertyID
        WHEN NOT MATCHED BY Target Then 
        INSERT(PropertyID, ProductID, Value)
        Values(PropertyID, ProductID, Value);

Merge into tblTypeFilter As Target 
Using (VALUES
        (10, 1, 'Use Type', 'Commercial'),
        (10, 2, 'Use Type', 'Commercial'),
        (10, 3, 'Use Type', 'Commercial'),
        (10, 4, 'Use Type', 'Commercial'),
        (10, 5, 'Use Type', 'Commercial'),
        (10, 6, 'Use Type', 'Commercial'),
        (10, 7, 'Use Type', 'Commercial'),
        (10, 8, 'Use Type', 'Commercial'),
        (10, 9, 'Use Type', 'Commercial'),
        (10, 10, 'Use Type', 'Commercial'),

        (11, 1, 'Application', 'Indoor'),
        (11, 2, 'Application', 'Indoor'),
        (11, 3, 'Application', 'Indoor'),
        (11, 4, 'Application', 'Indoor'),
        (11, 5, 'Application', 'Indoor'),
        (11, 6, 'Application', 'Indoor'),
        (11, 7, 'Application', 'Indoor'),
        (11, 8, 'Application', 'Indoor'),
        (11, 9, 'Application', 'Indoor'),
        (11, 10, 'Application', 'Indoor'),
        (11, 1, 'Application', 'Kitchen'),
        (11, 2, 'Application', 'Kitchen'),
        (11, 3, 'Application', 'Kitchen'),
        (11, 4, 'Application', 'Kitchen'),
        (11, 5, 'Application', 'Kitchen'),
        (11, 6, 'Application', 'Kitchen'),
        (11, 7, 'Application', 'Kitchen'),
        (11, 8, 'Application', 'Kitchen'),
        (11, 9, 'Application', 'Kitchen'),
        (11, 10, 'Application', 'Kitchen'),
        (11, 1, 'Application', 'Car'),
        (11, 2, 'Application', 'Car'),
        (11, 4, 'Application', 'Car'),
        (11, 5, 'Application', 'Car'),
        (11, 6, 'Application', 'Car'),
        (11, 8, 'Application', 'Car'),
        (11, 9, 'Application', 'Car'),

        (12, 1, 'Mounting Loacation', 'Roof'),
        (12, 4, 'Mounting Loacation', 'Roof'),
        (12, 6, 'Mounting Loacation', 'Roof'),
        (12, 8, 'Mounting Loacation', 'Roof'),
        (12, 1, 'Mounting Loacation', 'Portable'),
        (12, 2, 'Mounting Loacation', 'Portable'),
        (12, 3, 'Mounting Loacation', 'Portable'),
        (12, 4, 'Mounting Loacation', 'Portable'),
        (12, 5, 'Mounting Loacation', 'Portable'),
        (12, 6, 'Mounting Loacation', 'Portable'),
        (12, 7, 'Mounting Loacation', 'Portable'),
        (12, 8, 'Mounting Loacation', 'Portable'),
        (12, 9, 'Mounting Loacation', 'Portable'),
        (12, 10, 'Mounting Loacation', 'Portable'),

        (13, 1, 'Accessories', 'With Light'),
        (13, 2, 'Accessories', 'With Light'),
        (13, 3, 'Accessories', 'With Light'),
        (13, 4, 'Accessories', 'With Light'),
        (13, 5, 'Accessories', 'With Light'),
        (13, 6, 'Accessories', 'With Light'),
        (13, 7, 'Accessories', 'With Light'),
        (13, 8, 'Accessories', 'With Light'),
        (13, 9, 'Accessories', 'With Light'),
        (13, 10, 'Accessories', 'With Light'),
        (13, 2, 'Accessories', 'Vaccum attachment kit'),
        (13, 5, 'Accessories', 'Vaccum attachment kit'),
        (13, 9, 'Accessories', 'Vaccum attachment kit')

        )
        AS SOURCE(PropertyID, SubCategoryID, TypeName, TypeOptions)
        ON Target.PropertyID = Source.PropertyID
        WHEN NOT MATCHED BY Target Then 
        INSERT(PropertyID, SubCategoryID, TypeName, TypeOptions)
        Values(PropertyID, SubCategoryID, TypeName, TypeOptions);

Merge into tblTechSpecFilter As Target 
Using (VALUES
        (1, 1, 2500, 5500),
        (2, 2, 10, 50),
        (3, 3, 110, 240),
        (4, 3, 200, 400)

        )
        AS SOURCE(PropertyID, SubCategoryID, MinValue, MaxValue)
        ON Target.PropertyID = Source.PropertyID
        WHEN NOT MATCHED BY Target Then 
        INSERT(PropertyID, SubCategoryID, MinValue, MaxValue)
        Values(PropertyID, SubCategoryID, MinValue, MaxValue);



--Delete From tblUser;
--Delete From tblCategory;
--Delete From tblSubCategory;
--Delete From tblManufacturer;
--Delete From tblProduct;
--Delete From tblProperty;
--Delete From tblPropertyValue;
--Delete From tblTypeFilter;
--Delete From tblTechSpecFilter;

        


