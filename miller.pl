/* Males */ 
male(marty).
male(matt).
male(john).
male(joel).
male(joey).
male(andrew).
male(paul).
male(chris).
male(grey).
male(cliff).
male(cayden).
male(travis).
male(briar).
male(ron).
male(tommy).
male(jim).
male(george).
male(bruce).
male(ted).
male(viktor).
male(larry).
male(gary).
male(nolan).
male(robert).
male(juan).
male(jordan).
male(brad).
male(nate).

/* Females */
female(ashley).
female(tara).
female(reese).
female(tori).
female(mattie).
female(ciel).
female(evalee).
female(michaela).
female(lizzy).
female(ruby).
female(kelly).
female(debby).
female(leann).
female(erin).
female(deanna).
female(sandy).
female(kathy).
female(diane).
female(mabel).
female(esther).
female(victoria).
female(olga).
female(heather).
female(mathilda).
female(sarah).
female(megan).
female(erika).

/* Male and Female Ages */
age(marty, 48).
age(matt, 22).
age(john, 75).
age(joel, 76).
age(joey, 45).
age(andrew, 15).
age(paul, 50).
age(chris, 31).
age(grey, 3).
age(cliff, 49).
age(cayden, 7).
age(travis, 32).
age(brair, 12).
age(ron, 90).
age(tommy, 91).
age(jim, 80).
age(george, 101).
age(bruce, 102).
age(ted, 103).
age(viktor, 104).
age(larry, 69).
age(gary, 23).
age(nolan, 21).
age(robert, 150).
age(juan, 109).
age(jordan, 79).
age(brad, 52).
age(nate, 28).

age(ashley, 24).
age(tara, 43).
age(reese, 10).
age(tori, 18).
age(mattie, 16).
age(ciel, 8).
age(evalee, 17).
age(michaela, 20).
age(lizzy, 14).
age(ruby, 13).
age(kelly, 37).
age(debby, 46).
age(leann, 30).
age(erin, 40).
age(deanna, 29).
age(sandy, 82).
age(diane, 72).
age(kathy, 73).
age(mabel, 100).
age(esther, 99).
age(olga, 98).
age(victoria, 97).
age(heather, 41).
age(mathilda, 149).
age(sarah, 108).
age(megan, 78).
age(erika, 51).

/* My dad's children */
child(matt, marty).
child(ashley, marty).

/* My grandpa's children (Aunts and Uncles) */
child(marty, john).
child(joey, john).
child(chris, john).
child(debby, john).
child(tara, joel).
child(erin, joel).
child(deanna, joel).

/* My uncles children (Cousins) */
child(andrew, joey).
child(reese, joey).
child(tori, paul).
child(mattie, paul).
child(ciel, chris).
child(grey, chris).
child(cayden, cliff).
child(evalee, cliff).
child(michaela, cliff).
child(lizzy, travis).
child(briar, travis).
child(ruby, travis).

/* My mom's children */
child(matt, tara).
child(ashley, tara).

/* My grandma's children (Aunts and Uncles) */
child(marty, diane).
child(joey, diane).
child(chris, diane).
child(debby, diane).
child(tara, kathy).
child(erin, kathy).
child(deanna, kathy).

/* My aunts children (Cousins)*/
child(reese, kelly).
child(andrew, kelly).
child(tori, debby).
child(mattie, debby).
child(ciel, leann).
child(grey, leann).
child(cayden, erin).
child(evalee, erin).
child(michaela, erin).
child(lizzy, deanna).
child(briar, deanna).
child(ruby, deanna).

/* My Grandma's (Diane, Kathy) Brothers and Sisters (Great Granparents are their parents) */
child(diane, mabel).
child(ron, mabel).
child(sandy, mabel).
child(diane, george).
child(ron, george).
child(sandy, george).
child(kathy, victoria).
child(kathy, ted).

/* My Grandpa's (Joel, John) Brothers and Sisters (Great Granparents are their parents) */
child(tommy, bruce).
child(jim, bruce).
child(john, bruce).
child(tommy, esther).
child(jim, esther).
child(john, esther).
child(joel, olga).
child(joel, viktor).

/* Grandma's Brothers children (my parents cousins, and their children) */
child(larry, ron).			
child(gary, larry).			

/* Grandma's Sisters children (my parents cousins, and their children) */
child(heather, sandy).		
child(nolan, heather).		

/* 3rd Cousin Side of family */
child(george, robert).		
child(george, mathilda).	
child(juan, robert).		
child(juan, mathilda).
child(jordan, juan).		
child(jordan, sarah).
child(brad, megan).			
child(brad, jordan).
child(nate, erika).			
child(nate, brad).
