Drop Table if exists Books cascade;
Drop Table if exists Students cascade;
Drop Table if exists Authors cascade;
Drop Table if exists borrows cascade;
Drop Table if exists has_written cascade;
Drop Table if exists describes cascade;








CREATE TABLE Books(	docID integer NOT NULL,
			title char(20),
			publisher char(20),
			year integer,
			Primary key(docID));

CREATE TABLE Students(	StID integer NOT NULL,
			StName char(15),
			Major char(20),
			Age integer,
			Primary Key(StID));

CREATE TABLE Authors(	AName char(15) NOT NULL,
			Address char(25),
			Primary Key(AName));

CREATE TABLE borrows(	docID integer NOT NULL,
			StID integer NOT NULL,
			date char(8),
			Primary Key(docID,StID),
			Foreign Key(docID) references Books(docID),
			Foreign Key(stID) references Students(stID));

CREATE TABLE has_written(	docID integer NOT NULL,
				AName char(15),
				Primary Key(docID,AName),
				Foreign Key(docID) references Books(docID),
				Foreign Key(AName) references Authors(AName));

CREATE TABLE describes(	docID integer NOT NULL,
			Keyword char(10) NOT NULL,
			Primary Key(Keyword),
			Foreign Key(docID) references Books(docID));
					
