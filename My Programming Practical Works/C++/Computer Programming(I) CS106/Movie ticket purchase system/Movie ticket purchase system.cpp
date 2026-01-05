#include <iostream>
#include <iomanip>
#include <fstream>
using namespace::std;

struct Movie
{
	int movieCode;
	char dates[12] = "";
	int numSessions;
	char sessionTimes[3][8] = { "" };
};

void loadMovieNames(char movieNames[][40], int& numMovies);
void loadMovies(Movie movies[], int& numRecords);
void buyTickets(char movieNames[][40], Movie movies[], int numMovies, int numRecords);
int inputAnInteger(int begin, int end);

int main()
{
	char movieNames[12][40];
	int numMovies = 0;
	loadMovieNames(movieNames, numMovies);

	Movie movies[60];
	int numRecords = 0;
	loadMovies(movies, numRecords);

	buyTickets(movieNames, movies, numMovies, numRecords);

	system("pause");
}

void loadMovieNames(char movieNames[][40], int& numMovies)
{
	//不能用infile >> 的方式寫，因為在txt檔中，單一行裡的文字跟文字間有空格，
	//若用此種方式寫，讀檔時會出問題
	ifstream infile("Movie Names.txt", ios::in);
	while (infile.getline(movieNames[numMovies], 40, '\n')) {
		numMovies++;
	}
	infile.close();
}

void loadMovies(Movie movies[], int& numRecords)
{
	//istream& read(char* buffer, streamsize size);
	//buffer：表示一段記憶體的起始位置，是資料讀取的目標位址。size：表示要讀取的資料的位元組數。

	//在C++中，char*是一個用來表示記憶體的指標，特別是在處理二進位資料時的read()讀檔，
	//取得資料並存放到char*指定的記憶體位置。

	//這裡用reinterpret_cast<char*>，將movies[numRecords]的位址（&movies[numRecords]）轉換為char*類型，因為：
	//1.movies[numRecords]是一個Movie類型的其他對象，指標類型是Movie* 。
	//2.read()函數只接受char* 類型的指標作為目標位址，告訴函數從檔案讀取的位元組應存放在哪裡。
	//3.因此，必須將Movie* 類型轉換為char* ，這樣才能滿足read()的參數需求。

	ifstream infile("Session Times.dat", ios::in | ios::binary);
	while (infile.read(reinterpret_cast<char*>(&movies[numRecords]), sizeof(Movie))) {
		numRecords++;
	}
	infile.close();
}

void buyTickets(char movieNames[][40], Movie movies[], int numMovies, int numRecords)
{
	Movie temp;
	int code = -1;
	int a = 0;

	for (int i = 0; i < numMovies; i++) {
		cout << i << "." << movieNames[i] << endl;
	}

	while (code == -1) {
		cout << endl << "Enter movie code (0 - 10):";
		code = inputAnInteger(0, 10);
	}
	temp.movieCode = code;

	for (int i = 0; i < numRecords; i++) {
		if (movies[i].movieCode == temp.movieCode) {
			cout << endl << a << "." << movies[i].dates;
			a++;
		}
	}

	code = -1;
	cout << endl;
	while (code == -1) {
		cout << endl << "Enter date code (0 - " << a - 1 << "):";
		code = inputAnInteger(0, a - 1);
	}
	//要用strcpy_s而非strcpy，此      用法來自#include<cstring>
	for (int i = 0; i < numRecords; i++) {
		if (movies[i].movieCode == temp.movieCode) {
			strcpy_s(temp.dates, movies[i + code].dates);
			temp.numSessions = movies[i + code].numSessions;
			cout << endl;
			for (int j = 0; j < temp.numSessions; j++) {
				cout << j << "." << movies[i + code].sessionTimes[j] << endl;
				strcpy_s(temp.sessionTimes[j], movies[i + code].sessionTimes[j]);
			}
			break;
		}
	}

	code = -1;
	while (code == -1) {
		cout << endl << "Enter session time code (0 - " << temp.numSessions << "):";
		code = inputAnInteger(0, temp.numSessions - 1);
	}

	cout << endl << movieNames[temp.movieCode] << endl << temp.dates << " " << temp.sessionTimes[code] << endl;
	
}

int inputAnInteger(int begin, int end)
{
	//先把n設成-1，這樣就算輸入進input的東西很奇怪(ex:2258,abc)，
	//也會因為n的值沒有被更動所以會保持為原本設定的-1，
	//在第三個判斷時會成立(-1<begin,此程式的begin永遠為0)
	int n = -1;
	char input[10];
	//要用cin.getline而不是cin，若是用cin，則在輸入1 0時，
	//電腦會理解成第一個輸入(電影)是1，第二個輸入(日期)是0
	//但若是用cin.getline，電腦會理解成1 0，因為cin是用space,tab,enter來分隔
	//而cin.getline則是用\n(我們自己定義的)來分隔
	cin.getline(input, 10, '\n');
	if (input[1] == '\0') {
		n = input[0] - '0';
	}
	else if (input[2] == '\0' && input[0] != '-' && input[0] != ' ' && input[1] != ' ') {
		n = (input[0] - '0') * 10 + (input[1] - '0');
	}
	if (n < begin || n > end) {
		n = -1;
	}
	return n;
	//先全部判斷完，最後再return
}
