** Database Script for eLoan Application **

DROP DATABASE IF EXISTS eloan;

CREATE DATABASE eloan;

USE eloan;

CREATE TABLE approved_loan (
  approved_loan_id int(11) NOT NULL,
  approved_loan_applno int(11) NOT NULL,
  approved_loan_amotsanctioned int(11) NOT NULL,
  approved_loan_loanterm int(11) NOT NULL,
  approved_loan_psd varchar(40) NOT NULL,
  approved_loan_lcd varchar(40) NOT NULL,
  approved_loan_emi int(11) NOT NULL
);


CREATE TABLE loan_info (
  loan_info_applno int(11) NOT NULL,
  user_id int(11) NOT NULL,
  loan_info_purpose varchar(50) NOT NULL,
  loan_info_amtrequest int(20) NOT NULL,
  loan_info_doa varchar(20) NOT NULL,
  loan_info_bstructure varchar(20) NOT NULL,
  loan_info_bindicator varchar(10) NOT NULL,
  loan_info_address varchar(100) NOT NULL,
  loan_info_email varchar(20) NOT NULL,
  loan_info_mobile varchar(10) NOT NULL,
  loan_info_status varchar(5) NOT NULL	
);


CREATE TABLE user (
  user_id int(11) NOT NULL,
  user_name varchar(10) NOT NULL,
  user_password varchar(10) NOT NULL
);


ALTER TABLE approved_loan
  ADD PRIMARY KEY (approved_loan_id),
  ADD KEY loan_fk (approved_loan_applno);


ALTER TABLE loan_info
  ADD PRIMARY KEY (loan_info_applno),
  ADD KEY user_fk (user_id);


ALTER TABLE user
  ADD PRIMARY KEY (user_id);


ALTER TABLE approved_loan
  ADD CONSTRAINT loan_fk FOREIGN KEY (approved_loan_applno) REFERENCES loan_info (loan_info_applno);


ALTER TABLE loan_info
  ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES user (user_id);
COMMIT;