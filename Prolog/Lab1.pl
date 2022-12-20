/* Лабораторная работа №1
  Основы работы в системе 
       Visual Prolog. */
       

predicates
 
 nondeterm parent(STRING, STRING)
 nondeterm man(STRING)
 nondeterm woman(STRING)
 
clauses
 
 parent("Николай","Ольга").
 parent("Николай","Никита").
 parent("Елена","Ольга").
 parent("Екатерина","Никита").
 
 woman("Ольга").
 woman("Елена").
 woman("Екатерина").
 
 man("Николай").
 man("Никита").
 
goal                                                                                          

 % parent("Николай","Ольга").                             % Определить, верно ли, что Николай является родителем Ольги? (Да)
 % parent("Алексей","Артём").                             % Определить, верно ли, что Алексей является родителем Артёма? (Нет)
 % parent("Николай",Child).                               % Определить, кто является ребёнком Николая? (Child = Ольга, Child = Артём)
 % parent(Parent,"Никита").                               % Определить, кто родители Никиты? (Parent = Николай, Parent = Екатерина)
 % parent(Parent,Child).                                  % Определить всех родителей и их детей
 % parent("Николай",_).                                   % Есть ли у Николая ребёнок?
 % parent("Николай",Child), parent("Екатерина",Child).    % Определить имя человека, который является ребёнком Николая и Екатерины (Никита)
 
 %----------------------------------------------------------------------------
 
 % parent("Николай",Child), woman(Child).                 % Определить дочь Николая (Ольга)
 % parent(Parent,_), woman(Parent).                       % Определить родителей женского пола, у которых есть ребёнок (Елена, Екатерина)
 % parent(Parent,Child), man(Parent), woman(Child).       % Определить родителя и ребёнка, где родитель мужского пола и ребёнок женского пола (Николай и Ольга)
 parent(_,Child), woman(Child). 