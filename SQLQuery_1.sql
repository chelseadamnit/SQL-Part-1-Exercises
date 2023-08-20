-- SELECT TOP (1000) *
--   FROM [books]


-- SELECT * FROM [books]
-- ORDER BY id DESC;

-- SELECT COUNT(original_publication_year) AS BookCount
-- FROM [books] WHERE original_publication_year <1800;

-- SELECT DISTINCT(authors) FROM [books];

-- SELECT COUNT(language_code) FROM [books] WHERE language_code LIKE 'en%';

-- SELECT COUNT(*) BookCount FROM  [books]
-- WHERE language_code LIKE 'en%'

-- SELECT COUNT(*) FROM  [books] WHERE original_publication_year BETWEEN 1914 and 1921;

-- SELECT original_title, original_publication_year FROM [books] WHERE original_publication_year BETWEEN 1914 AND 1921 ORDER BY original_publication_year;

-- SELECT TOP (1000) *
-- FROM [book_tags] ORDER BY tag_id


-- SELECT COUNT(goodreads_book_id) AS GoodReadsCount FROM [book_tags] 
-- GROUP BY tag_id;

-- SELECT COUNT(goodreads_book_id) AS TagID FROM [book_tags] 
-- GROUP BY tag_id;

-- SELECT TOP (1000) * FROM [ratings]
-- ORDER BY book_id DESC;


-- SELECT COUNT(DISTINCT user_id) AS UserCount FROM [ratings] WHERE rating < 2;

-- 
-- SELECT COUNT(book_id) BookCount FROM [ratings] WHERE rating >= 4;

-- SELECT * FROM [tags] WHERE tag_name LIKE '%mystery%';

-- SELECT * 
-- FROM BooksDB.dbo.tags
-- WHERE tag_name < 'd' AND tag_name >= 'c';

--SELECT COUNT (book_id) FROM 

-- SELECT tag_name 
-- FROM tags 
-- WHERE tag_name LIKE '%want%read%' 
-- AND tag_name NOT LIKE '%no%longer%want%read%'
-- AND tag_name NOT LIKE '%don%t%want%read%'


-- SELECT user_id, COUNT(book_id) AS [Total Books To Read]
-- FROM [to_read]
-- GROUP BY USER_ID


SELECT user_id, COUNT(book_id) AS [Total Books To Read]
FROM [to_read]
GROUP BY USER_ID
ORDER BY [Total Books To Read] DESC;


