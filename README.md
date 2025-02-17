# Netflix Dashboard
# Table of Contents
- [Project Background](#Project-Background)
- [Executive Summary](#Executive-summary)
- [North Star Metrics](#North-Star-Metrics)
- [Insights]:(#insights)
	- [Genre Analysis by Release Year](##Genre-Analysis-by-Release-Year)
	- [Age Certifications](##Genre-analysis-by-Age-certifications)
	  	- [Targeting  Youths](###Media-targeting-Young-Audiences (G, PG-13, TV-G, TV-PG14, TV-Y, TV-Y7))
      - [Targeting General Audience](###Media-targeting-General-Audiences (PG, G,TV-G, TV-PG))
      - [Targeting Adults](###Media-targeting-Ages-18-and-Above (G, NC-17, R, TV-G, TV-MA))
- [Project Background](#Project-Background)
-[Recommendations](#Recommendations)
- [Clarifying Questions and Assumptions](#Clarifying-Questions-and-Assumptions)
# Project Background:
-  Explored Netflix catalogues of about 9000 movies and 5600 shows, which correlate to 377M votes on IMDB. The catalogue contains media released from 1945-2022. Overlap with IMDB customers is desirable as they provide high visibility and engagement for the product with voting. This analysis seeks to find insights and make recommendations on genre performance relative to IMDB voter base.
# Executive summary:
-  Netflix library contains 14,600 titles, with over half of them released during years 2010-2019. The most popular movie genres are Drama, Thriller and Action.  While the most popular shows genres are Drama, Thriller Comedy. Media with age certifications R, PG-13, PG, TV-MA, TV-14 have higher vote numbers. Where adult facing content with R or TV-MA have the highest vote count, followed by PG-13 and TV-14 content. 
# North Star Metrics
- **Total Votes:** Votes from IMDB
- **Number of Titles:** Number of titles in Netflix’s Library
- **Average votes per title:** Total votes  /  Number of Titles
- **Project type:** Movies, Shows, Genres(* * )
- **Plan period:** Release Years, * *Grouped by  1945-1999, 2000-2009, 2010-2019, 2020, 2021, 2022* *
- **Age grouping: ** Splitting age demographic by targeted age certifications
  - * *Youths [G, PG-13  	 | 	 TV-G, TV-PG14, TV-Y, TV-Y];* *
  - * *Adults [G, NC-17, R	 |	TV-G, TV-MA];* *
  - * *General Audience [G, PG 	|	TV-G, TV-PG ]* *
# Insights
## Genre Analysis by Release Year
- In total, there are 281M votes for Movies, and 118M total for Shows. Of that 57% of movie and 67% of show votes come from between years 2010-2019.
- Votes tend to back loaded. [2020-2023] accounts for ~27% of all movies titles, but had less total votes then years [2000-2009] (accounting for 10% of movie titles).
- Highest engagement genres for movies are Drama, Thriller and Action.
  - Although Drama has low average votes per title, despite their high quantity.
- For Shows highest engagement genres were Drama, Thriller and Sci-Fi.
- Western and European genres have little new releases from 2022-2023 for both Movies and Shows.
  ![image](https://github.com/user-attachments/assets/c190a1e8-f5bd-4b3d-a0fd-92a285430f0e)

## Genre analysis by Age certifications.
- Age certifications R, PG 13, and PG are the highest engagement categories for Movies
- Age certifications TV-14 and TV-MA are the highest engagement categories for Show
- G, NC-17, TV-Y7, TV-Y, TV-G, TV-PG has low conversion of voters among IMDB voters.
- For movies, G and NC-17 account for 8% of all movie titles but only 1% of Total Votes.
-  For shows, TV-Y7,TV-Y,TV-G,TV-PG account for 30% of all show titles, but only 10% of total votes.
  ![image](https://github.com/user-attachments/assets/02a98326-91f6-4b05-9eba-28d38d7477a1)

### Genre recommendations for Media targeting Young Audiences (G, PG-13, TV-G, TV-PG14, TV-Y, TV-Y7)
  Movies –
- The highest engagement genres are Drama, Thriller, Action, Comedy, and Romance.
- Thriller, Action, and Horror have above average relative voting engagement (>67k) and quantity (>75) 
- War, Music, Sci-Fi, European, and Western have above average relative engagement but low quantities.<br/>
  Shows –<br/>
- The highest engagement genres are Drama, Sci-Fi, Fantasy, Thriller, and Action
- Sci-Fi, Fantasy, and Drama are above average in relative votes (>22k) and quantity (>119).
- Horror, Thriller, Crime, and Western are above average in relative votes, but below in quantity.
  ![image](https://github.com/user-attachments/assets/f825c5b7-13a6-45f8-9e78-806484922f8f)

### Media targeting General Audiences (PG, G,TV-G, TV-PG )
  Movie – 
- The highest active engagement genres are Comedy, Family, Fantasy, Drama, and Animation
- Fantasy, Animation, Romance, Family, Drama, and Comedy have higher than average relative votes (>26k) and quantities (>55).
- War, European, Sci-Fi and Action genres are above average relative votes, but below average quantities.
  Shows –<br/>
- The highest active engagement genres are Comedy, Action, Drama, Sci-fi, and Family
- Sci-Fi and Action have higher than average votes (>14k) and quantity (>36), 
- War and Thriller shows have the highest relative engagement but below average quantities.
 ![image](https://github.com/user-attachments/assets/2f010cf5-9745-4662-9191-c36cba45215d)

### Media targeting Ages 18 and Above (G, NC-17, R, TV-G, TV-MA)
  Movies –
- The highest engagement genres are Drama, Thriller, Crime, Action, and Comedy
- Comedy, Action, Thriller, and Drama are genres with higher than average relative engagement (>67k) and quantity (>98).
- Western, War, European, and Sci-Fi movies are among the highest average relative votes, but are below average in quantity
  Shows –<br/>
- The highest engagement genres are Drama, Thriller, Crime, Sci-Fi, and Action
- Sci-Fi, Thriller, Action, Crime and Drama have above average relative votes (>23k) and quantity (>127).
- European, Horror, and Fantasy shows have above average relative engagement but below average in quantity.
![image](https://github.com/user-attachments/assets/1e5ea595-f8eb-4382-8453-23803efd9874)
  
# Recommendations:
***
- Improving voting rate of newer titles
  - Running campaigns around recommending recent titles can help boost view counts and increase voting.
***
- Western and European genre and low release count.
  - Explore further reasons for fewer productions involving western and European genres. Potentially promote these genres for movies, as they have high average engagement.
***
- Genre recommendations for targeting Youth audience, *Ages: 13 and below*
  - Movies–
    - Increasing Thriller, Action movies. As these genres have high average relative votes despite their large catalogue sizes.
    -Higher Risk: Increase War, Music, Sci-Fi, European, History and Western movies. These genres have high active engagement potential.
  - Shows–
    - Increase Fantasy, Sci-Fi and Drama shows, since they are high quantity genre that maintain above average relative votes.
    - Higher Risk: Increase Crime, Western, Horror, and Thriller Shows. These have high active engagement potential.
***
- Genre recommendations for targeting General Audiences.
  - Movies–
    - Increase Fantasy, Animation, Romance, Family, Drama, and Comedy movies. These categories maintain high average relative votes despite their large catalogue sizes.
    -Higher Risk: Increase War, Sci-Fi, and Action movies. As they have high active engagement potential. 
  - Shows–
    - Increase Sci-Fi and Action shows, since they are high quantity genres that maintain above average relative votes.
    - Higher Risk: Increase War and Thriller shows. These have high active engagement potential.
***
- Genre recommendations for targeting adult audience *Ages: 18 and above*
  - Movies–
    - Increasing Crime, Action, Thriller, and Drama movies. As these categories maintain high average relative votes despite their large catalogue sizes.
    -Higher Risk: Increase Western, War, European, and Sci-Fi movies. These have high active engagement potential.
  - Shows–
    - Increase Sci-Fi, Crime, Action, and Drama shows, since they are high quantity genre that maintain above average relative votes.
    - Higher Risk: Increase War, European, Horror Fantasy shows. These have high active engagement potential.
***
# Clarifying Questions and Assumptions
## Clarifying questions:
- [type]
  - How to treat rows with multiple genre entries?
-  [imdb_score] and [imdb_votes].
    - What to do with null values?
    - Which measure better represent engagement. Or is there a weighted scale?
    - Should we include ratings with low votes?
- [id] and [imdb_id]
  - What is the relationship between Netflix customers and imdb voter, is there any crossover/ desirable traits.
  - What is the customer crossover of Netflix and IMDB voters?
- [age_certification]
  - What does each certification represent?
  - What age groups correlate with each certification?
  - How should youth category be delineated?
## Assumptions and Caveats
- Scope of null values. Null values are left for cumulative table as it is meant to represent all titles. But depending on question, will remove null values to fit scope of question.
- IMDB voters represent customers that are in high engagement with movies
  - Where low engagement represent just watching, and high being those that are willing to rate on a website.
- Young audiences are unlikely participants of IMDB’s ecosystem.
-    Their votes are more likely from their guardian or older aged watchers. These are harder to understand without more specific viewer data and will be instead grouped with 'Ages 13 and below' category for analysis.

