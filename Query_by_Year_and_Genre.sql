WITH TypeFilter AS ( -- Alows a specific type filtering by "MOVIE", "SHOW", or all (comment the WHERE in line8).
    SELECT
        id, ---STR:
        type, ---STR:
        genres, ---STR:
        release_year, ---INT:
        imdb_votes, ---INT:
        imdb_score ---float:
    FROM raw_titles
    ---where type = "MOVIE"   ---Can set specific type filter here "MOVIES" or "SHOW", or comment line for both
),
Breakdown AS ( --- Breaking apart genre string and grouping
    SELECT
        STRING_SPLIT(genres, ',') AS splitgenre, ---STR:
            ---Splits array string by ',', since specific compiler lacks array unnesting.
        type, ---STR:
        release_year, ---INT:
        COUNT(id) AS totalmedia, ---INT:
            ---Counts # of movies/shows (from id) as _totalmedia
        SUM(imdb_votes) AS _imdb_votes ---INT:
            ---Aggregates imdb_votes values across GROUP by splitgenre, type, release_year
    FROM TypeFilter
    GROUP BY splitgenre, type, release_year
    ),
Replacement AS ( ---Cleaning up the messy broken up string syntax
    SELECT 
        REPLACE(REPLACE(REPLACE(REPLACE(splitgenre, "\\[\\]", "Missing Genre"), '\\[', ''), '\\]', ''), "'", '') AS _genre,--- STR: 
            ---Replaces [ -> , [ -> , '' -> , null -> Missing Genre
        type, ---STR:
        release_year, ---INT:
        totalmedia, ---INT:
        _imdb_votes ---INT:
    FROM Breakdown
),
Combine AS ( ---Combining Genres after replacing bad syntax from split
    SELECT
        _genre, ---STR:
        type, ---STR:
        release_year, ---INT:
        SUM(totalmedia) as total_media, ---INT: 
            ---Aggregates totalmedia's count values across GROUP by _genre, type, release_year
        SUM(_imdb_votes) as imdb_vote --- INT:
            ---Aggregates _imdb_votes values across GROUP by _genre, type, release_year
    FROM Replacement
        GROUP BY _genre, type, release_year
        ORDER BY imdb_vote DESC
),
main AS ( --- main, has type grouping (although gets overiden by TypeFilter CTE)
    SELECT
        _genre, ---STR:
        type, ---STR:
        release_year,
        total_media, ---INT:
        imdb_vote ---INT:
    FROM Combine
)
 
SELECT * FROM main