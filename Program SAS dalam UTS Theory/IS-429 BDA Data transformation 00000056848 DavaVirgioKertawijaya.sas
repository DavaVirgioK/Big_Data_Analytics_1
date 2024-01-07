/* Import dataset */
proc import out=order_products_prior
    datafile="/home/u63326844/order_products__prior.csv"
    dbms=csv
    replace;
    getnames=yes;
run;

/* Memeriksa dan menghapus duplikat */
proc sort data=order_products_prior out=order_products_prior_nodup nodupkey;
    by product_id;
run;