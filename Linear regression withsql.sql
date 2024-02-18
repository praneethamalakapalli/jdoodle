create table linear(x integer,y integer);
insert into linear values(10,450000);
insert into linear values(12,375000);
insert into linear values(14,323000);
insert into linear values(16,301000);
insert into linear values(18,289000);
insert into linear values(20,264000);
insert into linear values(22,248000);
insert into linear values(24,221000);
insert into linear values(26,202000);
insert into linear values(28,185);
insert into linear values(30,16);
insert into linear values(32,4);

select*from linear;

SELECT
  x,AVG(x) OVER() as x_bar
  ,y,AVG(y) OVER() as y_bar
FROM
  linear;
  
SELECT slope,
    y_bar_max-x_bar_max*slope as intercept
FROM
  (
  SELECT
     SUM((x-x_bar)*(y-y_bar))/ SUM((x-x_bar)*(x-x_bar)) as slope,
     MAX(x_bar) as x_bar_max,
     MAX(y_bar) as y_bar_max
  FROM
    (
    SELECT
      x,AVG(x) OVER() as x_bar,
      y,AVG(y) OVER() as y_bar
    from linear  
    )
 )
  
  

with 
  trend_line AS
   (
   SELECT slope,
    y_bar_max-x_bar_max*slope as intercept
   FROM
    (
    SELECT
     SUM((x-x_bar)*(y-y_bar))/ SUM((x-x_bar)*(x-x_bar)) as slope,
     MAX(x_bar) as x_bar_max,
     MAX(y_bar) as y_bar_max
    FROM
      (
      SELECT
        x,AVG(x) OVER() as x_bar,
        y,AVG(y) OVER() as y_bar
      from linear  
      )data1
    )data2
  )
SELECT 
     linear.*,
     (linear.x *(SELECT SLOPE from trend_line)+(SELECT intercept FROM trend_line)) as trend_line
     from
       linear
  
