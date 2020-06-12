redis-cli <<EOF
set user1 'Kolya' 
set index1 1
get user1
mset user2 'Baby' email2 'baby@yandex.ru' index2 2
mget user1 email1
incr index1

multi 
set user3 'Papa'
discard
multi
set user3 'Now I am Mama'
exec

HMSET user4 username antirez password P1pp0 age 34
HGETALL user4
HSET user4 password 12345
HGETALL user4

LPUSH mylist a   # now the list is "a"
LPUSH mylist b   # now the list is "b","a"
RPUSH mylist c   # now the list is "b","a","c" (RPUSH was used this time)

SADD 7kingdoms 'John Snow' 'Lanester' 'Tyroll'
SMEMBERS 7kingdoms
SADD Winterfell  'John' 'Aria' 'Ned'
SINTER Winterfell 7kingdoms
SDIFF Winterfell 7kingdoms
SUNION Winterfell 7kingdoms
SUNIONSTORE Everywhere Winterfell 7kingdoms
SDIFFSTORE Differ Winterfell 7kingdoms
SMOVE 7kingdoms Winterfell 'Bran'
SCARD 7kingdoms
SMEMBERS 7kingdoms
SPOP 7kingdoms 1
SMEMBERS 7kingdoms
SREM Winterfell 'Bran'

EXPIRE user1 10
EXISTS user1
SETEX user1 10 'Sandy'
TTL user1
PERSIST user1

MOVE 7kingdoms 2
SELECT 2
SMEMBERS 7kingdoms

EOF
