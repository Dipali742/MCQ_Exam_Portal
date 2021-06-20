# Online MCQ Examination System

## Table of Contents
  [Problem Statement](https://github.com/Dipali742/MCQ_Exam_Portal#problem-statement)
  [Requirements](https://github.com/Dipali742/MCQ_Exam_Portal#requirements)
  [Usage](https://github.com/Dipali742/MCQ_Exam_Portal#usage)
  [Demo](https://github.com/Dipali742/MCQ_Exam_Portal/tree/main/Screenshots)

## Problem Statement 
Design and implement an examination system with following features :
1. The system should support distributed contribution of questions by teaching assistants, editing of the
questions by whoever is in-charge of the course and creation of tests from the available set
of questions.
2. It should Support the administration of test online either at a fixed time for all students or at any
time but with a time limit from start to finish 
3. User management at different levels (Teachers/students)
4. Question Bank Entry form

## Requirements 
- Visual Studio 2015 with C# ASP.NET 
- MySQL, MySQL workbench
- MySQL for visual studio
- MySQL .NET connector

## Usage 
``` git clone https://github.com/Dipali742/MCQ_Exam_Portal.git ```
- Create database in MySQL workbench with name **_mcqexam_** 
  and import .sql files from [Queries](https://github.com/Dipali742/MCQ_Exam_Portal/tree/main/Queries) folder.
- Now open the [MCQExamPortal](https://github.com/Dipali742/MCQ_Exam_Portal/tree/main/MCQExamPortal) Folder in Visual studio 2015.
- Add the required references and connect to mysql database.
- Change the connection string in [MCQExamPortal/MCQExamPortal/web.config](https://github.com/Dipali742/MCQ_Exam_Portal/blob/main/MCQExamPortal/MCQExamPortal/Web.config) file as per your credentials
- Run the code!
