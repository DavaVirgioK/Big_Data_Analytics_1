/* Import dataset */
proc import out=order_products_prior
    datafile="/home/u63326844/order_products__prior.csv"
    dbms=csv
    replace;
    getnames=yes;
run;

/* Menghapus kolom yang tidak diperlukan */
data order_products_prior;
    set order_products_prior(drop=order_id);
run;


