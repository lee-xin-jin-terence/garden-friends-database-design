

INSERT INTO MEMBER VALUES ('rv758693' , 'Member' , 'ff@yahoo.com' , 'Fran', 'Forklift' , '95 Chapman Avenue' , 'Carbarita' , '(02) 4716 3131' , 'I love to grow tomatoes and mango trees.' );

INSERT INTO MEMBER VALUES ('ts739506' , 'Member' , 'mh@hotmail.com' , 'May' , 'Hunst' , '38 Bailey Street' , 'Dolls Point' , '(06) 3425 2964' , 'I love using lawnmowers to get rid of weeds and overgrown grass.' );

INSERT INTO MEMBER VALUES ( 'jt703856' , 'Member' , 'jy@gmail.com' , 'Joseph' , 'Typhine',  '34 Acheron Road' , 'Fairfield' , '(74) 3456 3424' , 'I love pruning roses.' );

INSERT INTO MEMBER VALUES ( 'nk049563' , 'Member' , 'ml@mail.com' , 'Monsef' , 'Lenag' , '20 Bayfield Street' , 'Quakers Hill' , '(63) 5645 3453' , 'I love watering plants and trees.' );

INSERT INTO MEMBER VALUES ( 'pg395073' , 'Member' , 'db@ymail.com' , 'Dan' , 'Brown' , '97 Lapko Road' , 'Fairfield' , '(63) 7395 0146' , 'Mulching soil is my passion, but I also like lawnmowing.' );

INSERT INTO MEMBER VALUES ( 'ah664839' , 'Member' , 'km@hotmail.com' , 'Kievloy' , 'Murthiv' , '12 Shamrock Avenue' , 'Fairfield' , '(77) 4638 3235' , 'I love weeding gardens.' );

INSERT INTO MEMBER VALUES ( 'qm840588' , 'Member' , 'so@aol.com' , 'Shawn' , 'Orlando' , '70 Elgin Street' , 'Quakers Hill' , '(88) 3941 6546' , 'Delivery and pickup is my forte.' ); 

INSERT INTO MEMBER VALUES ( 'bg839477' , 'Member' , 'ee@gmail.com' , 'Emily' , 'Esthar' , '24 Holdsworth Street' , 'Dolls Point' , '(00) 4857 4444' , 'Designing new landscapes is my thing.' );

INSERT INTO MEMBER VALUES ( 'oy848500' , 'Member' , 'ih@qq.com' , 'Isabella' , 'Horwitzer' , '82 Parkes Road' , 'Dolls Point' , '(21) 4304 8401' , 'I love paving very much and I am very good at it.' );

INSERT INTO MEMBER VALUES ( 'nf947593' , 'Member' , 'as@aol.com' , 'Annabelle' , 'Schooler' , '52 Corio Street' , 'Jordan Springs' , '(07) 4452 4314' , 'I like to loan others my gardening equipment.' );

INSERT INTO MEMBER ( MemberID , MembershipType , EmailAddress , FirstName, LastName , Suburb, ContactNumber ) VALUES ( 'fm935482' , 'Guest' , 'bp@mail.com' , 'Ben' , 'Parker' , 'Carbarita' , '(90) 8839 5832' );

INSERT INTO MEMBER ( MemberID , MembershipType ,  EmailAddress , FirstName , LastName , Suburb , ContactNumber )
VALUES ('qz988764' , 'Guest' , 'cw@yahoo.com' , 'Charles' , 'Wheeler' , 'Quakers Hill' , '(66) 4839 4352' );

INSERT INTO MEMBER ( MemberID , MembershipType , EmailAddress , FirstName, LastName , Suburb , ContactNumber )
VALUES ( 'ch633926' , 'Guest' , 'ym@gmail.com' , 'Yugi' , 'Moto' , 'Dolls Point' , '(77) 3853 4953' );

INSERT INTO MEMBER ( MemberID, MembershipType , EmailAddress, FirstName, LastName, Suburb, ContactNumber)
VALUES ( 'pg883045' , 'Guest' , 'tg@aol.com' , 'Tea' , 'Gardner' , 'Quakers Hill' , '(33) 8592 2742' );

INSERT INTO MEMBER ( MemberID, MembershipType, EmailAddress, FirstName, LastName, Suburb, ContactNumber )
VALUES ( 'kt884009' , 'Guest' , 'ta@hotmail.com' , 'Tristian' , 'Anderson' , 'Carbarita' , '(81) 5839 5836' );

INSERT INTO MEMBER ( MemberID, MembershipType, EmailAddress, FirstName, LastName, Suburb, ContactNumber )
VALUES ( 'ff950375' , 'Guest' , 'ts@qq.com' , 'Taylor' , 'Swift' , 'Quakers Hill' ,  '(77) 2331 5571' );

INSERT INTO MEMBER ( MemberID, MembershipType, EmailAddress, FirstName, LastName, Suburb, ContactNumber )
VALUES ( 'jl348091' , 'Guest' , 'jb@mail.com' , 'Justin' , 'Bieber' , 'Carbarita' , '(81) 0000 1111' );

INSERT INTO MEMBER ( MemberID, MembershipType, EmailAddress, FirstName, LastName, Suburb, ContactNumber )
VALUES ( 'et934860' , 'Guest' , 'tc@aol.com' , 'Tom' , 'Cruise' , 'Dolls Point' , '(74) 1066 4623' );

INSERT INTO MEMBER ( MemberID, MembershipType, EmailAddress, FirstName, LastName, Suburb, ContactNumber )
VALUES ( 'yb340104' , 'Guest' , 'bh@aol.com' , 'Bill' , 'Hope' , 'Quakers Hill' , '(72) 2384 3843' );

INSERT INTO MEMBER (  MemberID, MembershipType, EmailAddress, FirstName, LastName, Suburb, ContactNumber )
VALUES ('zz304919' , 'Guest' , 'mp@gmail.com' , 'Mary' , 'Poppins' , 'Dolls Point' , '(81) 2749 9910' );

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------*/

INSERT INTO SERVICE_CATEGORY VALUES ( 'maintenance' , 'Keeping a member’s garden in a good condition, making sure that it looks neat.' );

INSERT INTO SERVICE_CATEGORY VALUES ('pickup and delivery' , 'Helping a member bring gardening related items to a particular person or a place.' );

INSERT INTO SERVICE_CATEGORY VALUES ('equipment loan' , 'Lending a member’s gardening tools/ equipment to another member' );

INSERT INTO SERVICE_CATEGORY VALUES ( 'landscaping' , 'Making a member’s garden look attractive and interesting by changing its design.' );

/*---------------------------------------------------------------------------------------------------------------------------------------------------------*/

INSERT INTO SERVICE VALUES ( 'mowing' , 'Cutting overgrown grass using a lawnmower' , 'maintenance' );

INSERT INTO SERVICE VALUES ( 'pruning' , 'Cutting off some of the branches of trees or bushes to make them grow better' , 'maintenance' );

INSERT INTO SERVICE VALUES ( 'weeding' , 'Removing unwanted plants from a member’s garden' , 'maintenance' );

INSERT INTO SERVICE VALUES ( 'mulching' , 'Layering the soil of a member’s garden with mulch (materials that improve fertility and health of the soil)' , 'maintenance' );

INSERT INTO SERVICE VALUES ( 'watering' , 'Pouring water on to the plants or the soil of a member’s garden' , 'maintenance' );

INSERT INTO SERVICE VALUES ( 'planting' ,'Putting seeds/ bulbs / plants in the member’s garden where they will grow' , 'maintenance' );

INSERT INTO SERVICE VALUES ( 'sweeping' , 'Clearing fallen leaves and other rubbish from a member’s garden' , 'maintenance' );

INSERT INTO SERVICE VALUES ( 'collecting plants from the nursery' , 'Helping a member deliver to them the plants they bought from the nursery' , 'pickup and delivery' );

INSERT INTO SERVICE VALUES ( 'taking clippings to the council composting centre' , 'Delivering leaves and branches that are pruned off from a member’s garden to the council composting centre' , 'pickup and delivery' );

INSERT INTO SERVICE VALUES ( 'taking rubbish to the tip' , 'Helping a member deliver their unwanted garden waste to the rubbish dump' , 'pickup and delivery' );

INSERT INTO SERVICE VALUES ( 'chainsaw loaning' , 'Loaning a chainsaws, useful for cutting trees.' , 'equipment loan' );

INSERT INTO SERVICE VALUES ( 'lawnmower loaning' , 'Loaning lawnmowers, useful for mowing overgrown grasses' , 'equipment loan' );

INSERT INTO SERVICE VALUES ( 'mulcher loaning' , 'Loaning machines that can cut, grind and clear vegetation from a member’s garden' , 'equipment loan' );

INSERT INTO SERVICE VALUES ( 'garden design' , 'Creating new garden layout plans for a member’s garden' , 'landscaping' );

INSERT INTO SERVICE VALUES ( 'paving' , 'Laying a garden’s path with concrete/ stones' , 'landscaping' );


/*-----------------------------------------------------------------------------------------------------------------------------------------------------*/

INSERT INTO MEMBER_SERVICE ( MemberServiceID , Description , Conditions, StartDate , Frequency , MemberID , ServiceName) VALUES ( 'tyku0934' , 'Echo CS-352-16 battery-powered chainsaw' , 'Please recharge the chainsaw battery to full before returning.' , TO_DATE ( '22/06/2019' , 'DD/MM/YYYY' ) , 'by arrangement' , 'rv758693' , 'chainsaw loaning' );

INSERT INTO MEMBER_SERVICE ( MemberServiceID , Description , Conditions , StartDate , Frequency , MemberID, ServiceName) VALUES ('ykeb9503' , 'BlueMax 4364 corded electric chainsaw' , 'Make sure the chainsaw blades are fully cleaned before returning.' , TO_DATE ( '15/07/2019' , 'DD/MM/YYYY' ) , 'any day' , 'jt703856' , 'chainsaw loaning' );

INSERT INTO MEMBER_SERVICE ( MemberServiceID , Description , StartDate , Frequency , MemberID , ServiceName ) VALUES ('ohkr3053' , 'Craftsman HFN-9403 gas-powered lawnmower' , TO_DATE ( '19/07/2019' , 'DD/MM/YYYY' ), 'any Monday' , 'ts739506' , 'lawnmower loaning' );

INSERT INTO MEMBER_SERVICE VALUES ( 'fkgn1842' , 'Honda NFK-495 corded lawnmower' , 'Ensure that the waste compartment of the lawnmower is cleared before returning.' , TO_DATE ( '22/08/2019' , 'DD/MM/YYYY' ) , TO_DATE ( '30/10/2019' , 'DD/MM/YYYY' ) , 'by arrangement' , 'nk049563' , 'lawnmower loaning' );

INSERT INTO MEMBER_SERVICE VALUES ( 'jowv3943' , 'Craftsman JVKD-495 mulcher' , 'Make sure you are fully trained to use a mulcher and have a license before seeking this loan' , TO_DATE ( '15/02/2019' , 'DD/MM/YYYY' ) , TO_DATE ( '19/10/2019' , 'DD/MM/YYYY' ) , 'any day' , 'pg395073' , 'mulcher loaning' );

INSERT INTO MEMBER_SERVICE ( MemberServiceID, Description, Conditions , StartDate, Frequency , MemberID, ServiceName ) VALUES ( 'pqoy9452' , 'Toyota HDJ-485 mulcher' , 'Make sure you are fully trained to use a mulcher and have a license before seeking this loan' , TO_DATE ('22/09/2019' , 'DD/MM/YYYY' ) , 'any Thursday' , 'ah664839' , 'mulcher loaning' );

INSERT INTO MEMBER_SERVICE ( MemberServiceID , Description , Conditions , StartDate , Frequency , MemberID, ServiceName ) VALUES ( 'tgel2048' , 'Planting any type of plants in your garden' , 'Make sure you have all the seeds/ bulbs you want to plant ready before I arrive.' , TO_DATE ( '15/03/2019' , 'DD/MM/YYYY') , 'any Thursday' , 'qm840588' , 'planting' );

INSERT INTO MEMBER_SERVICE VALUES (  'hgaz1777' , 'Sweeping up the leaves and rubbish in your garden' , 'Make sure you have a broom and dustpan ready before I arrive.' , TO_DATE ( '22/05/2019' , 'DD/MM/YYYY' ), TO_DATE ('22/02/2020' , 'DD/MM/YYYY' ) , 'by arrangement' , 'bg839477' , 'sweeping' );

INSERT INTO MEMBER_SERVICE ( MemberServiceID, Description, Conditions, StartDate, Frequency , MemberID , ServiceName ) VALUES ( 'bade2343' , 'Mowing overgrown grass in your garden using a lawnmower' , 'Make sure you own a lawnmower' , TO_DATE ( '20/06/2019' , 'DD/MM/YYYY' ) , 'by arrangement' , 'oy848500' , 'mowing' );

INSERT INTO MEMBER_SERVICE ( MemberServiceID, Description, StartDate, Frequency , MemberID , ServiceName ) VALUES ( 'xcvm2202' , 'Helping you collect plants you have ordered from the nursery and bring them to you' , TO_DATE ( '16/06/2019' , 'DD/MM/YYYY' ) , 'any day' , 'nf947593' , 'collecting plants from the nursery' );



/*-------------------------------------------------------------------------------------------------------------------------------------------------------*/

INSERT INTO REQUEST VALUES ( '940GNR' , 'ts739506' , 'pruning' , 'maintenance' , 'I have 6 overgrown citrus trees that need pruning.' , TO_DATE('15/07/2019', 'DD/MM/YYYY') , TO_DATE('23/07/2019' , 'DD//MM/YYYY' ) , TO_DATE( '25/07/2019' , 'DD/MM/YYYY' ), 'normal' );


INSERT INTO REQUEST ( RequestID, MemberID, TaskName, BroadCategory, Description, DatePosted, EndDate, UrgencyLevel ) VALUES ( '029KFM' , 'jt703856' , 'mowing' , 'maintenance' , 'I have a small garden that needs mowing.' , TO_DATE('19/06/2019' , 'DD/MM/YYYY')  , TO_DATE( '10/07/2019' , 'DD/MM/YYYY' ) , 'normal' );

INSERT INTO REQUEST VALUES ( '305MKE' , 'rv758693' , 'weeding' , 'maintenance' , 'I have a garden infested with weeds that need to be weeded.' , TO_DATE( '15/07/2019', 'DD/MM/YYYY') , TO_DATE( '20/07/2019' , 'DD/MM/YYYY' ) , TO_DATE ( '20/08/2019' , 'DD/MM/YYYY' ) , 'normal' ); 

INSERT INTO REQUEST (RequestID, MemberID, TaskName, BroadCategory, Description, DatePosted,  UrgencyLevel ) VALUES ( '934JKE' , 'nk049563' , 'planting' , 'maintenance' , 'I have an empty garden that needs to be planted with plants.' , TO_DATE( '15/07/2019' , 'DD/MM/YYYY' ),  'as soon as possible' );

INSERT INTO REQUEST VALUES( '110QAZ' , 'pg395073' , 'planting' , 'maintenance' , 'I need help with planting some plants in my garden.' , TO_DATE( '21/07/2019' , 'DD/MM/YYYY' )  ,TO_DATE( '15/08/2019' , 'DD/MM/YYYY' ) , TO_DATE ( '19/08/2019' , 'DD/MM/YYYY' ) , 'normal' );

INSERT INTO REQUEST ( RequestID, MemberID, TaskName, BroadCategory, Description, DatePosted, EndDate , UrgencyLevel ) VALUES( '842VBD' , 'ah664839' , 'sweeping' , 'maintenance' , 'I need help with sweeping leaves in my garden.' , TO_DATE ( '12/07/2019' , 'DD/MM/YYYY' ) , TO_DATE ( '30/08/2019' , 'DD/MM/YYYY' ) , 'normal' );

INSERT INTO REQUEST VALUES( '674UHB' , 'bg839477' , 'collecting plants from the nursery' , 'pickup and delivery' , 'I need someone to collect some cacti from Good Plant Nursery.' , TO_DATE('01/07/2019' , 'DD/MM/YYYY' )  ,TO_DATE( '15/07/2019' , 'DD/MM/YYYY' ) , TO_DATE ( '15/07/2019' , 'DD/MM/YYYY' ) , 'normal' );

INSERT  INTO REQUEST VALUES ('539KSW' , 'oy848500' , 'taking clippings to the council composting centre' , 'pickup and delivery' , 'I need someone to help take some tree clippings to the Compost Me Composting Centre.' , TO_DATE('20/06/2019' , 'DD/MM/YYYY' ) , TO_DATE ( '20/06/2019' , 'DD/MM/YYYY' ) , TO_DATE('20/07/2019' , 'DD/MM/YYYY') ,'as soon as possible' );

INSERT INTO REQUEST ( RequestID, MemberID, TaskName, BroadCategory, Description, DatePosted, EndDate , UrgencyLevel  ) VALUES( '719TSM' , 'nf947593' , 'mulcher loaning' , 'equipment loan' , 'I need to loan a mulcher for my gardening needs.' , TO_DATE( '29/07/2019' , 'DD/MM/YYYY' ) , TO_DATE ( '02/09/2019' , 'DD/MM/YYYY' ) , 'as soon as possible' );

INSERT INTO REQUEST VALUES ( '086THS' , 'qm840588' , 'lawnmower loaning' , 'equipment loan' , 'I need to loan a lawnmower for my gardening needs.' , TO_DATE( '12/06/2019' , 'DD/MM/YYYY' ) ,TO_DATE ( '15/09/2019' , 'DD/MM/YYYY' ) , TO_DATE( '16/09/2019' , 'DD/MM/YYYY') , 'normal' );

/*--------------------------------------------------------------------------------------------------------------------------------------------------------*/

INSERT INTO EVENT VALUES ( 'MBC405' , 'How to properly weed your garden' , 'ST' , 'Provide specialised techniques to carefully weed your garden.' , TO_DATE ( '04/07/2019' , 'DD/MM/YYYY' ) , '32 Ocean Pde' , 'Dolls Point' , 45 , '7754' , 'Bring along your own gardening gloves' , 'No' , 'pg395073' , 'nf947593' );

INSERT INTO EVENT ( EventID , Title , EventCategory , Description , EventDate, Location , Suburb, PlacesAvailable , LocationPostcode , MeetAccessibilityGuidelines , OrganiserID , LeaderID ) VALUES ( 'AVU411' , 'Garden Display Delights' , 'OG' , 'Showcasing Dan’s redesigned garden (can expect to see many roses )' , TO_DATE ( '11/05/2019' , 'DD/MM/YYYY' ) , '61 Webb Road' , 'Carbarita' , 33 , '6666' , 'Yes' , 'nf947593' , 'pg395073' );


INSERT INTO EVENT ( EventID , Title , EventCategory , Description , EventDate, Location , Suburb, PlacesAvailable , LocationPostcode , MeetAccessibilityGuidelines , OrganiserID , LeaderID ) VALUES ( 'PML101' , 'Cultivation of lavender' , 'KYP' , 'How to properly grow lavender' , TO_DATE ( '13/06/2019' , 'DD/MM/YYYY' ) , '38 Ocean Pde' , 'Dolls Point' , 34 , '7711' , 'No' , 'qm840588' , 'qm840588' );

INSERT INTO EVENT VALUES ( 'KEU613' , 'How to redesign your garden' , 'ST' , 'Provide skills and ideas in garden design' , TO_DATE ( '17/06/2019' , 'DD/MM/YYYY' ) , '69 Edward Bennett Drive' , 'Quakers Hill' , 25 , '8888' , 'Bring along your own pencils, erasers and sketchpad' , 'No' , 'pg395073' , 'ah664839' );

INSERT INTO EVENT ( EventID , Title , EventCategory , Description , EventDate, Location , Suburb, PlacesAvailable , LocationPostcode , MeetAccessibilityGuidelines , OrganiserID , LeaderID ) VALUES ( 'WSC774' , 'Annabelle’s Open Garden' , 'OG' , 'Showcasing exotic plants brought from Malaysia' , TO_DATE ( '22/06/2019' , 'DD/MM/YYYY' ) , '99 Ocean Pde' , 'Dolls Point' , 15 , '7765' , 'Yes' , 'nf947593' , 'qm840588' );


INSERT INTO EVENT VALUES ( 'HGJ382' , 'Chainsaw use and maintenance' , 'ST' , 'I will be teaching you how to properly use and maintain a chainsaw.' , TO_DATE ( '25/09/2019' , 'DD/MM/YYYY' ) , '55 Webb Road' , 'Carbarita' , 22 , 6150 , 'Bring along your own safety helmet.' , 'No' , 'rv758693' , 'rv758693' );

INSERT INTO EVENT VALUES ( 'EWP203' , 'Touring May’s garden' , 'OG' , 'I will be showing you the garden where potatoes and roses are cultivated.' , TO_DATE ( '16/10/2019' , 'DD/MM/YYYY' ) , '21 Edward Bennett Drive' , 'Quakers Hill' , 30 , '0955' , 'Do not forget your hat and sunscreen' , 'Yes' , 'ts739506' , 'qm840588' );

INSERT INTO EVENT ( EventID , Title , EventCategory , Description , EventDate, Location , Suburb, PlacesAvailable , LocationPostcode , MeetAccessibilityGuidelines , OrganiserID , LeaderID )  VALUES ( 'HGQ104' , 'How to properly cultivate roses' , 'KYP' , 'You will be taught with the skills to correctly cultivate roses.' , TO_DATE ( '15/10/2019' , 'DD/MM/YYYY' ), '11 Webb Road' , 'Carbarita' , 32, '6150' , 'No' , 'bg839477' , 'ts739506' );

INSERT INTO EVENT VALUES ( 'PBO492' , 'How to efficiently prune your trees' , 'ST' , 'You will be taught the techniques on pruning your trees efficiently.' , TO_DATE ( '01/09/2019' , 'DD/MM/YYYY' ) , '33 Ocean Pde' , 'Dolls Point' , 18 , '7765' , 'Bring along your own trowels and secateurs' , 'Yes' , 'ah664839' , 'oy848500' );

INSERT INTO EVENT ( EventID , Title , EventCategory , Description , EventDate, Location , Suburb, PlacesAvailable , LocationPostcode , MeetAccessibilityGuidelines , OrganiserID , LeaderID ) VALUES ( 'TGB312' , 'Trick to cultivating Banksias' , 'KYP' , 'I will be showing you how to properly cultivate Banksias without headaches.' , TO_DATE ( '13/08/2019' , 'DD/MM/YYYY' ) , '102 Webb Road' , 'Carbarita' , 30 , '6150' , 'No' , 'qm840588' , 'ts739506' );

INSERT INTO EVENT VALUES ( 'WEX363' , 'Tips on lawn mowing your garden' , 'ST' , 'How to properly lawn mow your garden with ease.' , TO_DATE( '27/08/2019' , 'DD/MM/YYYY' ) , '71 Edward Bennett Drive' , 'Quakers Hill' , 17 , '6199' , 'Do not forget your hat and sunscreen' , 'No' , 'ts739506' , 'qm840588' );
 

/*-------------------------------------------------------------------------------------------------------------------------------------------------*/
INSERT INTO EVENT_PARTICIPATION VALUES ( 'MBC405' , 'zz304919' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'MBC405' , 'yb340104' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'MBC405' , 'et934860' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'MBC405' , 'oy848500' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'MBC405' , 'bg839477' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'MBC405' , 'qm840588' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'AVU411' , 'jt703856' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'AVU411' , 'rv758693' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'AVU411' , 'bg839477' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'AVU411' , 'ch633926' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'AVU411' , 'yb340104' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'AVU411' , 'oy848500' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'AVU411' , 'ah664839' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PML101' , 'ah664839' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PML101' , 'ts739506' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ('PML101' , 'yb340104' , 'Attendee');

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PML101' , 'ff950375' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PML101' , 'qz988764' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PML101' , 'jt703856' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'KEU613' , 'ts739506' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'KEU613' , 'jt703856' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'KEU613' , 'nk049563' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'KEU613' , 'qm840588' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'KEU613' , 'pg883045' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'KEU613' , 'kt884009' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'KEU613' , 'nf947593' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'KEU613' , 'bg839477' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'WSC774' , 'et934860' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'WSC774' , 'jl348091', 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'WSC774' , 'ff950375' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'WSC774' , 'oy848500' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'WSC774' , 'bg839477' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION  VALUES( 'WSC774' , 'jt703856' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'HGJ382' , 'pg395073' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION  VALUES( 'HGJ382' , 'qm840588' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'HGJ382' , 'oy848500' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'HGJ382' , 'ff950375' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'HGJ382' , 'ts739506' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'EWP203' , 'pg883045' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'EWP203' , 'yb340104' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'EWP203' , 'jl348091' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES( 'EWP203' , 'oy848500' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'EWP203' , 'nk049563' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'EWP203' , 'pg395073' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'EWP203' , 'ah664839' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'HGQ104' , 'ch633926' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES( 'HGQ104' , 'ah664839' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES( 'HGQ104' , 'jt703856' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES( 'HGQ104' , 'nk049563' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'HGQ104' , 'qm840588' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PBO492' , 'kt884009' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PBO492' , 'et934860' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PBO492' , 'zz304919' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PBO492' , 'pg883045' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PBO492' , 'qm840588' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PBO492' , 'ts739506' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'PBO492' , 'nk049563' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'TGB312' , 'pg395073' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'TGB312' , 'ah664839' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'TGB312' , 'qz988764' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'TGB312' , 'pg883045' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'TGB312' , 'oy848500' , 'Helper' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'WEX363' , 'fm935482' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'WEX363' , 'ff950375' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'WEX363' , 'zz304919' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ( 'WEX363' ,'ch633926' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES ('WEX363' , 'jt703856' , 'Attendee' );

INSERT INTO EVENT_PARTICIPATION VALUES( 'WEX363' , 'rv758693' , 'Helper' );
