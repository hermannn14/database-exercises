USE codeup_test_db;

# select name as 'All albums in your table' from albums;
#
# select name as 'All albums released before 1980' from albums;
#
# select name as 'All albums by Michael Jackson' from albums;

select 'All albums in your table', name from albums;

# select name as 'Album name', artist as 'Album artist', title as 'Album title'

update albums

set sales = (sales * 10)

update albums
set release_date = '1901'
where release_date < '1980';




