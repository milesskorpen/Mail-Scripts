FasdUAS 1.101.10   ��   ��    k             l     ��  ��    , &--------------------------------------     � 	 	 L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l     ��  ��    { u Inspired / built on top of an Outlook -> Omnifocus script by Rainer Burgstaller ( http://rainer.4950.net/?p=379 ) --     �   �   I n s p i r e d   /   b u i l t   o n   t o p   o f   a n   O u t l o o k   - >   O m n i f o c u s   s c r i p t   b y   R a i n e r   B u r g s t a l l e r   (   h t t p : / / r a i n e r . 4 9 5 0 . n e t / ? p = 3 7 9   )   - -      l     ��  ��    , &--------------------------------------     �   L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        l     ��  ��    , &--------------------------------------     �   L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    "  PROPERTIES TO BE AJUSTED --     �   8   P R O P E R T I E S   T O   B E   A J U S T E D   - -     !   l     �� " #��   " , &--------------------------------------    # � $ $ L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) E ? here we specify if we want the quick entry pane (1) or not (0)    * � + + ~   h e r e   w e   s p e c i f y   i f   w e   w a n t   t h e   q u i c k   e n t r y   p a n e   ( 1 )   o r   n o t   ( 0 ) (  , - , j     �� .��  0 showquickentry showQuickEntry . m     ����  -  / 0 / l     �� 1 2��   1 W Q if you dont want to have omnifocus be brought to the foreground, set this to 0,     2 � 3 3 �   i f   y o u   d o n t   w a n t   t o   h a v e   o m n i f o c u s   b e   b r o u g h t   t o   t h e   f o r e g r o u n d ,   s e t   t h i s   t o   0 ,   0  4 5 4 l     �� 6 7��   6 A ; however, this will only take effect if showQuickEntry is 1    7 � 8 8 v   h o w e v e r ,   t h i s   w i l l   o n l y   t a k e   e f f e c t   i f   s h o w Q u i c k E n t r y   i s   1 5  9 : 9 j    �� ;�� 80 bringomnifocustoforeground bringOmnifocusToForeground ; m    ����   :  < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @   set this to    A � B B    s e t   t h i s   t o ?  C D C l     �� E F��   E , & 0: for not putting the focus anywhere    F � G G L   0 :   f o r   n o t   p u t t i n g   t h e   f o c u s   a n y w h e r e D  H I H l     �� J K��   J 8 2 1: for putting the focus into the task name field    K � L L d   1 :   f o r   p u t t i n g   t h e   f o c u s   i n t o   t h e   t a s k   n a m e   f i e l d I  M N M l     �� O P��   O 4 . 2: for putting the focus in the project field    P � Q Q \   2 :   f o r   p u t t i n g   t h e   f o c u s   i n   t h e   p r o j e c t   f i e l d N  R S R l     �� T U��   T 6 0 3: for putting the focus into the context field    U � V V `   3 :   f o r   p u t t i n g   t h e   f o c u s   i n t o   t h e   c o n t e x t   f i e l d S  W X W l     �� Y Z��   Y 2 , 4: for putting the focus into the due field    Z � [ [ X   4 :   f o r   p u t t i n g   t h e   f o c u s   i n t o   t h e   d u e   f i e l d X  \ ] \ l     �� ^ _��   ^ H B default: a reasonable default is 2 to set it to the project field    _ � ` ` �   d e f a u l t :   a   r e a s o n a b l e   d e f a u l t   i s   2   t o   s e t   i t   t o   t h e   p r o j e c t   f i e l d ]  a b a j    �� c�� (0 focusspecificfield focusSpecificField c m    ����  b  d e d l     ��������  ��  ��   e  f g f l     �� h i��   h , &--------------------------------------    i � j j L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - g  k l k l     �� m n��   m ' ! END OF PROPERTIES             --    n � o o B   E N D   O F   P R O P E R T I E S                           - - l  p q p l     �� r s��   r , &--------------------------------------    s � t t L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - q  u v u l     ��������  ��  ��   v  w x w l   [ y���� y O    [ z { z k   Z | |  } ~ } l   ��������  ��  ��   ~   �  l   ��������  ��  ��   �  � � � l   �� � ���   � 5 / get the currently selected message or messages    � � � � ^   g e t   t h e   c u r r e n t l y   s e l e c t e d   m e s s a g e   o r   m e s s a g e s �  � � � r    
 � � � l    ����� � e     � � 1    ��
�� 
slct��  ��   � o      ���� $0 selectedmessages selectedMessages �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � E ? if there are no messages selected, warn the user and then quit    � � � � ~   i f   t h e r e   a r e   n o   m e s s a g e s   s e l e c t e d ,   w a r n   t h e   u s e r   a n d   t h e n   q u i t �  � � � Z     � ����� � =    � � � o    ���� $0 selectedmessages selectedMessages � J    ����   � k     � �  � � � I   �� ���
�� .sysodlogaskr        TEXT � m     � � � � � � P l e a s e   s e l e c t   o n e   o r   m o r e   m e s s a g e s   f i r s t   a n d   t h e n   r u n   t h i s   s c r i p t .��   �  ��� � L    ����  ��  ��  ��   �  � � � l   ��������  ��  ��   �  ��� � X   Z ��� � � k   /U � �  � � � l  / /��������  ��  ��   �  � � � r   / 4 � � � n   / 2 � � � 1   0 2��
�� 
subj � o   / 0���� 0 
themessage 
theMessage � o      ���� 0 thename theName �  � � � l  5 5��������  ��  ��   �  � � � l  5 5�� � ���   � N H Check for a blank subject line, check provided by Peter as well as Paul    � � � � �   C h e c k   f o r   a   b l a n k   s u b j e c t   l i n e ,   c h e c k   p r o v i d e d   b y   P e t e r   a s   w e l l   a s   P a u l �  � � � Z   5 B � ����� � =  5 8 � � � o   5 6���� 0 thename theName � m   6 7��
�� 
msng � r   ; > � � � m   ; < � � � � �  N o   S u b j e c t � o      ���� 0 thename theName��  ��   �  � � � l  C C�� � ���   �  
 End check    � � � �    E n d   c h e c k �  � � � l  C C��������  ��  ��   �  � � � r   C H � � � n   C F � � � 1   D F��
�� 
ctnt � o   C D���� 0 
themessage 
theMessage � o      ���� 0 
thecontent 
theContent �  � � � r   I N � � � n   I L � � � 1   J L��
�� 
sndr � o   I J���� 0 
themessage 
theMessage � o      ���� 0 	thesender 	theSender �  � � � l  O O��������  ��  ��   �  � � � r   O n � � � b   O j � � � b   O f � � � b   O b � � � b   O \ � � � b   O X � � � b   O T � � � m   O R � � � � �  F r o m :   � o   R S���� 0 	thesender 	theSender � o   T W��
�� 
ret  � m   X [ � � � � �  D a t e :   � n   \ a � � � 1   ] a��
�� 
rdrc � o   \ ]���� 0 
themessage 
theMessage � o   b e��
�� 
ret  � o   f i��
�� 
ret  � o      ���� "0 omnifocusheader OmniFocusHeader �  � � � l  o o�� � ���   � d ^ here we convert the HTML of the Message Content to plain text to insert into the Note section    � � � � �   h e r e   w e   c o n v e r t   t h e   H T M L   o f   t h e   M e s s a g e   C o n t e n t   t o   p l a i n   t e x t   t o   i n s e r t   i n t o   t h e   N o t e   s e c t i o n �  � � � l  o o�� � ���   � ; 5 update: fixed input encoding as suggested by @Andrew    � � � � j   u p d a t e :   f i x e d   i n p u t   e n c o d i n g   a s   s u g g e s t e d   b y   @ A n d r e w �  � � � r   o � � � � I  o ��� ���
�� .sysoexecTEXT���     TEXT � l  o | ����� � b   o | � � � b   o x � � � m   o r � � � � � 
 e c h o   � l  r w ����  n   r w 1   s w��
�� 
strq o   r s���� 0 
thecontent 
theContent��  ��   � m   x { � �   | t e x t u t i l   - f o r m a t   h t m l   - i n p u t e n c o d i n g   U T F - 8   - c o n v e r t   t x t   - s t d i n   - s t d o u t��  ��  ��   � o      ���� 0 mytxtcontent myTxtContent �  l  � ���������  ��  ��    r   � �	
	 b   � � b   � � b   � � o   � ����� "0 omnifocusheader OmniFocusHeader 1   � ���
�� 
lnfd 1   � ���
�� 
lnfd o   � ����� 0 mytxtcontent myTxtContent
 o      ���� 0 thetxtcontent theTxtContent �� O   �U k   �T  r   � � 1   � ���
�� 
FCDo o      ���� 0 thedoc theDoc  r   � � o   � ��� 0 thename theName o      �~�~ 0 thetask theTask  r   � �  o   � ��}�} 0 thetxtcontent theTxtContent  o      �|�| 0 thenote theNote !"! l  � ��{�z�y�{  �z  �y  " #�x# Z   �T$%�w&$ l  � �'�v�u' =  � �()( o   � ��t�t  0 showquickentry showQuickEntry) m   � ��s�s �v  �u  % O   �%*+* k   �$,, -.- I  � ��r�q�p
�r .aevtodocnull  �    alis�q  �p  . /0/ r   � �121 I  � ��o�n3
�o .corecrel****      � null�n  3 �m45
�m 
kocl4 m   � ��l
�l 
FCit5 �k6�j
�k 
prdt6 K   � �77 �i89
�i 
pnam8 o   � ��h�h 0 thetask theTask9 �g:�f
�g 
FCno: o   � ��e�e 0 thetxtcontent theTxtContent�f  �j  2 o      �d�d 0 newtask NewTask0 ;<; Z   �=>�c�b= l  � �?�a�`? =  � �@A@ o   � ��_�_ 80 bringomnifocustoforeground bringOmnifocusToForegroundA m   � ��^�^ �a  �`  > I  ��]�\�[
�] .miscactvnull��� ��� null�\  �[  �c  �b  < B�ZB O  $CDC U  #EFE I �YG�X
�Y .prcskprsnull���     ctxtG 1  �W
�W 
tab �X  F o  �V�V (0 focusspecificfield focusSpecificFieldD m  	HH�                                                                                  sevs  alis    �  Macintosh HD               �d�jH+   �k�System Events.app                                               �/����        ����  	                CoreServices    �e
�      �Ve     �k� �k� �k�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �Z  + 1   � ��U
�U 
FCQE�w  & k  (TII JKJ l ((�TLM�T  L \ V we dont want the quick entry panel but the task will immediately show up in the inbox   M �NN �   w e   d o n t   w a n t   t h e   q u i c k   e n t r y   p a n e l   b u t   t h e   t a s k   w i l l   i m m e d i a t e l y   s h o w   u p   i n   t h e   i n b o xK O�SO O  (TPQP r  1SRSR I 1O�R�QT
�R .corecrel****      � null�Q  T �PUV
�P 
koclU m  36�O
�O 
FCitV �NW�M
�N 
prdtW K  9IXX �LYZ
�L 
pnamY o  <?�K�K 0 thetask theTaskZ �J[�I
�J 
FCno[ o  BE�H�H 0 thetxtcontent theTxtContent�I  �M  S o      �G�G 0 newtask NewTaskQ l (.\�F�E\ 4 (.�D]
�D 
docu] m  ,-�C�C �F  �E  �S  �x   m   � �^^�                                                                                  OFOC  alis    X  Macintosh HD               �d�jH+   �k�OmniFocus.app                                                  6{�Νq        ����  	                Applications    �e
�      Ν�     �k�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  �� 0 
themessage 
theMessage � o   " #�B�B $0 selectedmessages selectedMessages��   { m     __�                                                                                  emal  alis    F  Macintosh HD               �d�jH+   �k�Mail.app                                                        �%r�e�        ����  	                Applications    �e
�      ��^     �k�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  ��   x `a` l     �A�@�?�A  �@  �?  a bcb l     �>de�>  d #  bring OmniFocus to the front   e �ff :   b r i n g   O m n i F o c u s   t o   t h e   f r o n tc ghg l     �=ij�=  i ( " thanks to tim @ omni for this one   j �kk D   t h a n k s   t o   t i m   @   o m n i   f o r   t h i s   o n eh lml l \�n�<�;n Z  \�op�:�9o l \cq�8�7q = \crsr o  \a�6�6 80 bringomnifocustoforeground bringOmnifocusToForegrounds m  ab�5�5 �8  �7  p O  f�tut k  l�vv wxw I ls�4y�3
�4 .ascrcmnt****      � ****y m  lozz �{{ < b r i n g i n g   a p p   t o   t h e   f o r e g r o u n d�3  x |}| l tt�2~�2  ~  activate    ���  a c t i v a t e} ��1� O  t���� k  ���� ��� r  ����� m  ���� ���  p r o j e c t� 1  ���0
�0 
FCvm� ��/� O  ����� I ���.��-
�. .OTREisalnull���     ****� 1  ���,
�, 
FCIb�-  � 1  ���+
�+ 
FCSt�/  � n  t��� 4 z�*�
�* 
FCdw� m  }~�)�) � 4 tz�(�
�( 
docu� m  xy�'�' �1  u m  fi���                                                                                  OFOC  alis    X  Macintosh HD               �d�jH+   �k�OmniFocus.app                                                  6{�Νq        ����  	                Applications    �e
�      Ν�     �k�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �:  �9  �<  �;  m ��� l     �&�%�$�&  �%  �$  � ��� i   	 ��� I      �#��"�#  0 findandreplace findAndReplace� ��� o      �!�! 
0 tofind  � ��� o      � �  0 	toreplace  � ��� o      �� 0 	thestring 	TheString�  �"  � k     C�� ��� r     ��� 1     �
� 
txdl� o      �� 0 ditd  � ��� r    	��� m    �
� 
msng� o      �� 0 res  � ��� r   
 ��� o   
 �� 
0 tofind  � 1    �
� 
txdl� ��� X    :���� Z   " 5����� =  " %��� o   " #�� 0 res  � m   # $�
� 
msng� r   ( +��� o   ( )�� 0 tis  � o      �� 0 res  �  � r   . 5��� b   . 3��� b   . 1��� o   . /�� 0 res  � o   / 0�� 0 	toreplace  � o   1 2�� 0 tis  � o      �� 0 res  � 0 tis  � n    ��� 2   �
� 
citm� o    �� 0 	thestring 	TheString� ��� r   ; @��� o   ; <�� 0 ditd  � 1   < ?�

�
 
txdl� ��	� L   A C�� o   A B�� 0 res  �	  � ��� l     ����  �  �  � ��� i    ��� I      ���� 0 write_error_log  � ��� o      �� 0 
this_error  �  �  � k     M�� ��� r     ��� b     	��� l    �� ��� c     ��� l    ������ I    �����
�� .earsffdralis        afdr� m     ��
�� afdrdesk��  ��  ��  � m    ��
�� 
ctxt�   ��  � m    �� ��� ( S c r i p t   E r r o r   L o g . t x t� l     ������ o      ���� 0 	error_log  ��  ��  � ���� Q    M���� k    1�� ��� I   ����
�� .rdwropenshor       file� 4    ���
�� 
file� l   ������ o    ���� 0 	error_log  ��  ��  � �����
�� 
perm� m    ��
�� boovtrue��  � ��� I   (����
�� .rdwrwritnull���     ****� l   ������ b    ��� o    ���� 0 
this_error  � o    ��
�� 
ret ��  ��  � ����
�� 
refn� 4    "���
�� 
file� l    !������ o     !���� 0 	error_log  ��  ��  � �����
�� 
wrat� m   # $��
�� rdwreof ��  � ���� I  ) 1�����
�� .rdwrclosnull���     ****� 4   ) -���
�� 
file� l  + ,������ o   + ,���� 0 	error_log  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � Q   9 M����� I  < D�����
�� .rdwrclosnull���     ****� 4   < @���
�� 
file� l  > ?������ o   > ?���� 0 	error_log  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � ���� l     ��������  ��  ��  ��       ��������� ��  � ��������������  0 showquickentry showQuickEntry�� 80 bringomnifocustoforeground bringOmnifocusToForeground�� (0 focusspecificfield focusSpecificField��  0 findandreplace findAndReplace�� 0 write_error_log  
�� .aevtoappnull  �   � ****�� ��  ��   �����������  0 findandreplace findAndReplace�� ����   �������� 
0 tofind  �� 0 	toreplace  �� 0 	thestring 	TheString��   �������������� 
0 tofind  �� 0 	toreplace  �� 0 	thestring 	TheString�� 0 ditd  �� 0 res  �� 0 tis   ������������
�� 
txdl
�� 
msng
�� 
citm
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� D*�,E�O�E�O�*�,FO )��-[��l kh ��  �E�Y 	��%�%E�[OY��O�*�,FO� ����������� 0 write_error_log  �� ����   ���� 0 
this_error  ��   ������ 0 
this_error  �� 0 	error_log   �������������������������������
�� afdrdesk
�� .earsffdralis        afdr
�� 
ctxt
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
ret 
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��  ��  �� N�j �&�%E�O '*�/�el O��%�*�/��� O*�/j W X   *�/j W X  h ��	����
��
�� .aevtoappnull  �   � ****	 k    �  w l����  ��  ��  
 ���� 0 
themessage 
theMessage 7_���� ��������������� ��������� �� ��~�} ��|�{�z�y�x^�w�v�u�t�s�r�q�p�o�n�m�l�k�jH�i�h�gz�f�e��d�c�b�a
�� 
slct�� $0 selectedmessages selectedMessages
�� .sysodlogaskr        TEXT
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
subj�� 0 thename theName
�� 
msng
�� 
ctnt�� 0 
thecontent 
theContent
�� 
sndr�� 0 	thesender 	theSender
� 
ret 
�~ 
rdrc�} "0 omnifocusheader OmniFocusHeader
�| 
strq
�{ .sysoexecTEXT���     TEXT�z 0 mytxtcontent myTxtContent
�y 
lnfd�x 0 thetxtcontent theTxtContent
�w 
FCDo�v 0 thedoc theDoc�u 0 thetask theTask�t 0 thenote theNote
�s 
FCQE
�r .aevtodocnull  �    alis
�q 
FCit
�p 
prdt
�o 
pnam
�n 
FCno�m 
�l .corecrel****      � null�k 0 newtask NewTask
�j .miscactvnull��� ��� null
�i 
tab 
�h .prcskprsnull���     ctxt
�g 
docu
�f .ascrcmnt****      � ****
�e 
FCdw
�d 
FCvm
�c 
FCSt
�b 
FCIb
�a .OTREisalnull���     ****����X*�,EE�O�jv  �j OhY hO:�[��l kh  ��,E�O��  �E�Y hO��,E�O��,E�Oa �%_ %a %�a ,%_ %_ %E` Oa �a ,%a %j E` O_ _ %_ %_ %E` Oa  �*a ,E` O�E` O_ E`  Ob   k  i*a !, ]*j "O*�a #a $a %_ a &_ a 'a ' (E` )Ob  k  
*j *Y hOa +  b  kh_ ,j -[OY��UUY .*a .k/ $*�a #a $a %_ a &_ a 'a ' (E` )UU[OY��UOb  k  ?a  5a /j 0O*a .k/a 1k/ a 2*a 3,FO*a 4, *a 5,j 6UUUY h ascr  ��ޭ