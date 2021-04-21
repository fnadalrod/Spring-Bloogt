/* Populate tables */


# Both passwords are 123456
INSERT INTO user (id, username, password, avatar, created_at,  surname,email) VALUES(1, 'admin', '$2y$12$SYLrbQlVDMzd85Y12NHXIuPK32cDG5U1/57h0DvrijjcO//IV.rvy', 'noAvatar.jpg', "2019-12-13 11:32:45",  '','admin@SpringBloogt.com');
INSERT INTO user (id, username, password, avatar, created_at,  surname,email) VALUES(2, 'pleb', '$2y$12$7heln3AQZ6sT2PuJuf7l2u2hespbMx8Kb4zirLRiEpPmyPFnkgbya', 'noAvatar.jpg', "2019-12-13 11:32:45",  '','pleb@SpringBloogt.com');
INSERT INTO user (id, username, password, avatar, created_at,  surname,email) VALUES(3, 'moderator', '$2y$12$7heln3AQZ6sT2PuJuf7l2u2hespbMx8Kb4zirLRiEpPmyPFnkgbya', 'noAvatar.jpg', "2019-12-13 11:32:45",  '','moderator@SpringBloogt.com');
INSERT INTO user (id, username, password, avatar, created_at,  surname,email) VALUES(4, 'regularUser', '$2y$12$7heln3AQZ6sT2PuJuf7l2u2hespbMx8Kb4zirLRiEpPmyPFnkgbya', 'noAvatar.jpg', "2019-12-13 11:32:45",  '','regularuser@SpringBloogt.com');


INSERT INTO `user_following` (following_id, user_id) VALUES (1,2);
INSERT INTO `user_following` (following_id, user_id) VALUES (2,1);
INSERT INTO `user_following` (following_id, user_id) VALUES (3,1);

INSERT INTO `authorities` (user_id, authority) VALUES (1,'ROLE_USER');
INSERT INTO `authorities` (user_id, authority) VALUES (2,'ROLE_USER');
INSERT INTO `authorities` (user_id, authority) VALUES (1,'ROLE_MODERATOR');
INSERT INTO `authorities` (user_id, authority) VALUES (1,'ROLE_ADMIN');
INSERT INTO `authorities` (user_id, authority) VALUES (3,'ROLE_MODERATOR');
INSERT INTO `authorities` (user_id, authority) VALUES (3,'ROLE_USER');
INSERT INTO `authorities` (user_id, authority) VALUES (4,'ROLE_USER');
/*
INSERT INTO category(id, name) VALUES(1, "Health");
INSERT INTO category(id, name) VALUES(2, "Science");

INSERT INTO post (`id`,`content`,`created_at`,`image_post`,`times_viewed`,`title`,`category_id`,`user_id`) VALUES (5,'<p><span style=\"font-size: 24px;\">Researchers used thermal radiation data to find patterns in recent eruptions&mdash;providing another metric to help get ahead of a potentially deadly blast.</span></p><p><br></p><p>JUST AS WE can often spot the beginnings of an illness from a number of signs, there are symptoms of volcanic activity that can indicate a growing likelihood of eruption. Monitoring them can involve detecting surface changes and small earthquakes caused by the movement of magma inside a volcano, or measuring changes in gases emitted from vents. Signs like these are used to raise alerts and trigger evacuations, and they have saved lives. But they aren&rsquo;t always perfect.</p><p>Japan&rsquo;s Mount Ontake erupted in 2014 without warning, for example, killing more than 60 people. So additional methods for detecting volcanic activity are always welcome, especially if they involve subtler signs that could be overlooked. A new study from a Jet Propulsion Laboratory group led by T&aacute;rsilo Girona highlights the possibility that presently available satellite data could provide an entirely new way to warn of eruptions.</p><p><br></p><p>Heat is obviously a relevant parameter for volcanic activity, but it can be quite variable at the individual spots where you might set up a thermometer. If we could instead measure all the heat coming out of a volcano, it would be quite meaningful, since the majority of volcanic energy gets released as heat.</p><p><br></p><p>To attempt this, the team turned to thermal radiation data from NASA&rsquo;s Terra and Aqua satellites. Combined, these two provide twice-daily passes with global coverage, and each measurement is integrated over a 1 kilometer by 1 kilometer pixel. There are five volcanoes that have both had significant eruptions since 2002 (when these satellites came online) and aren&rsquo;t located on islands that are too small to span enough pixels for a good signal. These include Ontake in Japan, Ruapehu in New Zealand, Calbuco in Chile, Redoubt in Alaska, and Pico do Fogo in Cape Verde.</p><p><br></p><p>Increasing temperature trends were seen over the two- to four-year periods preceding each eruption&mdash;including Ontake&rsquo;s surprise 2014 eruption. Temperatures only increased by 1 degree C or less in the lead-up to each event, but these were statistically significant trends and not just noise. The peak temperatures in each record were associated with an eruption.</p><p><br></p><p>The researchers say this might represent a combination of two processes. First, magma progressing closer to the surface&mdash;and releasing gases&mdash;could stimulate hydrothermal circulation, carrying heat to warm the surface from below. Second, if this pushes more moisture into the soil layer, the ground could emit thermal radiation more efficiently and so appear &ldquo;brighter&rdquo; to the satellites. Either way, these subtle changes seem easily detectable in the satellite data.</p><p><br></p><p>This provides another meaningful metric helping to fill out a complete picture of volcanic activity. It could also make it easier to study the total heat budget of a volcano&mdash;the balance of energy coming in from below, and when and where it all gets released. Combined with other monitoring tools, the satellite data could easily be used to increase the confidence of alert levels, placing short-lived events in a longer-term context. And the more symptoms we watch for, the less likely we are to miss important warning signs.</p><p><br></p><p><em style=\"box-sizing: border-box; line-height: inherit; color: rgb(26, 26, 26); font-family: BreveText, helvetica, sans-serif; font-size: 18px; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.108px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">This story originally appeared on</em><span style=\"color: rgb(26, 26, 26); font-family: BreveText, helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.108px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;</span><a data-event-click=\'{\"element\":\"ExternalLink\",\"outgoingURL\":\"https://arstechnica.com/science/2021/03/satellites-detect-volcanoes-heating-up-before-they-blow/\"}\' href=\"https://arstechnica.com/science/2021/03/satellites-detect-volcanoes-heating-up-before-they-blow/\" rel=\"nofollow noopener\" style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); cursor: pointer; color: rgb(26, 26, 26); transition: color 200ms ease 0s; line-height: inherit; text-decoration: underline; font-family: BreveText, helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.108px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\" target=\"_blank\"><em style=\"box-sizing: border-box; line-height: inherit;\">Ars Technica</em></a><em style=\"box-sizing: border-box; line-height: inherit; color: rgb(26, 26, 26); font-family: BreveText, helvetica, sans-serif; font-size: 18px; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.108px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">.</em> </p>','2021-03-19 00:19:55.497000','https://www.lux-review.com/wp-content/uploads/2020/02/Lux-Volcano.jpg',1,'Satellites Can Help Detect When a Volcano\'s About to Blow',2,1);
INSERT INTO post (`id`,`content`,`created_at`,`image_post`,`times_viewed`,`title`,`category_id`,`user_id`) VALUES (6,'<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">As mounting evidence points to the link between cardiovascular disease and dementia, a new study led by UC San Francisco finds that young adulthood may be the most critical period to practice the healthy lifestyle habits that may protect the brain from cognitive decline decades later.</p><div style=\"border: 0px; margin: 8px auto; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center; display: block; clear: both;\"><br></div><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">The study found that high body mass index (BMI), high glucose and hypertension in early adulthood &ndash; risk factors that are linked to unhealthy diet, smoking and sedentary lifestyle &ndash; were associated with the greatest change in cognition in late life compared with other stages of adulthood. These risks factors amounted to a doubling of the average rate of cognitive decline, the researchers found in their study, publishing in the online issue of <a href=\"https://n.neurology.org/content/early/2021/03/17/WNL.0000000000011747\" style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; text-decoration: none; color: rgb(30, 115, 190);\"><em style=\"border: 0px; margin: 0px; padding: 0px; font-style: italic;\">Neurology</em></a> on March 17, 2021.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Obesity alone &ndash; a BMI of over 30 &ndash; during young adulthood was also associated with double the average rate of cognitive decline in late life, and a similar impact was noted with high systolic blood pressure, a type of hypertension. While the study found that cholesterol was not associated with greater decline in later cognition, they found a pronounced drop related to high blood glucose levels in early adulthood.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">To arrive at these results, the researchers combined data from four studies that followed a total of approximately 15,000 adults, whose ages at enrollment ranged from 18 to 30 and 45 to 95. Cognitive skills and processing speeds were tested every one to two years, with BMI, blood glucose levels, blood pressure and cholesterol checked at least three times over the course of the study.</p><div style=\"border: 0px; margin: 8px auto; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center; display: block; clear: both;\"><br></div><h2 style=\"border: 0px; margin: 0px 0px 20px; padding: 0px; font-family: sans-serif; font-size: 25px; font-style: normal; font-weight: 300; line-height: 1.2em; text-transform: none; color: rgb(58, 58, 58); font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;Promising Modifiable Risk Factors&rsquo;</h2><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">While previous research has established an association between midlife cardiovascular risk factors and worse cognitive outcomes in late life, little has been known about the impact of these risk factors in early adulthood, said first author <a href=\"https://profiles.ucsf.edu/kristine.yaffe\" style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; text-decoration: none; color: rgb(30, 115, 190);\">Kristine Yaffe</a>, MD, of the UCSF departments of psychiatry and neurology, and epidemiology and biostatics, and of the <a href=\"https://www.sanfrancisco.va.gov/\" style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; text-decoration: none; color: rgb(30, 115, 190);\">San Francisco VA Medical Center</a>.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Cardiovascular risk factors are among the most promising modifiable risk factors for prevention of cognitive aging and dementia,&rdquo; said Yaffe, also of the <a href=\"https://weill.ucsf.edu/\" style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; text-decoration: none; color: rgb(30, 115, 190);\">UCSF Weill Institute for Neurosciences</a>. &ldquo;Our findings suggest that attention should be broadened to consider early adult cardiovascular health, since increasing trends in diabetes and obesity in this age group, coupled with a higher level of underdiagnosed risk factors could have significant public health implications for cognitive health.&rdquo;</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Mechanisms that tie cardiovascular risk factors with cognitive decline include elevated inflammation and oxidative stress that may disrupt blood flow to the brain, increase stiffness of the arteries and impair the blood-brain barrier. Research has also shown that these risk factors may increase the buildup of amyloid plaques, a signature of Alzheimer&rsquo;s disease.</p><div style=\"border: 0px; margin: 8px auto; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center; display: block; clear: both;\"><br></div><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">The participants had been recruited in the Coronary Artery Risk Development in Young Adults (CARDIA) study, Multi-Ethnic Study of Atherosclerosis (MESA), Cardiovascular Health Study (CHS) and Health, Aging and Body Composition study (Health ABC) and were followed from 10 to 30 years. Since the researchers wanted to look at trends over several decades, they used data from the younger cohorts to impute cardiovascular risk factors across the life course. They then examined the association between those risk factors and the late-life cognitive decline identified in older cohorts.</p><h2 style=\"border: 0px; margin: 0px 0px 20px; padding: 0px; font-family: sans-serif; font-size: 25px; font-style: normal; font-weight: 300; line-height: 1.2em; text-transform: none; color: rgb(58, 58, 58); font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Increasing Obesity May Signal More Dementia Decades Later</h2><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">The study raises questions about future generations of elderly people dealing with cognitive decline that may have been exacerbated by poor lifestyle habits in young adulthood. According to the Centers for Disease Control and Prevention, the prevalence of obesity was 40 percent among adults in their 20s and 30s in 2017 to 2018, compared with an overall adult obesity rate of 10 percent in the 1950s.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;It&rsquo;s important to note that the study shows an association, not a cause-and-effect relationship, between cardiovascular risks in young adulthood and cognitive impairment in late life,&rdquo; said Yaffe. &ldquo;The good news is that although we are seeing more dementia with the aging of the population, the incidence of dementia, at least in wealthier countries, has fallen. This could be attributed to improved education and access to health care, as well as better treatment of cardiovascular risk factors.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;But we should be concerned about population trends in obesity, as well as diabetes and sedentary behavior. And we should consider that despite improvements in treatment, cardiovascular risk factors go undiagnosed and untreated, especially in younger adults.&rdquo;</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700;\">Co-Authors:</strong> <a href=\"https://profiles.ucsf.edu/eric.vittinghoff\" style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; text-decoration: none; color: rgb(30, 115, 190);\">Eric Vittinghoff</a>, PhD, of UCSF; Tina Hoang, MSPH, of Northern California Institute for Research and Education; Karen Matthews, PhD, of University of Pittsburgh; Sherita Golden, MD, MHS, of Johns Hopkins University and Adina Zeki Al Hazzouri, PhD, of Columbia University.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700;\">Funding:</strong> National Institutes of Health and National Institute on Aging.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700;\">Disclosures:</strong> Kristine Yaffe, MD, serves on data and safety monitoring boards for Eli Lilly and a trial sponsored by the National Institute on Aging. She is a board member of Alector, and a member of the Beeson Scientific Advisory Board and the Global Council on Brain Health.</p>','2021-03-19 00:22:31.971000','https://scienceblog.com/wp-content/uploads/2021/03/To-Keep-a-Sharp-Mind-Start-Thinking-of-Heart-Health-in-Your-20s--300x200.jpeg',1,'To Keep A Sharp Mind, Start Thinking Of Heart Health In Your 20s',1,1);
INSERT INTO post (`id`,`content`,`created_at`,`image_post`,`times_viewed`,`title`,`category_id`,`user_id`) VALUES (7,'<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">In response to the recent freeze-inspired power outages in Texas, some politicians blamed the historic blackouts on wind turbines. The dubious, and largely dismissed, claims nevertheless spotlighted an intriguing fact: Texas, the land made famous by oil derricks and wildcatters, now gets a significant portion of its electricity from clean, renewable sources, most notably wind, but also from water and solar &ndash; a troika of sustainability known collectively as WWS.</p><div style=\"border: 0px; margin: 8px auto; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center; display: block; clear: both;\"><br></div><div style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div style=\"border: 0px; margin: 0px; padding: 0px;\" tabindex=\"0\"><div style=\"border: 0px; margin: 0px; padding: 0px;\"><div style=\"border: 0px; margin: 0px; padding: 0px;\"><div style=\"border: 0px; margin: 0px; padding: 0px;\"><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">&ldquo;Texas gets about 20 percent of its electricity from wind alone,&rdquo; says <a href=\"https://profiles.stanford.edu/mark-jacobson\" style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; text-decoration: none; color: rgb(30, 115, 190);\">Mark Z. Jacobson</a>, a professor of civil and environmental engineering at Stanford University and senior fellow at the <a href=\"https://woods.stanford.edu/\" style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; text-decoration: none; color: rgb(30, 115, 190);\">Stanford Woods Institute for the Environment</a>, who is author of a new study appearing in the journal <em style=\"border: 0px; margin: 0px; padding: 0px; font-style: italic;\">Smart Energy</em> looking at the future of smart grids.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">Jacobson used computer models to show that wind turbines, averaged over large regions, actually ramp up their power during cold snaps, when demand for home and business heating is the greatest.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">Furthermore, he concludes that wind &ndash; when combined with solar and water power, various energy storage systems and incentives for people to shift the time of some of their electricity use &ndash; could meet not only all electricity needs worldwide, but all energy demand in total, every minute of such crises.</p><div style=\"border: 0px; margin: 8px auto; padding: 0px; text-align: center; display: block; clear: both;\"><br></div><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">Jacobson&rsquo;s research investigated the ability of low-cost networks of renewable sources to meet demand worldwide, including in the United States, through the coldest of times so as to avoid blackouts. In particular, he wanted to answer a critical question: Can renewables do it all through the worst weather? According to his model, there is a direct connection between cold weather and wind power output. That is, winds tend to increase as the weather grows colder, precisely as demand for heat increases. Jacobson says that wind generation doesn&rsquo;t simply hold its own through the coldest days, but actually rises to the moment when it is needed most. As the weather turns coldest, wind heats up.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">Applying those findings to the real world, Jacobson thinks that, had all of the wind turbines in Texas been properly winterized, or protected from extreme cold, during the February 2021 freeze, they would have provided critical power to Texans throughout the cold snap and helped to prevent blackouts from occurring.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">The study also investigated issues revolving around output stability. Winds don&rsquo;t blow continuously, and cloud cover and nightfall limit the reliability of solar power. But according to Jacobson, wind and solar output are, in fact, correlated in an inverse and advantageous way. On the whole, when the wind is not blowing, the sun is usually shining during the day. Conversely, at times when the sun&rsquo;s rays are blocked by storm cloud cover, winds tend to pick up, sending the turbines spinning.</p><div style=\"border: 0px; margin: 8px auto; padding: 0px; text-align: center; display: block; clear: both;\"><br></div><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">Jacobson&rsquo;s models show that, when averaged over a large area, wind and solar energy generation are complementary to one another during the day. One fills in when the other is lagging.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">In the last part of his paper, Jacobson tackles what may be the biggest lingering concern about renewables, whether they can singularly meet total global demand in the coldest or hottest weather. The answer to this question gets to the heart of whether renewables might someday prove reliable enough to supplant fossil fuels altogether.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">To answer this question, Jacobson considered 24 large renewable-only (WWS) grid regions across 143 nations throughout the world. He found low-cost solutions everywhere he looked. In large cold regions, such as in Canada, Russia, Europe, the United States and China, the increased demand for heating was frequently accompanied by rising wind energy output. In most other regions, only moderate correlations were found, but they were still enough to meet demand.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">The findings have implications not only for energy security but also for climate-change mitigation strategies and public health. Seven million people, including about 78,000 in the United States, die each year from air pollution largely the result of fossil fuel consumption, Jacobson points out in the paper. These deaths can be avoided by transitioning to WWS energy.</p><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">&ldquo;In most climates, these models shows that wind energy can help meet rising seasonal heat demand, even through the coldest of times, and it can do it while reducing the cost of energy, saving people&rsquo;s lives and creating millions more jobs than lost worldwide,&rdquo; Jacobson said.</p><div style=\"border: 0px; margin: 0px; padding: 0px;\"><p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px;\">To read all stories about Stanford science, subscribe to the biweekly<em style=\"border: 0px; margin: 0px; padding: 0px; font-style: italic;\">&nbsp;<a href=\"http://eepurl.com/dLmCng\" style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; text-decoration: none; color: rgb(30, 115, 190);\">Stanford Science Digest</a>.</em></p></div></div></div></div></div></div>','2021-03-19 00:25:25.285000','https://scienceblog.com/wp-content/uploads/2021/03/wind-energy-output-increases-when-people-need-heat-the-most-300x200.jpeg',1,'Wind Energy Output Increases When People Need Heat The Most',2,1);
INSERT INTO post (`id`,`content`,`created_at`,`image_post`,`times_viewed`,`title`,`category_id`,`user_id`) VALUES (8,'dargsdfgsdfg<p>iujn<span class="fr-emoticon fr-deletable fr-emoticon-img" style="background: url(https://cdnjs.cloudflare.com/ajax/libs/emojione/2.0.1/assets/svg/1f600.svg);">&nbsp;</span>&nbsp;</p>','2021-03-19 00:25:25.285000','',1,'Emoji TEST',2,1);


INSERT INTO comments(id, message, removed_by_moderator, user_id, post_id, created_at) VALUES(1,"First Comment",0, 1,7,"2021-11-05 18:06:12");
INSERT INTO comments(id, message, removed_by_moderator, user_id, post_id, created_at) VALUES(2,"Second comment",0, 2,9,"2016-11-05 18:06:12");
INSERT INTO comments(id, message, removed_by_moderator, user_id, post_id, created_at) VALUES(3,"Third comment",0, 3,7,"2018-11-05 18:06:12");
INSERT INTO comments(id, message, removed_by_moderator, user_id, post_id, created_at) VALUES(4,"Fourth comment",0, 4,8,"2019-11-05 18:06:12");
INSERT INTO comments(id, message, removed_by_moderator, user_id, post_id, created_at) VALUES(5,"Sixth comment",0, 1,7,"2015-11-05 18:06:12");
INSERT INTO comments(id, message, removed_by_moderator, user_id, post_id, created_at) VALUES(6,"Seventh comment",0, 3,8,"2014-12-13 11:32:45");
INSERT INTO comments(id, message, removed_by_moderator, user_id, post_id, created_at) VALUES(7,"Eight comment",0, 2,7,"2023-06-09 17:12:00");

INSERT INTO hashtag(id, name) VALUES(1, "Heart");
INSERT INTO hashtag(id, name) VALUES(2, "Health");
INSERT INTO hashtag(id, name) VALUES(3, "Mind");
INSERT INTO hashtag(id, name) VALUES(4, "Volcano");
INSERT INTO hashtag(id, name) VALUES(5, "Satelite");
INSERT INTO hashtag(id, name) VALUES(6, "Energy");
INSERT INTO hashtag(id, name) VALUES(7, "Heat");
INSERT INTO hashtag(id, name) VALUES(8, "Wind");


INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(5, 4);
INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(5, 5);

INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(6, 3);
INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(6, 2);
INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(6, 1);

INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(7, 6);
INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(7, 7);
INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(7, 8);
*/