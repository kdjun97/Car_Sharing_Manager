# Car Sharing Manager

김동준, 이신비  

- version : 1.0.0  
- Development Environment : STS 4.11.1, jre1.8
- Deploy URL : https://angel10004.herokuapp.com/  

--- 
### 프로젝트 설명 
카풀을 이용하면서, 운전자와 탑승자간에 카풀비를 제때
주고받지 못하여 운전자가 고통스러워 한다고 한다.
또한, 카풀은 운전자가 운전을 하면서, 번호 혹은 카톡을 물
어보기도 힘든 상황이라, 운전이 끝난 후 따로 연락을 취해
야한다.
하지만, 상대방이 카풀방을 나간다면, 따로 연락을 할 수도
없는 실정이다.
한동대학교 학생들은 굉장히 바쁘기 때문에, 바쁜 학업 중
카풀비 입금을 깜빡하는 경우가 많다고 한다.  
따라서, 카풀 운전자와 카풀 이용자 간에 서로 매칭과 입금 관리까지 해주는 웹을 만들게 되었다.  

### 사용법  
Room List Page(HomePage)에서, 방을 만들고, 그 방에 들어갈 수 있다.  
인원수는 총 4명 제한이고, 방장만이 추방, 입금 확인, 방 파기 권한을 가진다.  

### 개선할 점
한 user가 하나의 방에만 배정됨.(따로 처리를 해주지 않음)  
추후, version upgrade가 되면서, user에 대한 정보를 배열로 가지거나 알고리즘을 변경할 필요가 있음.  
Detail page에 chatting 기능이 있다면 더 좋을 것 같음.(chatting에 대한 table을 하나 만들고, 시간순으로 orderby한다면 db는 해결)  

### DB Schema 
이미지 업로드 필요  

### 로직
In Detail Page, GET METHOD로 받은, uid, room_num으로  
roomVO, userVO 객체를 생성. (**getUser**, **getRoom**)  
그리고 count와 master을 비교하여 덧셈 뺄셈을 해줌.  

---  

#### History

```
2021-12-7  
레파지토리 생성, 프로젝트 시작  
```
```
2021-12-10  
로그인 기능 구현, 로그인 페이지 완료.  
```
```
2021-12-11  
회원정보수정 페이지 구현 완료.  
방만들기 페이지 구현 완료.  
방만들기 기능 구현 완료(room_master 지정 가능).  
방리스트 페이지 제작중...  
회원가입 페이지 구현 완료.  
로그아웃 기능 추가.  
dj branch 하나 더 팜.  
```
```
2021-12-12  
count_update 로직 완료.  
인원 최대 4명 제한 기능 구현 완료.  
detail page 제작중...(아직 view 연결안함 + list 부르는 부분 구현 안함)  
방 만들기 로직 변경.(한 사람이 한 방에만 속할 수 있게끔)  
```
```  
2021-12-13  
detail page 제작 완료.  
방장 추방 권한 설정.  
추방 로직 구현 완료.   
black_list 값 증가 로직 구현 완료.  
payment 로직 추가 완료.  
모든 페이지 구현 완료.  
css 스타일 적용(협업) + merge to master branch   
- login page 적용 완료  
- register page 적용 완료  
- room_list page 적용 완료  
```  
```  
2021-12-17  
css 모든 페이지 완료.  
merge 완료.  
```  
```  
2021-12-18  
필요없는 페이지 삭제.  
page title 수정.  
deploy 완료. [링크](https://angel10004.herokuapp.com/)  

```  