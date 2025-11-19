#현재 위치 경로를 출력
pwd

#현재 위치에서 파일 및 폴더 목록 조회
ls

#목록조회 자세히
ls -l

#목록조회 자세히,숨김파일까지
ls -al

##목록조회ㅣ 자세히,숨김파일,오래된순정렬
ls -alrt

#디렉토리 생성
mkdir dogyun_dir

#특정 디렉토리로 이동 
cd dogyun_dir

#상위 디렉토리로 이동(cd ../)
cd ..

#루트 디렉토리(최상위 디렉토리)로 이동
cd / 

#직전 폴더로 이동
cd - 

#홈경로(/home/본인계정폴더)로 이동
cd

#상대경로와 절대경로
#상대경로 : cd ../../

#절대경로 : cd /home

#파일내용을 터미널창에 출력하기
cat first_file.txt

#파일내용 편집기로 열기 : nano , vi
nano first_file.txt
vi first_file.txt

#파일내용 상위 10줄 출력하기
head 파일명

#파일내용 하위 10줄 출력하기
tail 파일명

#파일내용 하위 n줄 출력하기
tail -숫자 파일명

#파일내용 실시간 조회
tail -f 파일명

#도스키(화살표키) 위/아래를 통해 이전명령어 조회 가능
#hitory를 통해 이전에 실행했던 명령어 모두 조회 가능
#clear를 통해 터미널창에 보이는 명령어 내역 모두 지우기
#ctrl+c를 통해 입력중인 명령어 취소 가능

#파일삭제 명령어 -f 옵션을 통해 묻지않고 삭제 가능
rm 파일명

#폴더쨰 삭제
rm -r 폴더명

#터미널창에 입력한 문자열을 출력
echo"hello world"

#echo를 통해 파일에 내용 입력 가능
#> : 덮어쓰기, >> : 추가모드 
echo"hello world">second_file.txt

#복사명령어(폴더 복사시에는 -r 옵션 (cp -r 폴더명 복사될폴더명))
#cp 복사대상 복사될파일명 
cp first_file.txt first_file_copy.txt

#파일 이동 명령어 
mv 이동대상파일 경로/이동될파일명
#현재폴더에서 파일명 변경
mv second_file.txt ./third_file.txt 
#상위폴더로 파일이동
mv second_file.txt ../

#파일내에서 문자열 찾기
grep
#rni(r: 디렉토리 내 , n: 라인수 출력, i: 대소문자 구분 없이)
grep -rni "hello" . 

#이름으로 파일 또는 디렉토리 찾기
find
#*: 모든 것을 의미 
find . -name "hello.*"(hello로 시작하는)
find . -name "*.txt"(txt로 끝나는)

find . -type f

#find 와 grep의 혼용
#|xargs 를 통해 왼쪽 실행문의 결과값을 오른쪽 실행문의 input값으로 전달
find . -name"*.txt" | xargs grep -rni "hello"
find . -name"*.txt" -exec grep -rni "hello" {} \;

#타입은 file인 파일중에 이름이 first로 시작하는 파일을 찾아,
#그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾기
find. -type f -name "first* grep -rni "hello"

1.리눅스에는 root와 그외 계정으로 구성
2.리눅스에는 root계정의 권한이 필요한 경우가 있음.
3.1)root계정의 권한을 빌리기만2)root계정으로 전환
4.1)권한을 빌릴떄는 내계정의 비밀번호 2)root계정으로 전환 - root계정의 비밀번호

