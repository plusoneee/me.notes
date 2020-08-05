/*
Table: Department

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| revenue       | int     |
| month         | varchar |
+---------------+---------+
(id, month) is the primary key of this table.
The table has information about the revenue of each department per month.
The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].
 

Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.

The query result format is in the following example:

Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+

Result table:
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+

Note that the result table has 13 columns (1 for the department id + 12 for the months).
*/

SELECT id,
    sum(CASE WHEN month = 'Jan' THEN revenue ELSE NULL END) as Jan_Revenue,
    sum(CASE WHEN month = 'Feb' THEN revenue ELSE NULL END) as Feb_Revenue,
    sum(CASE WHEN month = 'Mar' THEN revenue ELSE NULL END) as Mar_Revenue,
    sum(CASE WHEN month = 'Apr' THEN revenue ELSE NULL END) as Apr_Revenue,
    sum(CASE WHEN month = 'May' THEN revenue ELSE NULL END) as May_Revenue,
    sum(CASE WHEN month = 'Jun' THEN revenue ELSE NULL END) as Jun_Revenue,
    sum(CASE WHEN month = 'Jul' THEN revenue ELSE NULL END) as Jul_Revenue,
    sum(CASE WHEN month = 'Aug' THEN revenue ELSE NULL END) as Aug_Revenue,
    sum(CASE WHEN month = 'Sep' THEN revenue ELSE NULL END) as Sep_Revenue,
    sum(CASE WHEN month = 'Oct' THEN revenue ELSE NULL END) as Oct_Revenue,
    sum(CASE WHEN month = 'Nov' THEN revenue ELSE NULL END) as Nov_Revenue,
    sum(CASE WHEN month = 'Dec' THEN revenue ELSE NULL END) as Dec_Revenue
FROM Department GROUP BY (id) ORDER BY id;
