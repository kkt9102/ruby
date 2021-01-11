# 가장 기본적인 실행언어
puts "Hello World!"

# 루비도 순서대로 실행된다
puts "Hello"
puts "World!"

# 루비에서 ; 은 프로그램안의 여러문장을 한 줄에 나열한다
puts "Hello" ; puts "World!"

# 루비에서 , 는 줄바꿈이다
puts "Hello" , "World!"

# 루비에서 print 메서드는 줄바꿈을 하지 않는다
print "100"
puts "100"

# print 메서드에서 줄바꿈을 하고 싶으면 \n 을 추가한다
print "100\n"
puts "100"

# 루비에서 p 메서드는 지정한 문자열 자체를 표시할 수 있다
# p 눈 수치와 문자열을 구별하고 싶을 때 사용하면 좋다
p "100"
p 100

# 이스케이프 시퀸스들!
print "Hello\t" # \t 는 탭
print "Hello\n" # \n 는 줄바꿈
print "Hello\b" # \b 는 백스페이스
print "Hello\r" # \r 은 복귀
print "Hello\s" # \s 는 공백
print "Hello\nnn"   # \nnn 은 8진수로 표시 (n=0~7)
print "Hello\xnn"   # \xnn 은 16진수로 표시 (n=0~9, a~f, A~F)
print "Hello\\" # \\ 는 \ 로 표시됨
print "Hello\'" # \' 는 ' 로 표시됨
print "Hello\"" # \" 는 " 로 표시됨

# 루비 변수설정
a = 2

# 값이 들어있는 변수 에 다른 값을 대입 할 수 있다
a = 2
a = 3

# 예제!
a = 2
b = 3
puts "변수 a 에 변수 b 를 대입"
a = b
print "a =", a
print ", b = ", b

# 상수는 변수와 같이 값을 지정해둘 수 있지만 한번 지정한 상수는 변경이 불가능하다! 상수명은 대문자로 시작(일반적으로 상수는 모두 대문자로 기입)
ARGV = 2
puts "ARGV =" , ARGV
# ARVG =
# 2
# 이렇게 출력됨! 기억할 것

# 문자열은 JAVA와 동일? ' 나 " 를 사용한다
sweet = "candy"

# ' 와 " 의 차이 (중요!)
puts "Hello\n"
# Hello
puts 'Hello\n'
# Hello\n

# ' 안에 ' 을 사용할 수 없고 " 안에 " 를 사용할 수 없다 따음표 자체를 표기하고 싶을 땐 \" 나 \' 를 사용한다
# puts " \"Hello"\ "    =      puts " \"Hello"\ "  출력불가
# puts ' \'Hello' \'    =      puts ' \'Hello' \'  출력불가
# puts " 'Hello' "      =      'Hello'  출력

# 문자열 연결하기
a = "여름"
b = "휴가"
c = a + b
puts c  # 결과값 = 여름휴가

# * 는 문자열을 지장한 숫자만큼 연결해준다
a = "A" * 3
puts a  # 결과값 = AAA

# 배열... 여러개의 변수값을 하나로 묶은 것...
cats = ["Nabi" , "Yaong" , "Mimi" , "Kitty"]
puts cats
# 결과값 =
#Nabi
#Yaong
#Mimi
#Kitty

# 배열 요소의 대입과 참조
n cats = [] = 1
cats[0] = "Nabi"
cats[1] = "Yaong"
cats[2] = "Mimi"
cats[3] = "Kitty"
puts cats[n]
cats[0] = "Jiji"
# 결과값 = Yaong   (뭔가 더 붙어야하는데 실행이 불가하다...)

# 빈 배열과 요소 삭제하기
a = []

# 배열을 모두 비우는 방법!
a = [1, 2, 3]
a.clear

puts a
# 결과값 = '없음'

# 배열 작성하기
a1 = [1, 2, 3, 4]
a2 = ["a", "b", "c", "d"]

# Array.new 를 사용하여 배열만들기!
a = Array.new   # new 다음에 아무것도 지정해주지 않으면 요소가 0개인 배열생성

# Array.new(2) 를 사용하여 배열만들기!
a = Array.new(2)    # new(2) 괄호안의 숫자만큼 빈 요소를 가지고있는 배열이 만들어진다!

# Array.new(3, 1) 를 사용하여 배열 만들기
a = Array.new(3, 1)     # new(3, 1) 은 '1' 이란 요소를 가지고있는 3개의 배열을 만들 수 있다

# 배열의 크기
a = [1, 2, 3, 4]
puts a[4]   # 결과값 = nil(java에선 null)
# java처럼 변수값을 0부터 계산한다

# 대입의 경우 지정한 요소가 없으면 배열요소가 자동으로 만들어진다
a = [1, 2, 3, 4]
a[4] = 5
puts a[4]   # 결과값 = 5

# 배열은 마지막 요소의 첨자를 -1로 해서 거꾸로 셀 수도 있다
a = [1, 2, 3]
puts a[-2]  # 결과값 = 2 (a = [1, 2, 3] 안의 배열을 읽는 순서 1->2->3->2)

# 배열의 요소 갯수구하기!
a = [1, 2, 3]
puts a.size  # 결과값 = 3 (java의 length 라 생각하면 될듯)

# 다차원배열.... 배열안에 배열만들기
# 작성법.1
a = [ [1, 2, 3], [4, 5]]
# 작성법.2
a = [
    [1, 2, 3],
    [4, 5]
]
puts a # 결과값
#1
#2
#3
#4
#5
puts a.size # 결과값 = 2
puts a[0].size  # 결과값 = 3
puts a[1].size  # 결과값 = 2

# 다차원 배열에 대입 및 참조하기
a = [
    [10, 20],
    [30, 40],
    [50, 60]
]
a [1] [0] = 0   # a [1] [0] 에 0 대입
puts a [1] [0]  # a [1] [0]의 값 표시 # 결과값 = 0

# 예제!
a = [
    [10, 20],
    [30, 40],
    [50, 60]
]
a [1] [0] = 0

print "a [0] [0] =", a [0] [0], "\t",
    "a [0] [1] =", a [0] [1], "\n"

print "a [1] [0] =", a [1] [0], "\t",
    "a [1] [1] =", a [1] [1], "\n"

print "a [2] [0] =", a [2] [0], "\t",
    "a [2] [1] =", a [2] [1], "\n"

# 결과값 = 
# a[0][0]=10    a[0][1]=20
# a[1][0]=30    a[1][1]=0
# a[2][0]=50    a[2][1]=60

# 해시(hash): 키와 값을 조합하여 묶은 것. 키(key)는 값에 엑세스 하기위해 부여된 고유의 숫자나 문자열을 뜻함
a = { "name" => "미나", "num" => 3, 10 => 100 }

# 해시를 비우는 법!
a = { "name" => "미나", "num" => 3, 10 => 100 }
a = {}
puts a  # 결과값 = nil

# 값의 대입과 참조
pet = {"kind" => "Cat", "name" => "나비"}
pet ["name"] = "샴"     # 키가 "name" 인 요소에 "샴" 을 대입
a = pet ["name"]        # 키가 "name" 인 요소의 값을 참조하여 a 에 대입한다

# 예제
pet = { "kind" => "Cat", "name" => "나비", "color" => "회색"}
pet ["name"] = "샴"
a = "kind"
puts pet [a]
puts pet ["name"]
puts pet ["color"]
# 결과값 = 
#Cat
#샴
#회색

# 새로운 해시 만들기
pet = Hash.new

# 해시 확대하기.1
pet = {"kind" => "Cat", "name" => "나비", "color" => "회색"}
pet ["cry"] = "야옹"    # 키 "cry" 추가
puts pet    # 결과값 = {"kind"=>"Cat", "name"=>"나비", "color"=>"회색", "cry"=>"야옹"}

# 해시 확대하기.2
pet = {"kind" => "Cat", "name" => "나비", "color" => "회색"}
pet ["weight"]
puts pet    # 결과값 = {"kind"=>"Cat", "name"=>"나비", "color"=>"회색"} nil 이 들어간다

# 해시 삭제하기
pet = {"kind" => "Cat", "name" => "나비", "color" => "회색"}
pet .delete("name")
puts pet    # 결과값 = {"kind"=>"Cat", "color"=>"회색"}

# 해시의 요소 갯수 구하기
pet = {"kind" => "Cat", "name" => "나비", "color" => "회색"}
puts pet.size   # 결과값 = 3

# gets 메서드 이용하기 ( gets 메서드를 사용하면 프로그램을 실행하는 도중에 문자열입력이 가능하다. 뒤에가야 더 잘 이해될듯)
puts "사과는 영어로 무엇입니까?"
s = gets
puts "정답은 apple"     # 결과값 = 첫번째 puts 가 동작한다. 그 후 엔터키를 치면 다음 puts 가 동작한다. 즉 첫번째 puts 가 동작한 후 키보드를 입력할 수 있는 상태가 된다.

# 표준 입·출력
STDIN # 표준입력
STDOUT # 표준출력
STDERR  # 표준오류출력

STDOUT.puts "Hello" # 표준출력으로 출력 시
STDERR.puts "Error" # 표준오류출력으로 출력 시

# 명령줄 인수 취득하기 (프로그램을 실행할 때 인수를 지정하여 실행할 수 있음) 명령줄 인수값은 ARGV 라는 특수배열에 저장됨
>ruby test.rb apple orange lemon
#     소스파일명.rb 명령줄 인수1 명령줄 인수2 명령줄 인수3

# 명령줄 인수 ARGV 배열값 표시하기
name1 = ARGV[0]
print "ARGV [0] 의 내용은" , name1, "입니다."   # 결과값 = ARGV[0]의 내용은 apple 입니다.

# 숫자연산을 쓰는 법
a = b + c   # a에 b와 c를 합친 값 대입
a = b - c   # a에 b에서 c를 뺀 값 대입
a = b * c   # a에 b와 c를 곱한 값 대입
a = b ** c  # a에 b의 c승 대입
a = b / c   # a에 b를 c로 나눈 값 대입 (c 가 0일경우 오류가뜸)
a = b % c   # a에 b를 c로 나눈 나머지 값 대입 (정수 실수 모두이용가능)
a = b       # a에 b를 대입

# 범위를 나타내는 .. 과 ...!!!
1..4    # 1부터 4까지
1...4   # 1부터 3까지
"a".."b"    # a부터 b까지
"a"..."b"   # a부터 c까지

# 대입연산자!
a += b  # a에 a+b의 결과 대입 (a = a + b 와 같음)
a -= b  # a에 a-b의 결과 대입 (a = a - b 와 같음)
a *= b  # a에 a*b의 결과 대입 (a = a * b 와 같음)
a /= b  # a에 a/b의 결과 대입 (a = a / b 와 같음)
a %= b  # a에 a%b의 결과 대입 (a = a % b 와 같음)

# 비교연산자!
a == b  # a와b는 같다
a < b   # a는 b보다 작다
a > b   # a는 b보다 크다
a <= b   # a는 b보다 작거나 같다 (이하)
a >= b   # a는 b보다 크거나 같다 (이상)
a != b  # a와 b는 같지않다

# true, falses 자바랑 같은
a = 10; b = 20
print "a =", a, ",b = " b,"\n"
print "a < b...", (a < b), "\n"
print "a > b...", (a > b), "\n"
print "a == b...", (a == b), "\n"
print "a = b...", (a = b), "\n"
# 결과값
#a =10, b =20
#a < b ... true
#a > b ... false
#a == b ... false
#a = b ... 20

#논리연산자(조건문)
(a >= 10) && (a < 50)   # and, 그리고
(a == 1) \\ (a == 100)  # or , 또는
!(a == 100)             # not, ~이 아니다

! ((b == 0) \\ (b == 1))    # b=0 또는 b=1 이 아니다
! (b == 0) && (b == 1)      # b=0 이 아니고 b=1 도 아니다
(b != 0) && (b != 1)        # b≠0 이고 b≠1 이 아니다

# 연산자 우선선위!

# 지역변수
a = "지역변수"

# 전역변수
$b = "전역변수"

# 인스턴스 변수
@c = '인스턴스 변수'

# 클래스 변수
@@d = "클래스 변수"

# 조건문!
#if 와 unless 는 서로 반대라고 생각하자!
num = 2 
if num%2 == 0
    puts"evne"
else
    puts"odd"
end
#결과값 = even
num = 2 
unless num%2 == 0
    puts"evne"
else
    puts"odd"
end
#결과값 = odd


