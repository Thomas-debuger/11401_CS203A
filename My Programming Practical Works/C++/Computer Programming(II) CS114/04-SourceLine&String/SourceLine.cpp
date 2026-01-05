// SourceLine class member-function definitions.

#include <iostream>
using std::cout;
using std::endl;

#include "SourceLine.h" // SourceLine class definition

// default constructor
SourceLine::SourceLine()
    : sourceLine()
{
}

SourceLine& SourceLine::operator=(const char* const ptr)
{
    sourceLine = ptr;
    return *this;
}

void SourceLine::delComments()
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

void SourceLine::delStrConst()
{
    size_t length = sourceLine.size();
    int begin = 0, end = 0;
    int i = 0;
    while (i < sourceLine.size()) {

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
        if (begin < end) {/////
            sourceLine.erase(begin, end - begin + 1);//是end - begin + 1，不是end - begin
            begin = 0, end = 0;/////重置大小，與if (begin < end)配合，不重置的話會多刪一次
            ///假設一行程式有兩個要刪的"長文"..."短文"，刪了長文之後短文會往前，此時短文有可能會進入begin跟end之間，因此需要重置i=begin來刪短文(重置前的i=end，因此如果長文比短文多很多的話，很有可能會漏刪短文，因為短文有可能會進入begin跟end之間)
            i = begin;///
        }
    }
}

void SourceLine::delCharConst()
{
    size_t length = sourceLine.size();
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
        if (begin < end) {/////
            sourceLine.erase(begin, end - begin + 1);//是end - begin + 1，不是end - begin
            begin = 0, end = 0;/////重置大小，與if (begin < end)配合，不重置的話會多刪一次
            ///假設一行程式有兩個要刪的"長文"..."短文"，刪了長文之後短文會往前，此時短文有可能會進入begin跟end之間，因此需要重置i=begin來刪短文(重置前的i=end，因此如果長文比短文多很多的話，很有可能會漏刪短文，因為短文有可能會進入begin跟end之間)
            i = begin;///
        }
    }
}

void SourceLine::extractIdentifiers(vector< Identifier >& identifiers)
{
    size_t length = sourceLine.size();
    int begin = 0, end = 0;
    for (int i = 0; i < sourceLine.size(); i++) {
        if (isalpha(sourceLine[i])) {
            begin = i;
            for (int j = i + 1; j < sourceLine.size(); j++) {
                //如果j已經檢查到該行最後一個位置，且該位置仍是英文字母，則直接把整段丟進identifiers
                //ex:test4.cpp裡的 struct StudentData
                if (j == sourceLine.size() - 1 && isalpha(sourceLine[j])) {
                    end = j;
                    identifiers.push_back(sourceLine.substr(begin, end - begin + 1));//
                    i = j;//
                    break;
                }
                //
                else if (!isalnum(sourceLine[j]) && sourceLine[j] != '_') {
                    end = j;
                    identifiers.push_back(sourceLine.substr(begin, end - begin));//要寫在for j迴圈裡面
                    i = j;//記得把i更新成j，接著會跑到外層迴圈i++，並繼續尋找下一個要放進identifiers的字串
                    break;
                }
            }
        }
        //identifiers.push_back(sourceLine.substr(begin, end - begin));//不能寫在這，這一行是放在最外層的 for 迴圈中，導致每次 for (int i = 0; i < sourceLine.size(); i++) 迴圈都可能執行一次 push_back，這是不正確的。
    }
}
bool operator==(const SourceLine& lhs, const SourceLine& rhs)
{
    return lhs.sourceLine == rhs.sourceLine;
}

bool operator!=(const SourceLine& lhs, const SourceLine& rhs)
{
    return !(lhs == rhs);
}
