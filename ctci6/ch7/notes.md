1 - clarify problem
2 - define core objects
            ex restaurant -- table, guest, party, order, meal, employee, server, host
3 - relationships btw objects
            which obj are members of other obj?
            do obj inherit from others?
            m-to-m or one-to-m?

            ex party has array of guests
               server and host inherit employee
               table has one party, each party might have mult tables
               one host for the restaurant
4 - object actions
            ex party walks into rest
               guest requests table from host
               host looks up reservation and if exists assigns party to table
               otherwise party added to end of list
               when party leaves table is freed and assigned new party
