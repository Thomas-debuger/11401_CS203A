#include <iostream>
#include <cstring>
#include <fstream>
using namespace::std;

// reads in a C++ program from a cpp file, and put it to the array program
void load(char(*program)[100], int& numLines);

// deletes the comment beginning with "//" from sourceLine if any
void delComment(char sourceLine[]);

// deletes all string constants from sourceLine
void delStrConsts(char sourceLine[]);

// deletes all character constants from sourceLine
void delCharConsts(char sourceLine[]);

// extracts all identifiers from sourceLine, and put them into the array identifiers
void extractIdentifiers(char sourceLine[], char identifiers[][32], int& numIdentifiers);

// stores all non-keyword strings in the array identifiers into a text file
void store(char (*identifiers)[32], int numIdentifiers);

// returns true if and only if str is a C++ keyword
bool keyword(char str[]);

// returns true if and only if identifiers[ pos ] belongs to identifiers[ 0 .. pos-1 ]
bool duplicate(char (*identifiers)[32], int pos);

const char keywords[][20] = { "auto", "break", "case", "char", "const",
                                "continue", "default", "define","do", "double",
                                "else", "enum", "extern", "float", "for",
                                "goto", "if", "int", "long", "register",
                                "return", "short", "signed", "sizeof",
                                "static", "struct", "switch", "typedef",
                                "union", "unsigned", "void", "volatile",
                                "while", "bool", "catch", "class",
                                "const_cast", "delete", "dynamic_cast",
                                "explicit", "false", "friend", "inline",
                                "mutable", "namespace", "new", "operator",
                                "private", "protected", "public",
                                "reinterpret_cast", "static_cast", "template",
                                "this", "throw", "true", "try", "typeid",
                                "typename", "using", "virtual", "include" };

int main()
{
    char (*program)[100] = new char[500][100];
    int numLines = 0;

    // reads in a C++ program from a cpp file, and put it to the array program
    load(program, numLines);

    char (*identifiers)[32] = new char[500][32];
    int numIdentifiers = 0;

    for (int i = 0; i < numLines; i++)
    {
        delComment(program[i]); // deletes the comment beginning with "//" from program[ i ]
        delStrConsts(program[i]); // deletes all string constants from program[ i ]
        delCharConsts(program[i]); // deletes all character constants from program[ i ]

        if (strcmp(program[i], "") != 0)
            extractIdentifiers(program[i], identifiers, numIdentifiers);
        // extracts all identifiers from program[ i ], and put them into the array identifiers
    }

    // stores all non-keyword strings in the array identifiers into a text file
    store(identifiers, numIdentifiers);

    delete[] program;
    delete[] identifiers;

    system("pause");
}

void load(char(*program)[100], int& numLines)
{
    char filename[12];
    cout << "Input the name of a cpp file: ";
    cin >> filename;
    ifstream inFile(filename, ios::in);

    if (!inFile)
    {
        cout << "File could not be opened" << endl;
        system("pause");
        exit(1);
    }
    while (inFile.getline(program[numLines], 100, '\n')) {
        numLines++;
    }
    inFile.close();
}

void delComment(char sourceLine[])
{
    size_t length = strlen(sourceLine);
    if (length > 1)
        for (size_t i = 0; i < length - 1; i++)
            if (sourceLine[i] == '/' && sourceLine[i + 1] == '/')
            {
                sourceLine[i] = '\0';
                return;
            }
    //在 C++ 中，C 字符串（如 char str[]）會以 \0 作為結尾，標記字串的終止。
}

void delStrConsts(char sourceLine[])
{
    int bigin = 0, end = 0;
    int i = 0;
    while (i < strlen(sourceLine)) {
        for (; i < strlen(sourceLine); i++) {
            if (sourceLine[i] == '\"') {
                bigin = i;
                i++;
                break;
            }
        }
        for (; i < strlen(sourceLine); i++) {
            if (sourceLine[i] == '\"' && sourceLine[i - 1] != '\\') {
                end = i;
                i++;
                break;
            }
        }
        if (bigin < end) {
            for (int j = bigin; j <= end; j++) {
                sourceLine[j] = ' ';
            }
        }
    }
    
}

void delCharConsts(char sourceLine[])
{
    int bigin = 0, end = 0;
    int i = 0;
    while(i < strlen(sourceLine)){
        for (; i < strlen(sourceLine); i++) {
            if (sourceLine[i] == '\'') {
                bigin = i;
                i++;
                break;
            }
        }
        for (; i < strlen(sourceLine); i++) {
            if (sourceLine[i] == '\'' && sourceLine[i - 1] != '\\') {
                end = i;
                break;
            }
        }
        if (bigin < end) {
            for (int j = bigin; j <= end; j++) {
                sourceLine[j] = ' ';
            }
        }
    }
    
}

void extractIdentifiers(char sourceLine[], char identifiers[][32], int& numIdentifiers)
{
    int i = 0;
    int value;
    while (i < strlen(sourceLine)) {
        char a[32]{};
        int k = 0;
        while (!isalpha(sourceLine[i]) && i < strlen(sourceLine)) {
            i++;
        }
        for (; i < strlen(sourceLine); i++) {
            if (isalnum(sourceLine[i])) {
                a[k] = sourceLine[i];
                k++;
            }
            else if (!isalnum(sourceLine[i])) {
                break;
            }
        }
        a[k] = '\0';
        if (!keyword(a) && strlen(a) > 0) {
            strcpy_s(identifiers[numIdentifiers], a);
            numIdentifiers++;
            if (numIdentifiers > 1) {
                if (duplicate(identifiers, numIdentifiers - 1) == 1) {
                    numIdentifiers -= 1;
                }
            }
        }
    }
}

void store(char (*identifiers)[32], int numIdentifiers)
{
    char filename[20];
    cout << "Input the name of a txt file: ";
    cin >> filename;
    ofstream outFile(filename, ios::out);

    if (!outFile)
    {
        cout << "File could not be opened" << endl;
        system("pause");
        exit(1);
    }
    for (int i = 0; i < numIdentifiers; i++) {
        outFile << identifiers[i] << endl;
    }
    outFile.close();
}

bool keyword(char str[])
{
    size_t numKeywords = sizeof(keywords) / 20;
    for (size_t i = 0; i < numKeywords; i++)
        if (strcmp(keywords[i], str) == 0)
            return true;

    return false;
}

bool duplicate(char (*identifiers)[32], int pos)
{
    for (int i = 0; i < pos; i++)
        if (strcmp(identifiers[i], identifiers[pos]) == 0)
            return true;

    return false;
}
