#include <iostream>
#include <iomanip>
#include <fstream>
using namespace::std;

struct MemberRecord
{
    char email[40];
    char password[24];
    char IDNumber[12];
    char name[12];
    char phone[12];
};

struct Movie
{
    int movieCode;
    int prices[2]; // prices[ 0 ]:adult, prices[1]:concession
    bool dates[6]; // dates[ i ] is true if and only if the movie is available on i-th date
    bool sessionTimes[12]; // sessionTimes[i] is true if and only if the movie is available on i-th session
    bool occupiedSeats[6][12][8][12];
};   // occupiedSeats[i][j] is the occupied Seats for all accounts at j-th session time on i-th date

struct BookingInfo
{
    char email[40];
    int movieCode;
    int dateCode;
    int sessionTimeCode;
    int numTickets[2]; // numTickets[ 0 ]: the number of adult tickets,
    // numTickets[ 1 ]: the number of concession tickets
    char seletedSeats[20][4]; // seleted seats for the user with the specified email
};

char hours[12][8] = { "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00",
                          "18:00", "19:00", "20:00", "21:00", "22:00" };

void loadMemberInfo(MemberRecord memberDetails[], int& numMembers);
void loadBookingHistories(BookingInfo bookingHistories[], int& numBookings);
void loadMovies(Movie movies[], int& numMovies);
void loadMovieNames(char movieNames[][60], int numMovies);
void loadAvailableDates(char availableDates[][12], int& numDates);

int inputAnInteger(int begin, int end);
void signIn(MemberRecord memberDetails[], int numMembers, Movie movies[], char movieNames[][60], int numMovies,
    BookingInfo bookingHistories[], int& numBookings, char availableDates[][12], int numDates);
bool legal(char email[], char password[], MemberRecord memberDetails[], int numMembers, int& recordNumber);
void accountInfor(MemberRecord memberDetails[], int numMembers, int recordNumber);

void buyTickets(BookingInfo bookingHistories[], int& numBookings, Movie movies[], char movieNames[][60],
    int numMovies, char availableDates[][12], int numDates, char email[]);
void selectSeats(BookingInfo bookingHistories[], int numBookings, Movie movies[]);

void displaySessionTimes(Movie movies[], char movieNames[][60], int numMovies,
    char availableDates[][12], int numDates);
void display(Movie movies[], BookingInfo bookingHistory);
void displayBookingHistory(BookingInfo bookingHistories[], int numBookings, Movie movies[],
    char movieNames[][60], char availableDates[][12], char email[]);

void newMember(MemberRecord memberDetails[], int& numMembers);
bool existingID(char newIDNumber[], MemberRecord memberDetails[], int& numMembers);
bool existingEmail(char newEmail[], MemberRecord memberDetails[], int& numMembers);

void saveMemberInfo(MemberRecord memberDetails[], int numMembers);
void saveMovies(Movie movies[], int numMovies);
void saveBookingHistories(BookingInfo bookingHistories[], int numBookings);

int main()
{
    MemberRecord memberDetails[100] = {};
    int numMembers = 0;
    loadMemberInfo(memberDetails, numMembers);

    BookingInfo bookingHistories[100] = {};
    int numBookings = 0;
    loadBookingHistories(bookingHistories, numBookings);

    Movie movies[30] = {};
    int numMovies = 0;
    loadMovies(movies, numMovies);

    char movieNames[30][60] = {};
    loadMovieNames(movieNames, numMovies);

    char availableDates[10][12];
    int numDates;
    loadAvailableDates(availableDates, numDates);

    cout << "Welcome to Vie Show Cinemas Taoyuan Geleven Plaza system\n\n";

    int choice;

    while (true)
    {
        cout << "1. Sign In\n";
        cout << "2. New Member\n";
        cout << "3. End\n";

        do cout << "\nEnter your choice (1~3): ";
        while ((choice = inputAnInteger(1, 3)) == -1);
        cout << endl;

        switch (choice)
        {
        case 1:
            signIn(memberDetails, numMembers, movies, movieNames, numMovies,
                bookingHistories, numBookings, availableDates, numDates);
            break;

        case 2:
            newMember(memberDetails, numMembers);
            break;

        case 3:
            saveMemberInfo(memberDetails, numMembers);
            saveMovies(movies, numMovies);
            saveBookingHistories(bookingHistories, numBookings);
            cout << "Thank you!\n\n";
            system("pause");
            return 0;

        default:
            cout << "Input Error!\n\n";
            break;
        }
    }

    system("pause");
}

void loadMemberInfo(MemberRecord memberDetails[], int& numMembers)
{
    ifstream infile("Member Info.dat", ios::in | ios::binary);
    if (!infile) {
        cout << "Member file not found, starting with an empty database" << endl;
    }
    while (infile.read(reinterpret_cast<char*>(&memberDetails[numMembers]), sizeof(MemberRecord))) {
        numMembers++;
    }
    infile.close();
}

void loadBookingHistories(BookingInfo bookingHistories[], int& numBookings)
{
    ifstream infile("Booking Histories.dat", ios::in | ios::binary);
    if (!infile) {
        cout << "Member file not found, starting with an empty database" << endl;
    }
    while (infile.read(reinterpret_cast<char*>(&bookingHistories[numBookings]), sizeof(BookingInfo))) {
        numBookings++;
    }
    infile.close();
}

void loadMovies(Movie movies[], int& numMovies)
{
    ifstream infile("Movies.dat", ios::in | ios::binary);
    if (!infile) {
        cout << "Member file not found, starting with an empty database" << endl;
    }
    while (infile.read(reinterpret_cast<char*>(&movies[numMovies]), sizeof(Movie))) {
        numMovies++;
    }
    infile.close();
}

void loadMovieNames(char movieNames[][60], int numMovies)
{
    numMovies = 0;
    ifstream infile("Movie Names.txt", ios::in);
    if (!infile) {
        cout << "Member file not found, starting with an empty database" << endl;
    }
    while (infile.getline(movieNames[numMovies], 60, '\n')) {
        numMovies++;
    }
    infile.close();
}
void loadAvailableDates(char availableDates[][12], int& numDates)
{
    ifstream infile("Available Dates.txt", ios::in);
    if (!infile) {
        cout << "Member file not found, starting with an empty database" << endl;
    }
    numDates = 0;
    while (infile.getline(availableDates[numDates], 12, '\n')) {
        numDates++;
    }
    infile.close();
}

int inputAnInteger(int begin, int end)
{
    char string[80];

    cin.getline(string, 80, '\n');

    if (strlen(string) == 0)
        return -1;

    for (unsigned int i = 0; i < strlen(string); i++)
        if (string[i] < '0' || string[i] > '9')
            return -1;

    int number = atoi(string);
    if (number >= begin && number <= end)
        return number;
    else
        return -1;
}

void signIn(MemberRecord memberDetails[], int numMembers, Movie movies[],
    char movieNames[][60], int numMovies, BookingInfo bookingHistories[],
    int& numBookings, char availableDates[][12], int numDates)
{
    int recordNumber = -1;
    char email[40] = "";
    char password[24] = "";

    do {
        cout << "Enter email address: ";
        cin >> email;
        cout << "Enter password: ";
        cin >> password;

    } while (!legal(email, password, memberDetails, numMembers, recordNumber));

    cin.ignore();

    int choice = 2;

    while (true)
    {
        cout << "\n1. Account Information\n";
        cout << "2. Buy Tickets\n";
        cout << "3. My Bookings\n";
        cout << "4. Sign Out\n";

        do cout << "\nEnter your choice (1~4): ";
        while ((choice = inputAnInteger(1, 4)) == -1);
        cout << endl;

        switch (choice)
        {
        case 1:
            accountInfor(memberDetails, numMembers, recordNumber);
            break;

        case 2:
            buyTickets(bookingHistories, numBookings, movies, movieNames,
                numMovies, availableDates, numDates, email);
            break;

        case 3:
            displayBookingHistory(bookingHistories, numBookings, movies,
                movieNames, availableDates, email);
            break;

        case 4:
            return;

        default:
            cout << "Input Error!\n";
            break;
        }
    }
}

bool legal(char email[], char password[], MemberRecord memberDetails[],
    int numMembers, int& recordNumber)
{
    for (int i = 0; i < numMembers; i++)
        if (strcmp(email, memberDetails[i].email) == 0 &&
            strcmp(password, memberDetails[i].password) == 0)
        {
            recordNumber = i;
            return true;
        }

    cout << "\nSorry, unrecognized email or password.\n\n";
    return false;
}

void accountInfor(MemberRecord memberDetails[], int numMembers, int recordNumber)
{
    int choice;
    cout << "1. Name:" << memberDetails[recordNumber].name << endl;
    cout << "2. Phone Number:" << memberDetails[recordNumber].phone << endl;
    cout << "3. ID Number:" << memberDetails[recordNumber].IDNumber << endl;
    cout << "4. Password:" << memberDetails[recordNumber].password << endl;
    do {
        cout << endl << "Which one do you want to modify (0 – not modify):";
    } while ((choice = inputAnInteger(0, 4)) == -1);

    switch (choice) {
    case 0:
        return;
    case 1:
        cout << endl << "Enter correct data: ";
        cin >> memberDetails[recordNumber].name;
        cin.ignore();
        cout << endl << "Successful!" << endl;
        break;
    case 2:
        cout << endl << "Enter correct data: ";
        cin >> memberDetails[recordNumber].phone;
        cin.ignore();
        cout << endl << "Successful!" << endl;
        break;
    case 3:
        cout << endl << "Enter correct data: ";
        cin >> memberDetails[recordNumber].IDNumber;
        cin.ignore();
        cout << endl << "Successful!" << endl;
        break;
    case 4:
        cout << endl << "Enter correct data: ";
        cin >> memberDetails[recordNumber].password;
        cin.ignore();
        cout << endl << "Successful!" << endl;
        break;
    }
}

void newMember(MemberRecord memberDetails[], int& numMembers)
{
    char IDNumber[12], name[12], email[40], password[24], phone[12];
    cout << "Enter your ID number :";
    cin >> IDNumber;
    if (existingID(IDNumber, memberDetails, numMembers) == 1) {
        cout << endl << "An account already exists with the ID number!" << endl << endl;
        cin.ignore();//因為接下來要直接return，所以記得要cin.ignore()
        return;
    }
    cout << "Enter your name: ";
    cin >> name;
    cout << "Enter an email address: ";
    cin >> email;
    while (existingEmail(email, memberDetails, numMembers) == 1) {
        cout << endl << "An account already exists with the e-mail!" << endl;
        cout << endl << "Enter an email address: ";
        cin >> email;
    }
    cout << "Enter a password: ";
    cin >> password;
    cout << "Enter your phone number: ";
    cin >> phone;

    strcpy_s(memberDetails[numMembers].IDNumber, IDNumber);
    strcpy_s(memberDetails[numMembers].name, name);
    strcpy_s(memberDetails[numMembers].email, email);
    strcpy_s(memberDetails[numMembers].password, password);
    strcpy_s(memberDetails[numMembers].phone, phone);
    numMembers++;//
    
    cout << endl << "Successful!" << endl << endl;
    cin.ignore();//
}

bool existingID(char newIDNumber[], MemberRecord memberDetails[], int& numMembers)
{
    for (int i = 0; i < numMembers; i++)
        if (strcmp(newIDNumber, memberDetails[i].IDNumber) == 0)
            return true;

    return false;
}

bool existingEmail(char newEmail[], MemberRecord memberDetails[], int& numMembers)
{
    for (int i = 0; i < numMembers; i++)
        if (strcmp(newEmail, memberDetails[i].email) == 0)
            return true;

    return false;
}

void buyTickets(BookingInfo bookingHistories[], int& numBookings, Movie movies[],
    char movieNames[][60], int numMovies, char availableDates[][12],
    int numDates, char email[])
{
    displaySessionTimes(movies, movieNames, numMovies, availableDates, numDates);
    strcpy_s(bookingHistories[numBookings].email, email);//
    int choice;
    cout << endl;
    do {
        cout << "Enter movie code (0 - 10): ";
    } while ((choice = inputAnInteger(0, 10)) == -1);
    bookingHistories[numBookings].movieCode = choice;
    cout << endl;
    do {
        cout << "Enter date code (0 - 5): ";
    } while ((choice = inputAnInteger(0, 5)) == -1 || movies[bookingHistories[numBookings].movieCode].dates[choice] != 1);//
    bookingHistories[numBookings].dateCode = choice;
    cout << endl;
    do {
        cout << "Enter session time code (0 - 11): ";
    } while ((choice = inputAnInteger(0, 11)) == -1 || movies[bookingHistories[numBookings].movieCode].sessionTimes[choice] != 1);//
    bookingHistories[numBookings].sessionTimeCode = choice;
    cout << endl << left << setw(7) << "Movie:" << movieNames[bookingHistories[numBookings].movieCode] << endl;
    cout << setw(6) << "Date:" << availableDates[bookingHistories[numBookings].dateCode] << endl;
    cout << setw(11) << "Show Time:" << hours[bookingHistories[numBookings].sessionTimeCode] << endl;
    cout << setw(7) << "Price:" << "Adult-" << movies[bookingHistories[numBookings].movieCode].prices[0] << ", Concession-" << movies[bookingHistories[numBookings].movieCode].prices[1] << endl << endl;

    do {
        cout << "Enter the number of adult tickets (0 - 10): ";
    } while ((choice = inputAnInteger(0, 10)) == -1);
    bookingHistories[numBookings].numTickets[0] = choice;
    do {
        cout << "Enter the number of concession tickets (0 - 10): ";
    } while ((choice = inputAnInteger(0, 10)) == -1);
    bookingHistories[numBookings].numTickets[1] = choice;

    display(movies, bookingHistories[numBookings]);

    selectSeats(bookingHistories, numBookings, movies);

    cout << "\nSuccessful!\n";

    numBookings++;
}

void selectSeats(BookingInfo bookingHistories[], int numBookings, Movie movies[])
{
    char b = 'A';
    cout << "  ";
    for (int i = 0; i < 12; i++) {
        cout << b << " ";
        b++;
    }
    cout << endl;
    for (int i = 0; i < 8; i++) {
        cout << i << " ";
        for (int j = 0; j < 12; j++) {
            cout << movies[bookingHistories[numBookings].movieCode].occupiedSeats[bookingHistories[numBookings].dateCode][bookingHistories[numBookings].sessionTimeCode][i][j] << " ";
        }
        cout << endl;
    }
    char a[4];//
    cout << endl << "Select " << bookingHistories[numBookings].numTickets[0] + bookingHistories[numBookings].numTickets[1] << " seats (e.g. 0A):" << endl;
    for (int i = 0; i < bookingHistories[numBookings].numTickets[0] + bookingHistories[numBookings].numTickets[1]; i++)
    {
        cout << "? ";
        cin >> a;
        if (movies[bookingHistories[numBookings].movieCode].occupiedSeats[bookingHistories[numBookings].dateCode][bookingHistories[numBookings].sessionTimeCode][a[0] - '0'][a[1] - 'A'])
        {
            cout << endl << "This seat bas been occupied. Please select another seat.\n";
            i--;//
            continue;
        }
        movies[bookingHistories[numBookings].movieCode].occupiedSeats[bookingHistories[numBookings].dateCode][bookingHistories[numBookings].sessionTimeCode][a[0] - '0'][a[1] - 'A'] = 1;
        strcpy_s(bookingHistories[numBookings].seletedSeats[i], a);
    }
    cin.ignore();
}

void displaySessionTimes(Movie movies[], char movieNames[][60], int numMovies,
    char availableDates[][12], int numDates)

{
    for (int i = 0; i < numMovies; i++) {
        cout << i << "." << setw(7) << "Movie: " << movieNames[i] << endl;
        cout << " " << setw(7) << "Date: ";
        for (int j = 0; j < numDates; j++) {
            if (movies[i].dates[j] == 1) {
                cout << j << ". " << availableDates[j] << ",  ";
            }
        }
        cout << endl;
        cout << " " << setw(15) << "Session Time: ";
        for (int k = 0; k < 12; k++) {
            if (movies[i].sessionTimes[k] == 1) {
                cout << k << ". " << hours[k] << ",  ";
            }
        }
        cout << endl;
    }
}

void display(Movie movies[], BookingInfo bookingHistory)
{
    cout << endl;
    cout << "             No. of Tickets  Price  Subtotal" << endl;
    cout << left << setw(26) << "Adult" << bookingHistory.numTickets[0] << right << setw(7) << movies[bookingHistory.movieCode].prices[0] << setw(10) << bookingHistory.numTickets[0] * movies[bookingHistory.movieCode].prices[0] << endl;
    cout << left << setw(26) << "Concession" << bookingHistory.numTickets[1] << right << setw(7) << movies[bookingHistory.movieCode].prices[1] << setw(10) << bookingHistory.numTickets[1] * movies[bookingHistory.movieCode].prices[1] << endl;
    cout << endl << "Total Amount For Tickets: " << (bookingHistory.numTickets[0] * movies[bookingHistory.movieCode].prices[0]) + (bookingHistory.numTickets[1] * movies[bookingHistory.movieCode].prices[1]) << endl << endl;
}

void displayBookingHistory(BookingInfo bookingHistories[], int numBookings, Movie movies[],
    char movieNames[][60], char availableDates[][12], char email[])
{
    if (numBookings == 0) {
        cout << "No bookings!" << endl;
        return;
    }
    for (int i = 0; i < numBookings; i++) {
        if (strcmp(email, bookingHistories[i].email) == 0) {
            break;
        }
        if (strcmp(email, bookingHistories[i].email) != 0 && i == numBookings - 1) {
            cout << "No bookings!" << endl;
            return;
        }
    }
    cout << "Booking History:" << endl;
    for (int i = 0; i < numBookings; i++) {
        if (strcmp(bookingHistories[i].email, email) != 0) {//
            continue;//
        }//
        cout << endl << "Movie: " << movieNames[bookingHistories[i].movieCode] << endl;
        cout << "Date: " << availableDates[bookingHistories[i].dateCode] << endl;
        cout << "Show Time: " << hours[bookingHistories[i].sessionTimeCode] << endl;
        cout << "Seats: ";
        for (int j = 0; j < bookingHistories[i].numTickets[0] + bookingHistories[i].numTickets[1]; j++) {
            cout << bookingHistories[i].seletedSeats[j] << " ";//
        }
        cout << endl << endl;
        cout << "             No. of Tickets  Price  Subtotal" << endl;
        cout << left << setw(26) << "Adult" << bookingHistories[i].numTickets[0] << right << setw(7) << movies[bookingHistories[i].movieCode].prices[0] << setw(10) << bookingHistories[i].numTickets[0] * movies[bookingHistories[i].movieCode].prices[0] << endl;
        cout << left << setw(26) << "Concession" << bookingHistories[i].numTickets[1] << right << setw(7) << movies[bookingHistories[i].movieCode].prices[1] << setw(10) << bookingHistories[i].numTickets[1] * movies[bookingHistories[i].movieCode].prices[1] << endl;
        cout << endl << "Total Amount For Tickets : " << (bookingHistories[i].numTickets[0] * movies[bookingHistories[i].movieCode].prices[0]) + (bookingHistories[i].numTickets[1] * movies[bookingHistories[i].movieCode].prices[1]) << endl;
        cout << "----------------------------------------------" << endl;
    }
}

void saveMemberInfo(MemberRecord memberDetails[], int numMembers)
{
    ofstream outfile("Member Info.dat", ios::out | ios::binary);
    if (!outfile) {
        cout << "Error opening file for saving" << endl;
        return;
    }
    for (int i = 0; i < numMembers; i++) {
        outfile.write(reinterpret_cast<char*>(&memberDetails[i]), sizeof(MemberRecord));
    }
    outfile.close();
}

void saveMovies(Movie movies[], int numMovies)
{
    ofstream outfile("Movies.dat", ios::out | ios::binary);
    if (!outfile) {
        cout << "Error opening file for saving" << endl;
        return;
    }
    for (int i = 0; i < numMovies; i++) {
        outfile.write(reinterpret_cast<char*>(&movies[i]), sizeof(Movie));
    }
    outfile.close();
}

void saveBookingHistories(BookingInfo bookingHistories[], int numBookings)
{
    ofstream outfile("Booking Histories.dat", ios::out | ios::binary);
    if (!outfile) {
        cout << "Error opening file for saving" << endl;
        return;
    }
    for (int i = 0; i < numBookings; i++) {
        outfile.write(reinterpret_cast<char*>(&bookingHistories[i]), sizeof(BookingInfo));
    }
    outfile.close();
}
