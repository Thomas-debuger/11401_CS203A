// list standard header

#ifndef LIST
#define LIST

template< typename ValueType >
struct ListNode // list node
{
    ListNode* next;  // successor node, or first element if head
    ListNode* prev;  // predecessor node, or last element if head
    ValueType myVal; // the stored value, unused if head
};


// CLASS TEMPLATE ListVal
template< typename Ty >
class ListVal
{
public:
    using node = ListNode< Ty >;
    using nodePtr = node*;

    using value_type = Ty;
    using size_type = size_t;
    using difference_type = ptrdiff_t;
    using pointer = value_type*;
    using const_pointer = const value_type*;
    using reference = value_type&;
    using const_reference = const value_type&;

    ListVal() // initialize data
        : myHead(),
        mySize(0)
    {
    }

    nodePtr myHead; // pointer to head node
    size_type mySize; // number of elements
};


// CLASS TEMPLATE list
template< typename Ty >
class list // bidirectional linked list
{
    using node = ListNode< Ty >;
    using nodePtr = node*;
    using ScaryVal = ListVal< Ty >;

public:
    using value_type = Ty;
    using size_type = size_t;
    using difference_type = ptrdiff_t;
    using pointer = value_type*;
    using const_pointer = const value_type*;
    using reference = value_type&;
    using const_reference = const value_type&;

    using iterator = node*;
    using const_iterator = const node*;

    // empty container constructor (default constructor)
    // Constructs an empty container, with no elements.
    list()
        : myData()
    {
        myData.myHead = new node;
        myData.myHead->myVal = Ty();
        myData.myHead->prev = myData.myHead->next = myData.myHead;
    }

    list(size_type count) // construct list from count * Ty()
        : myData()
    {
        myData.myHead = new node;
        myData.myHead->myVal = Ty();
        myData.myHead->prev = myData.myHead->next = myData.myHead;

        myData.mySize = count;
        nodePtr a = myData.myHead;
        for (int i = 0; i < count; i++) {
            nodePtr b = new node;
            b->myVal = Ty();
            b->prev = a;
            b->next = a->next;
            a->next->prev = b;
            a->next = b;
            a = a->next;
        }


    }

    // List destructor
    // Destroys the container object.
    // Deallocates all the storage capacity allocated by the list container.
    ~list()
    {
        clear();
        delete myData.myHead;
    }

    // Assigns new contents to the container, replacing its current contents,
    // and modifying its size accordingly.
    // Copies all the elements from "right" into the container
    // (with "right" preserving its contents).
    list& operator=(const list& right)
    {
        if (this != &right)
        {
            if (right.myData.mySize == 0) // the right list is empty
            {
                if (myData.mySize != 0) // the left list is not empty
                    clear();
            }
            else // the right list is not empty
            {
                if (myData.mySize >= right.myData.mySize) {
                    nodePtr a = myData.myHead->next;
                    nodePtr b = right.myData.myHead->next;
                    for (int i = 0; i < right.myData.mySize; i++) {
                        a->myVal = b->myVal;
                        a = a->next;
                        b = b->next;
                    }
                    while (a != myData.myHead) {
                  //for (int i = 0; i < myData.mySize - right.myData.mySize; i++)
                        nodePtr c = a->next;
                        a->prev->next = a->next;
                        a->next->prev = a->prev;
                        delete[] a;//把a指向的空間刪掉
                        a = c;
                    }
                }
                else {
                    nodePtr a = myData.myHead->next;
                    nodePtr b = right.myData.myHead->next;
                    for (int i = 0; i < myData.mySize; i++) {
                        a->myVal = b->myVal;
                        a = a->next;
                        b = b->next;
                    }
                    a = a->prev;//
                    for (int i = 0; i < right.myData.mySize - myData.mySize; i++) {
                        nodePtr c = new node;//
                        c->myVal = b->myVal;
                        c->prev = a;
                        c->next = a->next;
                        a->next->prev = c;
                        a->next = c;
                        //delete a;
                        //a = c;
                        a = a->next;
                        b = b->next;
                    }
                }
                myData.mySize = right.myData.mySize;//


            }
        }

        return *this;
    }

    // Returns an iterator pointing to the first element in the list container.
    // If the container is empty, the returned iterator value shall not be dereferenced.
    iterator begin()
    {
        return iterator(myData.myHead->next);
    }

    // Returns an iterator pointing to the first element in the list container.
    // If the container is empty, the returned iterator value shall not be dereferenced.
    const_iterator begin() const
    {
        return const_iterator(myData.myHead->next);
    }

    // Returns an iterator referring to the past-the-end element in the list container.
    // The past-the-end element is the theoretical element
    // that would follow the last element in the list container.
    // It does not point to any element, and thus shall not be dereferenced.
    // If the container is empty, this function returns the same as list::begin.
    iterator end()
    {
        return iterator(myData.myHead);
    }

    // Returns an iterator referring to the past-the-end element in the list container.
    // The past-the-end element is the theoretical element
    // that would follow the last element in the list container.
    // It does not point to any element, and thus shall not be dereferenced.
    // If the container is empty, this function returns the same as list::begin.
    const_iterator end() const
    {
        return const_iterator(myData.myHead);
    }

    // Returns the number of elements in the list container.
    size_type size() const
    {
        return myData.mySize;
    }

    // Returns whether the list container is empty (i.e. whether its size is 0).
    bool empty() const
    {
        return myData.mySize == 0;
    }

    // Removes all elements from the list container (which are destroyed),
    // and leaving the container with a size of 0.
    void clear() // erase all
    {
        if (myData.mySize != 0) // the list is not empty
        {
            while (myData.myHead->next != myData.myHead)
            {
                myData.myHead->next = myData.myHead->next->next;
                delete myData.myHead->next->prev;
            }

            myData.myHead->prev = myData.myHead;
            myData.mySize = 0;
        }
    }

private:
    ScaryVal myData;
};

#endif // LIST
