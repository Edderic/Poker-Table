Poker-Table
===========

Coding Challenge


    I used Test Driven Development with an emphasis on Unit Tests.
    Please run "rspec --color -fd" to see the tests at a high level.
    
    What I think is worthy about my design of the Poker Table
    is that it is a great example of one of the SOLID principles,
    namely Open for extension, but Closed to modification.
    
    By injecting depencies into the constructor, I feel that PokerTable
    embraces change. Adding variants (such as Sit 'n' Go, 7 Card Stud)
    is easier and doesn't break existing implementation.
    
    Also, exploiting polymorphism in Ruby--the land of ducks--is quite a
    beautiful thing. It lets me write code confidently. Making use of
    command statements on those dependencies makes the 'story' more clear
    and concise, much better than being littered with nil checks and
    conditionals.
    
    In terms of keeping code DRY, I used modules, such as
    RemoveCardFromDeck to encapsulate functionality
    to be reused in different classes.
    
    Todo:
    Implement the NoLimit, FixedLimit, and PotLimit classes.
