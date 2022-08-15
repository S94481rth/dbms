create table stores(
  id int primary key,
  loc varchar(10),
  storeName varchar(10)
);

create table customer(
  cid int primary key,
  locCust varchar(10),
  firstOrder varchar(10)
  );

create table item(
	  itemNumber int primary key,
    itemName varchar(10)
);

create table hdqADD(
    itemNumber int,//sid?//
	  city varchar(10) primary key,
    quantity int,
    foreign key(itemNumber) REFERENCES item(itemNumber)
);

create table orders(
	  orderNumber int primary key,
    cid int,
    sid int,
    itemNumber int,
    foreign key(cid) REFERENCES customer(cid),
    foreign key(sid) REFERENCES stores(id),
    foreign key(itemNumber) REFERENCES item(itemNumber)
);


create table itemOrdered(
	  itemNumber int,
    orderNumber int,
    quantity int,
    primary key(itemNumber,orderNumber),
    FOREIGN key(itemNumber) REFERENCES item(itemNumber),
    FOREIGN key(orderNumber) REFERENCES orders(orderNumber)
);

create table holds(
	  sid int,
    itemNumber int,
    quantity int,
    primary key(sid,itemNumber),
    FOREIGN key(sid) references stores(id),
    FOREIGN key(itemNumber) references item(itemNumber)
);
