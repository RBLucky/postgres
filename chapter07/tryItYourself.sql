--1
CREATE TABLE
    albums (
        album_id bigserial,
        album_catalog_code varchar(100) NOT NULL,
        album_title text NOT NULL,
        album_artist text NOT NULL,
        album_release_date date,
        album_genre varchar(40),
        album_description text,
        CONSTRAINT album_id_key PRIMARY KEY (album_id),
        CONSTRAINT release_date_check CHECK (album_release_date > '1925/1/1')
    );

CREATE TABLE
    songs (
        song_id bigserial,
        song_title text NOT NULL,
        song_artist text NOT NULL,
        album_id bigint REFERENCES albums (album_id),
        CONSTRAINT song_id_key PRIMARY KEY (song_id)
    );

--2
-- The album_catalog_code is another option since it serves as a naturally occurring unique identifier, however, we would need to confirm whether it is consistently available.


--3
-- Primary key columns come with an index by default, but we should create an index on the album_id foreign key column in the songs table since it will be frequently used in joins. Given that queries will likely involve searching by titles and artists, indexing those columns in both tables would be beneficial.
-- If we anticipate frequent queries involving date ranges, the album_release_date column in the albums table would be a strong candidate for indexing.