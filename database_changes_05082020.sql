ALTER TABLE `nets_emp_activity` 
DROP FOREIGN KEY `nets_emp_activity_ibfk_2`;
ALTER TABLE `nets_emp_activity` DROP `VISITOR_ID`;

ALTER TABLE `nets_visit_log` ADD ACTIVITY_ID INT(11);
ALTER TABLE `nets_visit_log`
ADD CONSTRAINT nets_emp_visitors_ibfk_1
FOREIGN KEY (ACTIVITY_ID) REFERENCES nets_emp_activity(ACTIVITY_ID);

ALTER TABLE `nets_visit_log` CHANGE `Q1` `Q1` INT(11) NULL, CHANGE `A1` `A1` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL, CHANGE `Q2` `Q2` INT(11) NULL, CHANGE `A2` `A2` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL, CHANGE `Q3` `Q3` INT(11) NULL, CHANGE `A3` `A3` VARCHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL;

ALTER TABLE `nxx_questionnaire` CHANGE `TRANSACTION` `TRANSACTION` VARCHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;

ALTER TABLE `nets_visit_log` CHANGE `MEETING_ID` `MEETING_ID` VARCHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

INSERT INTO `nxx_questionnaire` (`QCODE`, `TRANSACTION`, `SEQUENCE`, `QUESTION`, `POSS_ANSWER`, `TYPE`, `STATUS`, `CREATE_USER`, `CREATE_DATE`, `UPDATE_USER`, `UPDATE_DATE`) VALUES ('6', 'HDFTH', '1', 'Travelled from a geographic location/country with documented cases of COVID19? ', '{\r\n \"1\": \"Yes\",\r\n \"2\": \"No\"\r\n}', '3', 'A', '', '0000-00-00', '', '0000-00-00');