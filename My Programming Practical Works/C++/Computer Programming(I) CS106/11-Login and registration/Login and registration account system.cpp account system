#include <iostream>
#include <fstream>
#include <string.h>
using namespace::std;

struct Member
{
    char email[40];
    char password[24];
    char IDNumber[12];
    char name[12];
    char phone[12];
};

void loadMemberInfo(ifstream& inMemberFile, Member memberDetails[], int& numMembers);//

// input an integer from the keyboard, and
// returns the integer if it belongs to [ begin, end ], returns -1 otherwise.
int inputAnInteger(int begin, int end);//

void login(Member memberDetails[], int numMembers);//

// returns true if there is a member
// whose email and password are equal to the specified email and password, respectively
bool legal(char email[], char password[], Member memberDetails[], int numMembers, int& recordNumber);

void accountInfor(Member memberDetails[], int numMembers, int recordNumber);//

void newMember(Member memberDetails[], int& numMembers);//

// returns true if there is a member whose IDNumber is equal to newIDNumber
bool existingID(char newIDNumber[], Member memberDetails[], int& numMembers);

// returns true if there is a member whose email is equal to newEmail
bool existingEmail(char newEmail[], Member memberDetails[], int& numMembers);

void saveMemberInfo(ofstream& outMemberFile, Member memberDetails[], int numMembers);//

int main()
{
    Member memberDetails[100] = { "", "", "", "", "" };
    int numMembers = 0;

    ifstream inMemberFile;
    ofstream outMemberFile;

    loadMemberInfo(inMemberFile, memberDetails, numMembers);

    cout << "Welcome to Vieshow Cinemas member system\n\n";

    int choice;

    while (true)
    {
        cout << "Enter your choice:" << endl;
        cout << "1. Sign In\n";
        cout << "2. New Member\n";
        cout << "3. Sign Out\n? ";

        choice = inputAnInteger(1, 3);
        cout << endl;

        switch (choice)
        {
        case 1:
            login(memberDetails, numMembers);
            break;

        case 2:
            newMember(memberDetails, numMembers);
            break;

        case 3:
            saveMemberInfo(outMemberFile, memberDetails, numMembers);
            cout << "Thank you...\n\n";
            system("pause");
            return 0;

        default:
            cout << "Input Error!\n\n";
            break;
        }
    }

    system("pause");
}
void loadMemberInfo(ifstream &inMemberFile, Member memberDetails[], int& numMembers) {
    inMemberFile.open("MemberInfo.dat", ios::in);
    if (!inMemberFile) {
        cout << "Member file not found, starting with an empty database" << endl;
    }
    numMembers = 0;
    while (inMemberFile >> memberDetails[numMembers].name >> memberDetails[numMembers].email >> memberDetails[numMembers].phone >> memberDetails[numMembers].IDNumber >> memberDetails[numMembers].password) {
        numMembers++;
    }
    inMemberFile.close();
}
int inputAnInteger(int begin, int end)
{
    int integer;
    cin >> integer;
    if (integer >= begin && integer <= end) {
        return integer;
    }
    else if (integer == 0) {
        return 0;
    }
    else {
        return -1;
    }
}
void login(Member memberDetails[], int numMembers)
{
    int recordNumber;
    int choice;
    char email[40],password[24];
    while (true) {
        cout << "Enter email address:";
        cin >> email;
        cout << "Enter password:";
        cin >> password;
        cout << endl;
        if (legal(email, password, memberDetails, numMembers, recordNumber) == 0) {
            cout << "Sorry, unrecognized email or password." << endl << endl;
        }
        else {
            break;
        }
    }
    while (true)
    {
        cout << "Enter your choice:" << endl;
        cout << "1. Account Information" << endl;
        cout << "2. Buy Tickets" << endl;
        cout << "3. End" << endl << '?';
        int choice = inputAnInteger(1, 3);
        while (choice == -1 || choice == 0) {
            cout << endl << "Input Error!" << endl << endl;
            cout << "Enter your choice:" << endl;
            cout << "1. Account Information" << endl;
            cout << "2. Buy Tickets" << endl;
            cout << "3. End" << endl << '?';
            choice = inputAnInteger(1, 3);
        }
        if (choice != -1) {
            switch (choice)
            {
            case 1:
                cout << endl;
                accountInfor(memberDetails, numMembers, recordNumber);
                break;
            case 2:
                cout << "No tickets";
                break;
            case 3:
                return;
            }
        }
    }
}
void newMember(Member memberDetails[], int& numMembers) {
    char IDNumber[12], name[12], email[40], password[24], phone[12];
    cout << "Enter your ID number:";
    cin >> IDNumber;
    if (existingID(IDNumber, memberDetails, numMembers) == 0) {
        cout << endl;
    }
    else {
        cout << endl << "An account already exists with the ID number!" << endl << endl;
        return;
    }
    cout << "Enter your name:";
    cin >> name;
    cout << endl;
    cout << "Enter an email address:"; 
    cin >> email;
    if (existingEmail(email, memberDetails, numMembers) == 0) {
        cout << endl;
    }
    else {
        cout << endl << "An account already exists with the ID number!" << endl ;
        return;
    }
    cout << "Enter an email password:";
    cin >> password;
    cout << endl;
    cout << "Enter your phone number:";
    cin >> phone;
    
    strcpy_s(memberDetails[numMembers].IDNumber, IDNumber);
    strcpy_s(memberDetails[numMembers].name, name);
    strcpy_s(memberDetails[numMembers].email, email);
    strcpy_s(memberDetails[numMembers].password, password);
    strcpy_s(memberDetails[numMembers].phone, phone);

    numMembers++;
    cout << endl << endl << "Successful!" << endl << endl;;
}
void saveMemberInfo(ofstream& outMemberFile, Member memberDetails[], int numMembers) 
{
    outMemberFile.open("MemberInfo.dat", ios::out);
    while (!outMemberFile) {
        cout << "Error opening file for saving" << endl;
        return;
    }
    for (int i = 0; i < numMembers; i++) {
        outMemberFile << memberDetails[i].name << " " << memberDetails[i].email << " " << memberDetails[i].phone << " " << memberDetails[i].IDNumber << " " << memberDetails[i].password << endl;
    }
    outMemberFile.close();
}
void accountInfor(Member memberDetails[], int numMembers, int recordNumber) {
    cout << "1. Name:" << memberDetails[recordNumber].name << endl;
    cout << "2. Email Address:" << memberDetails[recordNumber].email << endl;
    cout << "3. Phone Number:" << memberDetails[recordNumber].phone << endl;
    cout << "4. ID Number:" << memberDetails[recordNumber].IDNumber << endl;
    cout << "5. Password:" << memberDetails[recordNumber].password << endl << endl;
    cout << "Which one do you want to modify (0 – not modify)?";
    int choice = inputAnInteger(1, 5);
    if (choice == 0) {
        return;
    }
    while (choice == -1) {
        cout << endl << "Input Error! Please try again:";
        choice = inputAnInteger(1, 5);
    }
    switch (choice)
    {
    case 1:
        cout << "Enter correct data:";
        cin >> memberDetails[recordNumber].name;
        cout << endl << "Successful!" << endl << endl;
        break;
    case 2:
        cout << "Enter correct data:";
        cin >> memberDetails[recordNumber].email;
        cout << endl << "Successful!" << endl << endl;
        break;
    case 3:
        cout << "Enter correct data:";
        cin >> memberDetails[recordNumber].phone;
        cout << endl << "Successful!" << endl << endl;
        break;
    case 4:
        cout << "Enter correct data:";
        cin >> memberDetails[recordNumber].IDNumber;
        cout << endl << "Successful!" << endl << endl;
        break;
    case 5:
        cout << "Enter correct data:";
        cin >> memberDetails[recordNumber].password;
        cout << endl << "Successful!" << endl << endl;
        break;
    default:
        cout << "Input Error! Please try again:";
        break;
    }
}
bool existingID(char newIDNumber[], Member memberDetails[], int& numMembers)
{
    for (int i = 0; i < numMembers; i++) {
        if (strcmp(newIDNumber, memberDetails[i].IDNumber) == 0) {
            return true;
        }
    }
    return false;
}
bool legal(char email[], char password[], Member memberDetails[], int numMembers, int& recordNumber) 
{
    for (int i = 0; i < numMembers; i++) {
        if (strcmp(email, memberDetails[i].email) == 0 && strcmp(password, memberDetails[i].password) == 0) {
            recordNumber = i;
            return true;
        }
    }
    return false;
}
bool existingEmail(char newEmail[], Member memberDetails[], int& numMembers) 
{
    for (int i = 0; i < numMembers; i++) {
        if (strcmp(newEmail, memberDetails[i].email) == 0) {
            return true;
        }
    }
    return false;
}
