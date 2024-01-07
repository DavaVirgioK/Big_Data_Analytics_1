/* Import data */
data WORK.ORDER_PRODUCTS_PRIOR_NODUP;
  infile '/home/u63326844/ORDER_PRODUCTS_PRIOR_NODUP.csv' delimiter=',' dsd;
  input order_id product_id add_to_cart_order reordered;
run;

/* Use PROC MEANS to compute statistical and mathematical summaries */
proc means data=WORK.ORDER_PRODUCTS_PRIOR_NODUP n mean sum min max std;
  var order_id product_id add_to_cart_order reordered;
run;
