   f   u   n   c   t   i   o   n   [   p   o   i   n   t   s   _   r   e   d   u   c   e   d   ]       =       s   h   a   d   i   n   g   (   p   o   i   n   t   s   ,   v   e   r   t   i   c   e   s   )   
   %       t   h   i   s       f   u   n   c   t   i   o   n       m   i   g   h   t       r   e   q   u   i   r   e   s       y   o   u       t   o       i   n   p   u   t       o   n   e       s   e   t       o   f       p   o   i   n   t   s   ,       a   s   
   %       w   e   l   l       a   s       a       s   e   t       o   f       v   e   r   t   i   c   e   s   ,       a   n   d       s   e   e       w   h   i   c   h       o   f       t   h   e       p   o   i   n   t   s       l   i   e       i   n   
   %       a   n   y       o   f       t   h   e       t   r   i   a   n   g   l   e   s   .       I   t       t   h   e   n       r   e   m   o   v   e   s       a   l   l       p   o   i   n   t   s       t   h   a   t       d   o       n   o   t   
   %       e   x   i   s   t       w   i   t   h   i   n       a   n   y       o   f       t   h   e       t   r   i   a   n   g   l   e   s   .       T   h   i   n   k       h   o   w       m   i   g   h   t       t   h   i   s       b   e       u   s   e   d   
   %       f   o   r       s   h   a   d   i   n   g   ?   
   n       =       s   i   z   e   (   p   o   i   n   t   s   ,   1   )   ;   
   m       =       s   i   z   e   (   v   e   r   t   i   c   e   s   ,   1   )   ;   
   p   o   i   n   t   s   _   r   e   d   u   c   e   d       =       z   e   r   o   s   (   n   ,   3   )   ;   
   l       =       0   ;   
   f   o   r       i       =       1   :   n   
                   f   o   r       j       =       1   :   (   m   /   3   )   
                                   a       =       j   -   1   ;   
                                   i   f       p   o   i   n   t   _   i   n   _   t   r   i   a   n   g   l   e   (   p   o   i   n   t   s   (   i   ,   :   )   ,   [   v   e   r   t   i   c   e   s   (   (   3   *   a       +       1   )   ,   :   )   ;   v   e   r   t   i   c   e   s   (   (   3   *   a       +       2   )   ,   :   )   ;       v   e   r   t   i   c   e   s   (   (   3   *   a       +       3   )   ,   :   )   ]   )       =   =       1   
                                               p   o   i   n   t   s   _   r   e   d   u   c   e   d   (   i   ,   :   )       =       p   o   i   n   t   s   (   i   ,   :   )   ;   
                                               l       =       l       +       1   ;   
                                               b   r   e   a   k   
                                   e   n   d   
                   e   n   d           
   e   n   d   
   p   o   i   n   t   s   _   r   e   d   u   c   e   d   (   l   :   n   ,   :   )       =       [   ]   ;