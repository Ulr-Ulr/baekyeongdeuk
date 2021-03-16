SELECT TA.bno,TA.title,TA.writer,TA.reg_date,TA.view_count, COUNT(TB.rno) AS 댓글카운트 FROM 
TBL_BOARD TA INNER JOIN TBL_REPLY TB ON TA.BNO = TB.BNO
GROUP BY TA.bno,TA.title,TA.writer,TA.reg_date,TA.view_count
-- HAVING COUNT(TB.rno) >= 3
