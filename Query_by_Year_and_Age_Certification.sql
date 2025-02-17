WITH TypeFilter AS ( -- Alows a specific type filtering by "MOVIE", "SHOW", or all (comment the WHERE in line8). OUTPUT: id, type, release_year, age_certification,genre,imdb_vote,imdb_score
    SELECT
        id, ---STR:
        type, ---STR:
        release_year, ---INT:
        age_certification, ---STR:
        genres, ---STR: 
        imdb_votes, ---INT:
        imdb_score ---float:
    FROM raw_titles
    WHERE imdb_votes IS NOT NULL
    AND imdb_score IS NOT NULL
    ---AND type = "MOVIE"   ---Can set specific type filter here "MOVIES" or "SHOW", or comment line for both
),
Breakdown AS ( --- Breaking apart genre string and grouping
    SELECT
        STRING_SPLIT(genres, ',') AS splitgenre, ---STR:
            ---Splits array string by ',', since specific compiler lacks array unnesting.
        type, ---STR:
        release_year, ---INT:
        age_certification, ---STR:
        COUNT(id) AS totalmedia, ---INT:
            ---Counts # of movies/shows (from id) as _totalmedia
        SUM(imdb_votes) AS _imdb_votes ---INT:
            ---Aggregates imdb_votes values across GROUP by splitgenre, type, release_year
    FROM TypeFilter
    GROUP BY splitgenre, type, age_certification, release_year
    ),
Replacement AS ( ---Cleaning up the messy broken up string syntax
    SELECT 
        Replace(REPLACE(Replace(Replace(splitgenre, "\\[\\]", "Missing Genre"), '\\[', ''), '\\]', ''), "'", '') AS _genre,--- STR: 
            ---Replaces [ -> , [ -> , '' -> , null -> Missing Genre
        type, ---STR:
        release_year, ---INT:
        age_certification, ---STR:
        totalmedia, ---INT:
        _imdb_votes ---INT:
    FROM Breakdown
),
Combine AS ( ---Combining Genres after replacing bad syntax from split
    SELECT
        _genre, ---STR:
        type, ---STR:
        release_year, ---INT:
        age_certification,---STR:
        SUM(totalmedia) as total_media, ---INT: 
            ---Aggregates totalmedia's count values across GROUP by _genre, type, release_year
        SUM(_imdb_votes) as imdb_vote --- INT:
            ---Aggregates _imdb_votes values across GROUP by _genre, type, release_year
    FROM Replacement
        GROUP BY _genre, type, age_certification, release_year
        ORDER BY imdb_vote DESC
),
main AS ( --- main, has type grouping (although gets overiden by TypeFilter CTE)
    SELECT
        _genre, ---STR:
        type, ---STR:
        release_year, --INT
        age_certification, ---STR:
        total_media, ---INT:
        imdb_vote ---INT:
    FROM Combine
)
 
SELECT * FROM main