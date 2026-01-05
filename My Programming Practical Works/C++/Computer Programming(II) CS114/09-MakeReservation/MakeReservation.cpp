// MakeReservation.cpp
// Member-function definitions for class MakeReservation.
#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

#include "MakeReservation.h" // MakeReservation class definition

extern bool leapYear(int year);
extern Date computeCurrentDate();

MakeReservation::MakeReservation(ReservationDatabase& theReservationDatabase,
    AvailRoomDatabase& theAvailableRoomsDatabase)
    : reservationDatabase(theReservationDatabase),
    availableRoomDatabase(theAvailableRoomsDatabase)
{
}

void MakeReservation::execute()
{
    Date currentDate = computeCurrentDate();

    Date availableMonths[7];

    computeAvailableMonths(currentDate, availableMonths);

    int checkInYMCode;
    int firstDay;
    int lastDay;

    Date checkInDate;
    Date checkOutDate;

    inputCheckInDates(checkInDate, currentDate, availableMonths, checkInYMCode, firstDay, lastDay);//---fininsh here----
    inputCheckOutDates(checkOutDate, checkInDate, availableMonths, checkInYMCode, firstDay, lastDay);

    cout << "\nCheck in date: " << checkInDate.getYear() << '-'
        << setw(2) << setfill('0') << checkInDate.getMonth() << '-'
        << setw(2) << checkInDate.getDay() << endl;

    cout << "Check out date: " << checkOutDate.getYear() << '-'
        << setw(2) << checkOutDate.getMonth() << '-'
        << setw(2) << checkOutDate.getDay() << endl;
    //
    //check if no rooms available
    bool haveavailRoom = false;
    for (int i = 1; i < 6; i++) {
        if (availableRoomDatabase.compMinNumRooms(i, checkInDate, checkOutDate) > 0) {
            haveavailRoom = true;
        }
    }
    if (!haveavailRoom) {
        cout << "\nThere are no rooms available!" << endl << endl;
        cin.ignore();
        return;
    }
    //
    availableRoomDatabase.displayAvailableRooms(checkInDate, checkOutDate);

    const char roomTypeName[6][20] = { "", "Superior Room", "Deluxe Room", "Deluxe Twin Room",
                                               "Superior Suite", "Deluxe Suite" };
    //
    int roomType = 0;
    int numRooms = 0;

    while (availableRoomDatabase.compMinNumRooms(roomType, checkInDate, checkOutDate) == 0 || roomType > 6 || roomType < 1) {
        cout << "\nSelect Room Type：" << endl;
        for (int i = 1; i < 6; i++) {
            if (availableRoomDatabase.compMinNumRooms(i, checkInDate, checkOutDate) > 0) {
                cout << i << ". " << roomTypeName[i] << endl;
            }
        }
        cout << "6. Give up" << endl;

        cout << "?";
        cin >> roomType;
        if (roomType == 6) {
            cin.ignore();
            return;
        }
    }
    cout << endl;

    while (numRooms > availableRoomDatabase.compMinNumRooms(roomType, checkInDate, checkOutDate) || numRooms == 0) {
        cout << "Number of rooms ( " << availableRoomDatabase.compMinNumRooms(roomType, checkInDate, checkOutDate) << " rooms available ):";
        cin >> numRooms;
        cin.ignore();
        cout << endl;
    }
    //

    availableRoomDatabase.decreaseAvailRooms(roomType, numRooms, checkInDate, checkOutDate);

    cout << "\nID Number: ";
    string idNumber;
    cin >> idNumber;

    cout << "\nName: ";
    string name;
    cin >> name;

    cout << "\nMobile Phone: ";
    string mobile;
    cin >> mobile;
    cin.ignore();

    newReservation.setReservation(roomType, numRooms, checkInDate, checkOutDate, idNumber, name, mobile);

    cout << "\n    Name   Fare       Mobile          Room type   Number of rooms   Check in date   Check out date\n";
    newReservation.displayReservation();

    reservationDatabase.pushBack(newReservation);

    cout << "\nReservation successfully!" << endl;

}

void MakeReservation::computeAvailableMonths(Date currentDate, Date availableMonths[])
{

    for (int i = 1; i < 7; i++) {
        int month = currentDate.getMonth() + i - 1;
        if (month > 12) {
            month %= 12;
            availableMonths[i].setMonth(month);
            availableMonths[i].setYear(currentDate.getYear() + 1);

        }
        else {
            availableMonths[i].setMonth(month);
            availableMonths[i].setYear(currentDate.getYear());
        }
    }

}

void MakeReservation::inputCheckInDates(Date& checkInDate, Date currentDate,
    Date availableMonths[], int& checkInYMCode, int& firstDay, int& lastDay)
{
    //處理vector內最後一個月最後一天不能輸的情況

    int days[13] = { 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };



    while (checkInYMCode < 1 || checkInYMCode > 6) {
        cout << "Please Input Check In Date" << endl << endl;
        cout << "Month：" << endl;
        for (int i = 1; i < 7; i++) {
            if (availableMonths[i].getMonth() < 10)
                cout << i << ". " << availableMonths[i].getYear() << "-0" << availableMonths[i].getMonth() << endl;
            else
                cout << i << ". " << availableMonths[i].getYear() << "-" << availableMonths[i].getMonth() << endl;
        }

        cout << "?";
        cin >> checkInYMCode;
        cout << endl;
    }
    cout << endl;

    if (checkInYMCode == 1) {
        //select this month so check in after today
        while (firstDay < computeCurrentDate().getDay() || firstDay > days[availableMonths[checkInYMCode].getMonth()]) {
            cout << "Day (" << computeCurrentDate().getDay() << " ~ " << days[availableMonths[checkInYMCode].getMonth()] << "):";
            cin >> firstDay;
            cout << endl;
        }
    }
    else if (checkInYMCode == 6) {
        //can not select the last day in data
        while (firstDay < 1 || firstDay >= days[availableMonths[checkInYMCode].getMonth()]) {
            cout << "Day (1 ~ " << days[availableMonths[checkInYMCode].getMonth()] - 1 << "):";
            cin >> firstDay;
            cout << endl;
        }
    }
    else {
        while (firstDay < 1 || firstDay > days[availableMonths[checkInYMCode].getMonth()]) {
            cout << "Day (1 ~ " << days[availableMonths[checkInYMCode].getMonth()] << "):";
            cin >> firstDay;
            cout << endl;
        }
    }



    checkInDate.setYear(availableMonths[checkInYMCode].getYear());
    checkInDate.setMonth(availableMonths[checkInYMCode].getMonth());
    checkInDate.setDay(firstDay);
}

void MakeReservation::inputCheckOutDates(Date& checkOutDate, Date checkInDate,
    Date availableMonths[], int checkInYMCode, int firstDay, int lastDay)
{

    int days[13] = { 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };


    int checkoutYMCode = 0;
    while (checkoutYMCode < checkInYMCode || checkoutYMCode > 6) {
        cout << "Please Input Check Out Date" << endl;
        cout << "Month：" << endl;
        for (int i = checkInYMCode; i < 7; i++) {
            if (availableMonths[i].getMonth() < 10)
                cout << i << ". " << availableMonths[i].getYear() << "-0" << availableMonths[i].getMonth() << endl;
            else
                cout << i << ". " << availableMonths[i].getYear() << "-" << availableMonths[i].getMonth() << endl;
        }

        cout << "?";
        cin >> checkoutYMCode;
        cout << endl;
    }

    if (checkInYMCode == checkoutYMCode) {
        while (lastDay <= firstDay || lastDay > days[availableMonths[checkInYMCode].getMonth()]) {
            cout << "Day (" << firstDay + 1 << " ~ " << days[availableMonths[checkInYMCode].getMonth()] << "):";
            cin >> lastDay;
            cout << endl;
        }

    }
    else {
        while (lastDay < 1 || lastDay > days[availableMonths[checkInYMCode].getMonth()]) {
            cout << "Day (1 ~ " << days[availableMonths[checkInYMCode].getMonth()] << "):";
            cin >> lastDay;
            cout << endl;
        }
    }

    checkOutDate.setYear(availableMonths[checkoutYMCode].getYear());
    checkOutDate.setMonth(availableMonths[checkoutYMCode].getMonth());
    checkOutDate.setDay(lastDay);


}
