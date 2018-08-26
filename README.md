<style>
	body {
		tab-size: 2;
	}
</style>



# G++ Complie Helper

## List
---
* [조작](##조작)
	* [기본](###기본)
	* [인자 값 사용](###인자%20값%20사용)
		* [첫 번째 인자 값](####%20첫%20번째%20인자%20값)
		* [두 번째 인자 값](####%20두%20번째%20인자%20값)


# 설명
```
리눅스에서 g++ 로 컴파일을 할 때
간편하게 컴파일 할 수 있게 도와주는 
shellScript로 작성된 컴파일 helper.
```
> ./com cppFile resultname
```
인자 값은 위처럼 돼있으며,

컴파일을 하고 난 다음에
확인 할 필요 없이
자동으로 파일이 실행되며

프로그램의 인자값이 아무것도 없을 때에는
```
> g++ -o main main.cpp
```
위의 옵션에 맞춰져 있다.
```

* ## 조작
	* ### 기본
		* > file: main.cpp
			```cpp
			// 
			#include <stdio.h>
			int main()
			{
				printf("this is main.cpp \n");
			}
			```
		* shell terminal
			1. 디렉토리 확인
				```sh
				ls

				# ls 출력 결과
				com  main.cpp
				```
			2. 명령어 실행
				```sh				
				./com

				# com 실행 결과
				successful!!!========
				=======start program
				this is main.cpp
				```
			3. 파일 확인
				```sh
				ls

				# ls 출력 결과
				com  main  main.cpp
				```

	* ### 인자 값 사용
		* #### 첫 번째 인자 값
			* > file: test.cpp
				```cpp
				// 
				#include <stdio.h>
				int main()
				{
					printf("this is test.cpp \n");
				}
				```
			* shell terminal
				1. 디렉토리 확인
					```sh
					ls

					# ls 출력 결과
					com  test.cpp
					```
				2. 명령어 실행
					```sh
					./com test.cpp

					# com 실행 결과
					successful!!!========
					=======start program
					this is test.cpp
					```
				3. 파일 확인
					```sh
					ls

					# ls 출력 결과
					com  test  test.cpp
					```

		* #### 두 번째 인자 값
			* > file: test.cpp
				```cpp
				// 
				#include <stdio.h>
				int main()
				{
					printf("this is test.cpp \n");
				}
				```
			* shell terminal
				1. 디렉토리 확인
					```sh
					ls

					# ls 출력 결과
					com  test.cpp
					```
				2. 명령어 실행
					```sh
					./com test.cpp run

					# com 실행 결과
					successful!!!========
					=======start program
					this is test.cpp
					```
				3. 파일 확인
					```sh
					ls

					# ls 출력 결과
					com  test.cpp run
					```