proc sort data=order_products_prior_nodup;
    by order_id;
run;

PROC TRANSPOSE DATA=WORK.order_products_prior_nodup OUT=order_products_prior_T;
     BY order_id;
     VAR product_id;
RUN;
