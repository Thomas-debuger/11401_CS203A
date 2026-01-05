#include <iostream>
#include <fstream>
#include <string>
using namespace::std;

// reads in a C++ program from a cpp file, and put it to the array program
void load(string* program, int& numLines);

// deletes the comment beginning with "//" from sourceLine if any
void delComment(string& sourceLine);

// deletes all string constants from sourceLine
void delStrConsts(string& sourceLine);

// deletes all character constants from sourceLine
void delCharConsts(string& sourceLine);

// extracts all identifiers from sourceLine, and
// put them into the array identifiers
void extractIdentifiers(string& sourceLine, string* identifiers,
    int& numIdentifiers);

// stores all non-keyword strings in the array identifiers into a text file
void store(string* identifiers, int numIdentifiers);

// return true if and only if "str" is a C++ keyword
bool keyword(string str);

// returns true iff identifiers[ pos ] belongs to identifiers[ 0 .. pos-1 ]
bool duplicate(string* identifiers, int pos);

const string keywords[] = { "auto", "break", "case", "char", "const",
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
    string* program = new string[500];
    int numLines = 0;

    // reads in a C++ program from a cpp file, and put it to the array program
    load(program, numLines);

    string* identifiers = new string[500];
    string null;
    int numIdentifiers = 0;

    for (int i = 0; i < numLines; i++)
    {
        delComment(program[i]); // deletes the comment beginning with "//" from program[ i ]
        delStrConsts(program[i]); // deletes all string constants from program[ i ]
        delCharConsts(program[i]); // deletes all character constants from program[ i ]

        if (program[i] != null)
            extractIdentifiers(program[i], identifiers, numIdentifiers);
        // extracts all identifiers from program[ i ], and put them into the array identifiers
    }

    // stores all non-keyword strings in the array identifiers into a text file
    store(identifiers, numIdentifiers);

    delete[] program;
    delete[] identifiers;

    system("pause");
}

void load(string* program, int& numLines)
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
    while (getline(inFile, program[numLines])) {
        numLines++;
    }
    inFile.close();
}

void delComment(string& sourceLine)
{
    size_t length = sourceLine.size();
    if (length > 1)
        for (size_t i = 0; i < length - 1; i++)
            if (sourceLine[i] == '/' && sourceLine[i + 1] == '/')
            {
                sourceLine.erase(i, length);
                break;
            }
}

void delStrConsts(string& sourceLine)
{
    int begin = 0, end = 0;
    int i = 0;
    while (i < sourceLine.size()) {
        begin = 0;
        end = 0;
        for (; i < sourceLine.size(); i++) {
            if (sourceLine[i] == '\"') {
                begin = i;
                i++;
                break;
            }
        }
        for (; i < sourceLine.size(); i++) {
            if (sourceLine[i] == '\"' && sourceLine[i - 1] != '\\') {
                end = i;
                i++;
                break;
            }
        }
        if (begin < end) {
            sourceLine.erase(begin, end - begin + 1);
            i = 0;
        }
    }
}

void delCharConsts(string& sourceLine)
{
    int begin = 0, end = 0;
    int i = 0;
    while (i < sourceLine.size()) {
        for (; i < sourceLine.size(); i++) {
            if (sourceLine[i] == '\'') {
                begin = i;
                i++;
                break;
            }
        }
        for (; i < sourceLine.size(); i++) {
            if (sourceLine[i] == '\'' && sourceLine[i - 1] != '\\') {
                end = i;
                i++;
                break;
            }
        }
        if (begin < end) {
            sourceLine.erase(begin, end - begin + 1);
        }
    }
}

void extractIdentifiers(string& sourceLine, string* identifiers,
    int& numIdentifiers)
{
    size_t length = sourceLine.size();
    size_t begin;
    size_t end = 0;
    int i = 0;
    while (i < length) {
        string a;
        while (i < length && !isalpha(sourceLine[i])) {
            i++;
            if (i >= length) {
                return;
            }
        }
        for (; i < sourceLine.size(); i++) {
            if (i < length && isalnum(sourceLine[i])) {
                a += sourceLine[i];
            }
            else if (!isalnum(sourceLine[i])) {
                break;
            }
        }
        if (!keyword(a) && a.size() > 1) {
            identifiers[numIdentifiers] = a;
            numIdentifiers++;
            if (duplicate(identifiers, numIdentifiers - 1) == 1) {
                numIdentifiers--;
            }
        }
    }
}

void store(string* identifiers, int numIdentifiers)
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

bool keyword(string str)
{
    const int numKeywords = 62;
    for (int i = 0; i < numKeywords; i++)
        if (keywords[i] == str)
            return true;
    return false;
}

bool duplicate(string* identifiers, int pos)
{
    for (int i = 0; i < pos; i++)
        if (identifiers[i] == identifiers[pos])
            return true;

    return false;
}
