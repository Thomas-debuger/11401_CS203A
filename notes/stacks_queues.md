## p.14 Stack   

Defination of Stack：Stack是一種線性資料結構，遵循後進先出的規則(LIFO)，最後放入的元素會最先被取出。   

## p.16 ADT: Stack   

`Stack Creates(maxStackSize)：創建一個空的stack，最多可以放入maxStackSize個元素。`    
`Boolean isFull(stack,maxStackSize)：如果stack裡的元素數量等於maxStackSize，回傳true，否則回傳false。`   
`Boolean isEmpty(stack)：如果stack的狀態和剛建立的空堆疊相同，回傳true，否則回傳false。`   
`Stack Push(stack)：如果stack容量已滿，觸發錯誤訊息"stackFull"表示堆疊已滿，否則插入元素至頂端top並回傳更新後的stack。`   
`Stack pop(Stack)：如果stack是空的，直接return，否則移出並回傳最上層的元素。`   

## p.17 Queue    

Defination of Queue：Queue是一種線性資料結構，遵循先進先出的規則(FIFO)，最先放入的元素會最先被取出。   

## p.19 ADT: Queue    
`Queue Creates(maxQueueSize)：創建一個空的queue，最多可以放入maxQueueSize個元素。`   
`Boolean isFull(queue,maxQueueSize)：如果queue裡的元素數量等於maxQueueSize，回傳true，否則回傳false。`   
`Boolean isEmpty(queue)：如果queue的狀態和剛建立的空佇列相同，回傳true，否則回傳false。`   
`Queue Add(queue)：如果佇列容量已滿，觸發錯誤訊息"QueueFall"表示容量已滿，否則插入元素至序列最後方。`
`Queue Delete(queue)：如果佇列是空的，直接return，否則移出並回傳最前面的元素。`

