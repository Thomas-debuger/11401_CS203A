#include <iostream>
#include <fstream>
#include <cstring>
#include <vector>
using namespace::std;

// reads in a C++ program from a cpp file, and put it to the vector program
void load(vector< char* >& program);

// deletes the comment beginning with "//" from sourceLine if any
void delComment(char* sourceLine);

// deletes all string constants from sourceLine
void delStrConsts(char* sourceLine);

// deletes all character constants from sourceLine
void delCharConsts(char* sourceLine);

// extracts all identifiers from sourceLine, and
// put them into the vector identifiers
void extractIdentifiers(char* sourceLine, vector< char* >& identifiers);

// stores all non-keyword strings in the vector identifiers into a text file
void store(vector< char* >& identifiers);

// returns true if and only if str is a C++ keyword
bool keyword(char str[]);

// returns true iff identifiers[ pos ] belongs to identifiers[ 0 .. pos-1 ]
bool duplicate(vector< char* >& identifiers, int pos);

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
    vector< char* > program;

    // reads in a C++ program from a cpp file, and put it to the vector program
    load(program);

    vector< char* > identifiers;
    for (size_t i = 0; i < program.size(); i++)
    {
        delComment(program[i]); // deletes the comment beginning with "//" from program[ i ]
        delStrConsts(program[i]); // deletes all string constants from program[ i ]
        delCharConsts(program[i]); // deletes all character constants from program[ i ]

        if (strcmp(program[i], "") != 0)
            extractIdentifiers(program[i], identifiers);
        // extracts all identifiers from program[ i ], and put them into the vector identifiers
    }

    // stores all non-keyword strings in the vector identifiers into a text file
    store(identifiers);

    for (size_t i = 0; i < identifiers.size(); i++)
        delete[] identifiers[i];

    for (size_t i = 0; i < program.size(); i++)
        delete[] program[i];
    system("pause");
}

void load(vector< char* >& program)
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

    char Line[100];
    while (inFile.getline(Line, 100)) {
        char* newLine = new char[strlen(Line) + 1];
        strcpy_s(newLine, strlen(Line) + 1, Line);
        //strcpy_s(newLine, Line);
        //需要在中間傳遞大小，因為它使用動態記憶體配置，編譯器無法推斷緩衝區大小。
        //當使用動態記憶體配置時，編譯器對該指標背後實際分配的記憶體大小一無所知。動態記憶體只是一塊由程式在執行期間分配的記憶體，而編譯器無法靜態追蹤這些配置。
        //因此，在使用像 strcpy_s 這類需要大小資訊的函數時，你必須手動告訴它緩衝區的大小，以確保它不會超出邊界，導致記憶體溢位
        program.push_back(newLine);
    }
    inFile.close();
}

void delComment(char* sourceLine)
{
    size_t length = strlen(sourceLine);
    if (length > 1)
        for (size_t i = 0; i < length - 1; i++)
            if (sourceLine[i] == '/' && sourceLine[i + 1] == '/')
            {
                sourceLine[i] = '\0';
                return;
            }
}

void delStrConsts(char* sourceLine)
{
    int i = 0, begin = 0, end = 0;
    while (i < strlen(sourceLine)) {
        for (; i < strlen(sourceLine); i++) {
            if (sourceLine[i] == '\"') {
                begin = i;
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
        if (begin < end) {
            for (int i = begin; i <= end; i++) {
                sourceLine[i] = ' ';
            }
        }
    }
}

void delCharConsts(char* sourceLine)
{
    int i = 0, begin = 0, end = 0;
    while (i < strlen(sourceLine)) {
        for (; i < strlen(sourceLine); i++) {
            if (sourceLine[i] == '\'') {
                begin = i;
                i++;
                break;
            }
        }
        for (; i < strlen(sourceLine); i++) {
            if (sourceLine[i] == '\'' && sourceLine[i - 1] != '\\') {
                end = i;
                i++;
                break;
            }
        }
        if (begin < end) {
            for (int i = begin; i <= end; i++) {
                sourceLine[i] = ' ';
            }
        }
    }
}

void extractIdentifiers(char* sourceLine, vector< char* >& identifiers)
{
    size_t length = strlen(sourceLine);
    size_t begin;
    size_t end = 0;
    int i = 0;
    while (i < length) {
        int k = 0;
        char* a = new char[length + 1]();
        while (!isalpha(sourceLine[i]) && i < length) {
            i++;
        }
        for (; i < length; i++) {
            if (isalnum(sourceLine[i]) || sourceLine[i] == '_' && isalnum(sourceLine[i - 1]) && isalnum(sourceLine[i + 1])) {
                a[k] = sourceLine[i];
                k++;
            }
            else if (!isalnum(sourceLine[i])) {
                break;
            }
            a[k] = '\0';
        }
        //a.data()會指向vector<char> a的首位字母的記憶體位置，相當於char*
        //char[]和char*在傳遞參數時是可以互換的
        if (!keyword(a) && strlen(a) > 1) {
            identifiers.push_back(a);
            if (identifiers.size() > 1) {
                if (duplicate(identifiers, identifiers.size() - 1) == 1) {
                    identifiers.pop_back();
                }
            }
        }
    }
}

void store(vector< char* >& identifiers)
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
    for (int i = 0; i < identifiers.size(); i++) {
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

bool duplicate(vector< char* >& identifiers, int pos)
{
    for (int i = 0; i < pos; i++)
        if (strcmp(identifiers[i], identifiers[pos]) == 0)
            return true;

    return false;
}


