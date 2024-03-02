/*country
consult("JOJO_Akinator.pl").
*/
          
country(jonathan_joestar, 0).
country(dio_brando, 0).
country(robert_e_o_speedwagon, 0).
country(will_a_zeppel, 1).
country(erina_pendleton, 0).
country(joseph_joestar, 0).
country(rudol_von_stroheim, 2).
country(caesar_anthonio_zeppeli, 1).
country(esidisi, 3).
country(wamuu, 3).
country(kars, 3).
country(lisa_lisa, 1).
country(suzi_q, 5).
country(jotaro_kujo, 4).
country(mohammed_avdol, 6).
country(noriaki_kakyoin, 4).
country(jean_pierre_polnareff, 6).
country(iggy, 6).
country(josuke_higashikata, 4).
country(yoshikage_kira, 0).
country(koichi_hirose, 4).
country(okuyasu_nijimura, 4).
country(rohan_kishibe, 4).
country(giorno_giovanna, 1).
country(bruno_bucciarati, 1).
country(leone_abbacchio, 1).
country(guido_mista, 1).
country(narancia_ghirga, 1).
country(pannacotta_fugo, 1).
country(trish_una, 1).
country(diavolo, 1).
country(jolyne_cujoh, 5).
country(enrico_pucci, 5).
country(emporio_alnino, 5).

gender(jonathan_joestar, 0).
gender(dio_brando, 0).
gender(robert_e_o_speedwagon, 0).
gender(will_a_zeppel, 0).
gender(erina_pendleton, 1).
gender(joseph_joestar, 0).
gender(rudol_von_stroheim, 0).
gender(caesar_anthonio_zeppeli, 0).
gender(esidisi, 0).
gender(wamuu, 0).
gender(kars, 0).
gender(lisa_lisa, 1).
gender(suzi_q, 1).
gender(jotaro_kujo, 0).
gender(mohammed_avdol, 0).
gender(noriaki_kakyoin, 0).
gender(jean_pierre_polnareff, 0).
gender(iggy, 0).
gender(josuke_higashikata, 0).
gender(yoshikage_kira, 0).
gender(koichi_hirose, 0).
gender(okuyasu_nijimura, 0).
gender(rohan_kishibe, 0).
gender(giorno_giovanna, 0).
gender(bruno_bucciarati, 0).
gender(leone_abbacchio, 0).
gender(guido_mista, 0).
gender(narancia_ghirga, 0).
gender(pannacotta_fugo, 0).
gender(trish_una, 1).
gender(diavolo, 0).
gender(jolyne_cujoh, 1).
gender(enrico_pucci, 0).
gender(emporio_alnino, 0).

main(jonathan_joestar, 1).
main(dio_brando, 1).
main(robert_e_o_speedwagon, 0).
main(will_a_zeppel, 0).
main(erina_pendleton, 0).
main(joseph_joestar, 1).
main(rudol_von_stroheim, 0).
main(caesar_anthonio_zeppeli, 0).
main(esidisi, 0).
main(wamuu, 0).
main(kars, 0).
main(lisa_lisa, 0).
main(suzi_q, 0).
main(jotaro_kujo, 1).
main(mohammed_avdol, 0).
main(noriaki_kakyoin, 0).
main(jean_pierre_polnareff, 0).
main(iggy, 0).
main(josuke_higashikata, 1).
main(yoshikage_kira, 0).
main(koichi_hirose, 0).
main(okuyasu_nijimura, 0).
main(rohan_kishibe, 0).
main(giorno_giovanna, 1).
main(bruno_bucciarati, 0).
main(leone_abbacchio, 0).
main(guido_mista, 0).
main(narancia_ghirga, 0).
main(pannacotta_fugo, 0).
main(trish_una, 0).
main(diavolo, 0).
main(jolyne_cujoh, 1).
main(enrico_pucci, 0).
main(emporio_alnino, 0).

question1(X1):-	write("In what country was the character born?"),nl,
                write("6. IDK"),nl,
                write("5. USA"),nl,
				write("4. Japan"),nl,
                write("3. Pangea"),nl,
				write("2. Germany"),nl,
				write("1. Italy"),nl,
				write("0. England"),nl,
				read(X1).

question2(X2):-	write("What gender is the character?"),nl,
				write("1. Female"),nl,
				write("0. Male"),nl,
				read(X2).

question3(X3):-	write("Is this the main character?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X3).
		

pr:-	question1(X1), question2(X2),question3(X3),
        country(X,X1),gender(X,X2),main(X,X3),
		write(X).



