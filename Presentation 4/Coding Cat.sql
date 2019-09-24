CREATE DATABASE CodingCat;

USE CodingCat;
--Talents Table--
CREATE TABLE Talents (
  TalentID  int IDENTITY(1,1) NOT NULL, 
  UserName  varchar(50) NOT NULL UNIQUE, 
  FirstName varchar(100) NOT NULL, 
  LastName  varchar(100) NOT NULL, 
  Email     varchar(500) NOT NULL UNIQUE, 
  Password  varchar(500) NOT NULL, 
  PRIMARY KEY (TalentID));

--Portfolio Table--
CREATE TABLE Portfolio (
  TalentID      int NOT NULL FOREIGN KEY REFERENCES Talents(TalentID), 
  TopSkill        text, 
  SecondTopSkill  text, 
  Rankings        int, 
  LanguageChoice  text, 
  InterestedField text, 
  PRIMARY KEY (TalentID));

--Problems Table--
CREATE TABLE Problems (
  ProblemID        int IDENTITY NOT NULL, 
  ProblemName      varchar(200) NOT NULL, 
  max_score        int NOT NULL, 
  difficulty       varchar(50) NOT NULL, 
  Category         varchar(100) NOT NULL, 
  Description      text NOT NULL, 
  Input_Format     text NULL, 
  Output_Format    text NULL, 
  Constraints      text NULL, 
  Sample_Input     text NOT NULL, 
  Sample_Output    text NOT NULL, 
  Notes            text NULL, 
  Test_Cases       text NOT NULL, 
  Test_Case_Output text NOT NULL, 
  ProblemSetterID  int NOT NULL FOREIGN KEY REFERENCES ProblemSetters(ProblemSetterID), 
  PRIMARY KEY (ProblemID));

--Submissions Table--
CREATE TABLE Submissions (
  SubmissionID  int IDENTITY (1,1) NOT NULL, 
  TalentID      int NOT NULL FOREIGN KEY REFERENCES Talents(TalentID), 
  ProblemID     int NOT NULL FOREIGN KEY REFERENCES Problems(ProblemID), 
  Result        varchar(100) NOT NULL, 
  SubmittedCode text NOT NULL, 
  PRIMARY KEY (SubmissionID));

--Problem Setters Table--
CREATE TABLE ProblemSetters (
  ProblemSetterID   int IDENTITY(1,1) NOT NULL, 
  UserName          varchar(50) NOT NULL UNIQUE, 
  ProblemSetterName varchar(400) NOT NULL, 
  Email             varchar(500) NOT NULL UNIQUE, 
  Password          varchar(500) NOT NULL, 
  PRIMARY KEY (ProblemSetterID));

--Assessment Test Table--
CREATE TABLE AssessmentTest (
  AssessmentTestID int IDENTITY(1,1) NOT NULL, 
  Question         text NOT NULL, 
  Answer           text NOT NULL, 
  Price            decimal(4, 2) NOT NULL, 
  ProblemSetterID  int NOT NULL FOREIGN KEY REFERENCES ProblemSetters(ProblemSetterID), 
  PRIMARY KEY (AssessmentTestID));

--Test History Table--
  CREATE TABLE TestHistory (
  TestHistoryID int IDENTITY(1,1) NOT NULL,
  AssessmentTestID int NOT NULL FOREIGN KEY REFERENCES AssessmentTest(AssessmentTestID), 
  TalentID         int NOT NULL FOREIGN KEY REFERENCES Talents(TalentID), 
  Result           varchar(100), 
  PRIMARY KEY (TestHistoryID));

--Payment Type Table--
CREATE TABLE PaymentType (
  PaymentTypeID   int IDENTITY(1,1) NOT NULL, 
  PaymentTypeName varchar(200) NOT NULL, 
  PRIMARY KEY (PaymentTypeID));

--Payment Table--
CREATE TABLE Payment (
  PaymentID        int IDENTITY(1,1) NOT NULL, 
  PaymentTypeID    int NOT NULL FOREIGN KEY REFERENCES PaymentType(PaymentTypeID),
  TestHistoryID int NOT NULL FOREIGN KEY REFERENCES TestHistory(TestHistoryID),  
  PRIMARY KEY (PaymentID));

--Project Manager Table--
CREATE TABLE ProjectManager (
  ProjectManagerID int IDENTITY(1,1) NOT NULL, 
  Company          varchar(300) NOT NULL, 
  UserName         varchar(50) NOT NULL UNIQUE, 
  Password         varchar(500) NOT NULL, 
  PRIMARY KEY (ProjectManagerID));

--Search Table--
CREATE TABLE Search (
  SearchID         int IDENTITY(1,1) NOT NULL, 
  Tokens           varchar(max), 
  ProjectManagerID int NOT NULL FOREIGN KEY REFERENCES ProjectManager(ProjectManagerID), 
  TalentID      int NOT NULL FOREIGN KEY REFERENCES Talents(TalentID), 
  PRIMARY KEY (SearchID));

--Interview Table--
CREATE TABLE interview (
  InterviewID      int IDENTITY(1,1) NOT NULL, 
  SearchID int NOT NULL FOREIGN KEY REFERENCES Search(SearchID),
  PRIMARY KEY (InterviewID));








