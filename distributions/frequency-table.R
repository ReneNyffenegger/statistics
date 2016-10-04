# http://onlinestatbook.com/2/introduction/distributions.html

dat <- c ( rep('Brown' , 17),
           rep('Red'   , 18),
           rep('Yellow',  7),
           rep('Green' ,  7),
           rep('Blue'  ,  2),
           rep('Orange',  4)
        )

barplot(table(dat));
