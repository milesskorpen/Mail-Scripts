FasdUAS 1.101.10   ��   ��    k             l      ��  ��   IC
http://veritrope.com
Apple Mail to Evernote
Version 2.07
March 14, 2014

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// LIKE THIS SCRIPT?
If this AppleScript is helpful to you, please show your support here: 
http://veritrope.com/support

// IMPORTANT LINKS:
-- Project Page: http://veritrope.com/code/apple-mail-to-evernote

// REQUIREMENTS:
THIS SCRIPT REQUIRES LION OR GREATER (OS X 10.7+) TO RUN WITHOUT MODIFICATION

THE APP STORE VERSION OF GROWL IS REQUIRED FOR THIS SCRIPT TO WORK! 
(If you do not have it installed, you'll get an error when you try to save this script.)
    -- GROWL IS AVAILABLE FOR DOWNLOAD HERE:
    -- http://bit.ly/GrowlApp

// INSTALLATION:  
-- You can save this script to /Library/Scripts/Mail Scripts and launch it using the system-wide script menu from the Mac OS X menu bar. (The script menu can be activated using the AppleScript Utility application). 
-- To use, highlight the email messages you want to archive into Evernote and run this script file;
-- The "User Switches" below allow you to customize the way this script works.
-- You can save this script as a service and trigger it with a keyboard shortcut.

    (Optional but recommended)
    Easier Keyboard Shortcut with FastScripts
    -- Download and Install FastScripts here: 
    -- http://bit.ly/FastScripts

// CHANGELOG:

Version 2.07: CHANGE TO UTF DECODING (THANKS EDUARDO!). CC RECIPIENTS ADDED TO NOTEHEADER

    * 2.06
    SWITCH FOR PLAINTEXT OPERATION (FOR NON-ENGLISH ENCODING), FIX FOR MISSING RECIPIENT NAME

    * 2.05
    FIX FOR LEADING SPACES IN TAG LIST
    
    * 2.04
    CHANGE TO DISPLAY MULTIPLE TO: RECIPIENTS, GROWL TWEAKS
    
    * 2.03
    FIXES AND ADJUSTMENTS FOR TAGS, ATTACHMENT OPERATIONS
    
    * 2.02
    CHANGED SOME VARIABLES TO WORK BETTER WITH "OPEN IN SCRIPT EDITOR" BUTTON
    
    * 2.01
    CONSOLIDATED SOME BASE64 CODE INTO A HANDLER, FIXED BUGS WITH ENCODING

    * 2.00 FINAL
    ELIMINATED MAILTAGS SUPPORT, GROWL REQUIREMENT, REWORKED HTML EMAIL TRANSFER FOR 10.7+ SYSTEMS

    * 2.00 b2
    BUG FIXES (USER SWITCH FOR NOTEBOOK, BETTER BASE 64 DETECTION, ATTACHMENT FIX)

    * 2.00 b1
    HTML MESSAGES, APPEND ATTACHMENTS, MAILTAGS, QUIET TEMP FILE REMOVAL

    * 1.30 (June 5, 2010)  
    ATTACHMENT CREATION. LAYING TRACK FOR HTML NOTES.
    
    * 1.20 (July 25, 2009) 
    STREAMLINED MENU FOR NOTE EXPORT
    
    * 1.10 (May 6, 2009)  
    ACTIVATED MESSAGE LINKING/ADDED EVERNOTE ICON TO DIALOG BOX/MISC. CLEAN-UP!
    
    * 1.01 (April 23, 2009) 
    FIXED TYPOGRAPHICAL ERROR
    
    * 1.00 (April 20, 2009) 
    INITIAL RELEASE OF SCRIPT
     � 	 	� 
 h t t p : / / v e r i t r o p e . c o m 
 A p p l e   M a i l   t o   E v e r n o t e 
 V e r s i o n   2 . 0 7 
 M a r c h   1 4 ,   2 0 1 4 
 
 / /   T E R M S   O F   U S E : 
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .   
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A . 
 
 / /   L I K E   T H I S   S C R I P T ? 
 I f   t h i s   A p p l e S c r i p t   i s   h e l p f u l   t o   y o u ,   p l e a s e   s h o w   y o u r   s u p p o r t   h e r e :   
 h t t p : / / v e r i t r o p e . c o m / s u p p o r t 
 
 / /   I M P O R T A N T   L I N K S : 
 - -   P r o j e c t   P a g e :   h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e 
 
 / /   R E Q U I R E M E N T S : 
 T H I S   S C R I P T   R E Q U I R E S   L I O N   O R   G R E A T E R   ( O S   X   1 0 . 7 + )   T O   R U N   W I T H O U T   M O D I F I C A T I O N 
 
 T H E   A P P   S T O R E   V E R S I O N   O F   G R O W L   I S   R E Q U I R E D   F O R   T H I S   S C R I P T   T O   W O R K !   
 ( I f   y o u   d o   n o t   h a v e   i t   i n s t a l l e d ,   y o u ' l l   g e t   a n   e r r o r   w h e n   y o u   t r y   t o   s a v e   t h i s   s c r i p t . ) 
         - -   G R O W L   I S   A V A I L A B L E   F O R   D O W N L O A D   H E R E : 
         - -   h t t p : / / b i t . l y / G r o w l A p p 
 
 / /   I N S T A L L A T I O N :     
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   t o   / L i b r a r y / S c r i p t s / M a i l   S c r i p t s   a n d   l a u n c h   i t   u s i n g   t h e   s y s t e m - w i d e   s c r i p t   m e n u   f r o m   t h e   M a c   O S   X   m e n u   b a r .   ( T h e   s c r i p t   m e n u   c a n   b e   a c t i v a t e d   u s i n g   t h e   A p p l e S c r i p t   U t i l i t y   a p p l i c a t i o n ) .   
 - -   T o   u s e ,   h i g h l i g h t   t h e   e m a i l   m e s s a g e s   y o u   w a n t   t o   a r c h i v e   i n t o   E v e r n o t e   a n d   r u n   t h i s   s c r i p t   f i l e ; 
 - -   T h e   " U s e r   S w i t c h e s "   b e l o w   a l l o w   y o u   t o   c u s t o m i z e   t h e   w a y   t h i s   s c r i p t   w o r k s . 
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   a s   a   s e r v i c e   a n d   t r i g g e r   i t   w i t h   a   k e y b o a r d   s h o r t c u t . 
 
         ( O p t i o n a l   b u t   r e c o m m e n d e d ) 
         E a s i e r   K e y b o a r d   S h o r t c u t   w i t h   F a s t S c r i p t s 
         - -   D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   h e r e :   
         - -   h t t p : / / b i t . l y / F a s t S c r i p t s 
 
 / /   C H A N G E L O G : 
 
 V e r s i o n   2 . 0 7 :   C H A N G E   T O   U T F   D E C O D I N G   ( T H A N K S   E D U A R D O ! ) .   C C   R E C I P I E N T S   A D D E D   T O   N O T E H E A D E R 
 
         *   2 . 0 6 
         S W I T C H   F O R   P L A I N T E X T   O P E R A T I O N   ( F O R   N O N - E N G L I S H   E N C O D I N G ) ,   F I X   F O R   M I S S I N G   R E C I P I E N T   N A M E 
 
         *   2 . 0 5 
         F I X   F O R   L E A D I N G   S P A C E S   I N   T A G   L I S T 
         
         *   2 . 0 4 
         C H A N G E   T O   D I S P L A Y   M U L T I P L E   T O :   R E C I P I E N T S ,   G R O W L   T W E A K S 
         
         *   2 . 0 3 
         F I X E S   A N D   A D J U S T M E N T S   F O R   T A G S ,   A T T A C H M E N T   O P E R A T I O N S 
         
         *   2 . 0 2 
         C H A N G E D   S O M E   V A R I A B L E S   T O   W O R K   B E T T E R   W I T H   " O P E N   I N   S C R I P T   E D I T O R "   B U T T O N 
         
         *   2 . 0 1 
         C O N S O L I D A T E D   S O M E   B A S E 6 4   C O D E   I N T O   A   H A N D L E R ,   F I X E D   B U G S   W I T H   E N C O D I N G 
 
         *   2 . 0 0   F I N A L 
         E L I M I N A T E D   M A I L T A G S   S U P P O R T ,   G R O W L   R E Q U I R E M E N T ,   R E W O R K E D   H T M L   E M A I L   T R A N S F E R   F O R   1 0 . 7 +   S Y S T E M S 
 
         *   2 . 0 0   b 2 
         B U G   F I X E S   ( U S E R   S W I T C H   F O R   N O T E B O O K ,   B E T T E R   B A S E   6 4   D E T E C T I O N ,   A T T A C H M E N T   F I X ) 
 
         *   2 . 0 0   b 1 
         H T M L   M E S S A G E S ,   A P P E N D   A T T A C H M E N T S ,   M A I L T A G S ,   Q U I E T   T E M P   F I L E   R E M O V A L 
 
         *   1 . 3 0   ( J u n e   5 ,   2 0 1 0 )     
         A T T A C H M E N T   C R E A T I O N .   L A Y I N G   T R A C K   F O R   H T M L   N O T E S . 
         
         *   1 . 2 0   ( J u l y   2 5 ,   2 0 0 9 )   
         S T R E A M L I N E D   M E N U   F O R   N O T E   E X P O R T 
         
         *   1 . 1 0   ( M a y   6 ,   2 0 0 9 )     
         A C T I V A T E D   M E S S A G E   L I N K I N G / A D D E D   E V E R N O T E   I C O N   T O   D I A L O G   B O X / M I S C .   C L E A N - U P ! 
         
         *   1 . 0 1   ( A p r i l   2 3 ,   2 0 0 9 )   
         F I X E D   T Y P O G R A P H I C A L   E R R O R 
         
         *   1 . 0 0   ( A p r i l   2 0 ,   2 0 0 9 )   
         I N I T I A L   R E L E A S E   O F   S C R I P T 
   
  
 l     ��������  ��  ��        l      ��  ��    h b 
======================================
// USER SWITCHES 
======================================
     �   �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U S E R   S W I T C H E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        l     ��  ��    H B SET THIS TO "OFF" IF YOU WANT TO SKIP THE TAGGING/NOTEBOOK DIALOG     �   �   S E T   T H I S   T O   " O F F "   I F   Y O U   W A N T   T O   S K I P   T H E   T A G G I N G / N O T E B O O K   D I A L O G      l     ��  ��    9 3 AND SEND ITEMS DIRECTLY INTO YOUR DEFAULT NOTEBOOK     �   f   A N D   S E N D   I T E M S   D I R E C T L Y   I N T O   Y O U R   D E F A U L T   N O T E B O O K      j     �� ��  0 tagging_switch tagging_Switch  m          � ! !  O N   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & 6 0 IF YOU'VE DISABLED THE TAGGING/NOTEBOOK DIALOG,    ' � ( ( `   I F   Y O U ' V E   D I S A B L E D   T H E   T A G G I N G / N O T E B O O K   D I A L O G , %  ) * ) l     �� + ,��   + = 7 TYPE THE NAME OF THE NOTEBOOK YOU WANT TO SEND ITEM TO    , � - - n   T Y P E   T H E   N A M E   O F   T H E   N O T E B O O K   Y O U   W A N T   T O   S E N D   I T E M   T O *  . / . l     �� 0 1��   0 < 6 BETWEEN THE QUOTES IF IT ISN'T YOUR DEFAULT NOTEBOOK.    1 � 2 2 l   B E T W E E N   T H E   Q U O T E S   I F   I T   I S N ' T   Y O U R   D E F A U L T   N O T E B O O K . /  3 4 3 l     �� 5 6��   5   (EMPTY SENDS TO DEFAULT)    6 � 7 7 2   ( E M P T Y   S E N D S   T O   D E F A U L T ) 4  8 9 8 j    �� :�� 0 
evnotebook 
EVnotebook : m     ; ; � < <   9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A A ; IF TAGGING IS ON AND YOU'D LIKE TO CHANGE THE DEFAULT TAG,    B � C C v   I F   T A G G I N G   I S   O N   A N D   Y O U ' D   L I K E   T O   C H A N G E   T H E   D E F A U L T   T A G , @  D E D l     �� F G��   F > 8 TYPE IT BETWEEN THE QUOTES ("Email Message" IS DEFAULT)    G � H H p   T Y P E   I T   B E T W E E N   T H E   Q U O T E S   ( " E m a i l   M e s s a g e "   I S   D E F A U L T ) E  I J I j    �� K�� 0 
defaulttag 
defaultTag K m     L L � M M  E m a i l   M e s s a g e J  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R 6 0 SET THIS TO "OFF" IF YOU WANT TO PROCESS EMAILS    S � T T `   S E T   T H I S   T O   " O F F "   I F   Y O U   W A N T   T O   P R O C E S S   E M A I L S Q  U V U l     �� W X��   W ; 5 AS PLAINTEXT (USEFUL FOR NON-ENGLISH ENCODED EMAILS)    X � Y Y j   A S   P L A I N T E X T   ( U S E F U L   F O R   N O N - E N G L I S H   E N C O D E D   E M A I L S ) V  Z [ Z j   	 �� \�� 0 html_switch HTML_Switch \ m   	 
 ] ] � ^ ^  O N [  _ ` _ l     ��������  ��  ��   `  a b a l     ��������  ��  ��   b  c d c l      �� e f��   e k e 
======================================
// OTHER PROPERTIES 
======================================
    f � g g �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   O T H E R   P R O P E R T I E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 d  h i h j    �� j�� 0 successcount successCount j m    ����   i  k l k j    �� m�� 0 growl_running growl_Running m m     n n � o o 
 f a l s e l  p q p j    �� r�� 0 mytitle myTitle r m     s s � t t  M a i l   I t e m q  u v u j    �� w�� 0 themessages theMessages w J    ����   v  x y x j    �� z�� 0 thismessage thisMessage z m     { { � | |   y  } ~ } j     �� �� 0 itemnum itemNum  m     � � � � �  0 ~  � � � j   ! %�� ��� 0 attnum attNum � m   ! $ � � � � �  0 �  � � � j   & *�� ��� 0 errnum errNum � m   & ) � � � � �  0 �  � � � j   + /�� ��� 0 usertag userTag � m   + . � � � � �   �  � � � j   0 3�� ��� 0 evtag EVTag � J   0 2����   �  � � � j   4 8�� ��� 0 	multihtml 	multiHTML � m   4 7 � � � � �   �  � � � j   9 <�� ���  0 thesourceitems theSourceItems � J   9 ;����   �  � � � j   = C�� ��� 0 mysource mySource � m   = @ � � � � �   �  � � � j   D J�� ���  0 decode_success decode_Success � m   D G � � � � �   �  � � � j   K Q�� ��� 0 	finalhtml 	finalHTML � m   K N � � � � �   �  � � � j   R X�� ��� 0 	myheaders 	myHeaders � m   R U � � � � �   �  � � � j   Y ^�� ��� *0 mysource_paragraphs mysource_Paragraphs � J   Y [����   �  � � � j   _ e�� ��� 0 
base64_raw 
base64_Raw � m   _ b � � � � �   �  � � � j   f l�� ��� 0 basehtml baseHTML � m   f i � � � � �   �  � � � j   m s�� ��� 0 
parasource 
paraSource � m   m p � � � � �   �  � � � j   t z�� ���  0 cutsourceitems cutSourceItems � m   t w � � � � �   �  � � � j   { ��� ��� 0 allcc allCC � m   { ~ � � � � �   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � g a 
======================================
// MAIN PROGRAM 
======================================
    � � � � �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  RESET ITEMS    � � � �  R E S E T   I T E M S �  � � � l     ����� � r      � � � m      � � � � �  0 � o      ���� 0 successcount successCount��  ��   �  � � � l    ����� � r     � � � m    	 � � � � �  0 � o      ���� 0 errnum errNum��  ��   �  � � � l    ����� � r     � � � m     � � � � �   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr��  ��   �  � � � l     ��������  ��  ��   �  � � � l  ! ����� � Q   ! � � � � k    x � �  � � � l   �� � ���   �  CHECK FOR GROWL    � � � �  C H E C K   F O R   G R O W L �  �  � n    I    �������� 0 growl_check Growl_Check��  ��    f       l   ��������  ��  ��    l   ����    SET UP ACTIVITIES    �		 " S E T   U P   A C T I V I T I E S 

 n   $ I     $�������� 0 
item_check 
item_Check��  ��    f       l  % %��������  ��  ��    l  % %����    MESSAGES SELECTED?    � $ M E S S A G E S   S E L E C T E D ?  Z   % a�� >  % - o   % *���� 0 themessages theMessages J   * ,����   k   0 W  l  0 0��������  ��  ��     l  0 0��!"��  !  GET FILE COUNT   " �##  G E T   F I L E   C O U N T  $%$ n  0 :&'& I   1 :��(���� 0 
item_count 
item_Count( )��) o   1 6���� 0 themessages theMessages��  ��  '  f   0 1% *+* l  ; ;��������  ��  ��  + ,-, l  ; ;��./��  . $ ANNOUNCE THE EXPORT OF ITEMS     / �00 < A N N O U N C E   T H E   E X P O R T   O F   I T E M S    - 121 n  ; J343 I   < J��5���� 0 process_items process_Items5 676 o   < A���� 0 itemnum itemNum7 8��8 o   A F���� 0 attnum attNum��  ��  4  f   ; <2 9:9 l  K K��������  ��  ��  : ;<; l  K K��=>��  = # PROCESS MAIL ITEMS FOR EXPORT   > �?? : P R O C E S S   M A I L   I T E M S   F O R   E X P O R T< @A@ n  K UBCB I   L U�D�~� 0 mail_process mail_ProcessD E�}E o   L Q�|�| 0 themessages theMessages�}  �~  C  f   K LA F�{F l  V V�z�y�x�z  �y  �x  �{  ��   k   Z aGG HIH l  Z Z�wJK�w  J  NO MESSAGES SELECTED   K �LL ( N O   M E S S A G E S   S E L E C T E DI M�vM r   Z aNON m   Z [�u�u��O o      �t�t 0 successcount successCount�v   PQP l  b b�s�r�q�s  �r  �q  Q RSR l  b b�pTU�p  T  GROWL RESULTS   U �VV  G R O W L   R E S U L T SS WXW n  b vYZY I   c v�o[�n�o 0 growl_growler growl_Growler[ \]\ o   c h�m�m 0 growl_running growl_Running] ^_^ o   h m�l�l 0 successcount successCount_ `�k` o   m r�j�j 0 errnum errNum�k  �n  Z  f   b cX aba l  w w�i�h�g�i  �h  �g  b c�fc l  w w�ede�e  d  ERROR HANDLING    e �ff  E R R O R   H A N D L I N G  �f   � R      �dgh
�d .ascrerr ****      � ****g o      �c�c 0 errtext errTexth �bi�a
�b 
errni o      �`�` 0 errnum errNum�a   � Z   �!jkl�_j =  � �mnm o   � ��^�^ 0 growl_running growl_Runningn m   � ��]
�] boovtruek k   � �oo pqp l  � ��\�[�Z�\  �[  �Z  q rsr l  � ��Ytu�Y  t  GROWL FAILURE FOR CANCEL   u �vv 0 G R O W L   F A I L U R E   F O R   C A N C E Ls wxw Z   � �yz�X{y =  � �|}| o   � ��W�W 0 errnum errNum} m   � ��V�V��z O   � �~~ k   � ��� ��� I  � ��U�T�
�U .notifygrnull��� ��� null�T  � �S��
�S 
name� l 	 � ���R�Q� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n�R  �Q  � �P��
�P 
titl� l 	 � ���O�N� m   � ��� ���  U s e r   C a n c e l l e d�O  �N  � �M��
�M 
desc� l 	 � ���L�K� m   � ��� ��� " F a i l e d   t o   e x p o r t !�L  �K  � �J��
�J 
appl� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e� �I��H
�I 
iapp� m   � ��� ���  M a i l�H  � ��G� l  � ��F�E�D�F  �E  �D  �G   m   � ����                                                                                  GRRR  alis    H  Macintosh HD               �d�jH+   �k�	Growl.app                                                      &U Ό�        ����  	                Applications    �e
�      Ό�d     �k�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �X  { k   � ��� ��� l  � ��C�B�A�C  �B  �A  � ��� l  � ��@���@  �  GROWL FAILURE FOR ERROR   � ��� . G R O W L   F A I L U R E   F O R   E R R O R� ��?� O   � ���� k   � ��� ��� I  � ��>�=�
�> .notifygrnull��� ��� null�=  � �<��
�< 
name� l 	 � ���;�:� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n�;  �:  � �9��
�9 
titl� l 	 � ���8�7� m   � ��� ���  I m p o r t   F a i l u r e�8  �7  � �6��
�6 
desc� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� " F a i l e d   t o   e x p o r t  � o   � ��5
�5 
ret � o   � ��4�4 0 mytitle myTitle� l 	 � ���3�2� m   � ��� ��� > "     d u e   t o   t h e   f o l l o w i n g   e r r o r :  �3  �2  � o   � ��1
�1 
ret � l 
 � ���0�/� o   � ��.�. 0 errtext errText�0  �/  � �-��
�- 
appl� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e� �,��+
�, 
iapp� m   � ��� ���  M a i l�+  � ��*� l  � ��)�(�'�)  �(  �'  �*  � m   � ����                                                                                  GRRR  alis    H  Macintosh HD               �d�jH+   �k�	Growl.app                                                      &U Ό�        ����  	                Applications    �e
�      Ό�d     �k�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �?  x ��� l  � ��&�%�$�&  �%  �$  � ��#� l  � ��"���"  � $ NON-GROWL ERROR MSG. FOR ERROR   � ��� < N O N - G R O W L   E R R O R   M S G .   F O R   E R R O R�#  l ��� =  ��� o   �!�! 0 growl_running growl_Running� m  � 
�  boovfals� ��� I 
���
� .sysodlogaskr        TEXT� b  
��� b  
��� b  
��� m  
�� ��� . I t e m   F a i l e d   t o   I m p o r t :  � o  �� 0 errnum errNum� o  �
� 
ret � o  �� 0 errtext errText� ���
� 
disp� m  ��  �  �  �_  ��  ��   � ��� l     ����  �  �  � ��� l      ����  � s m 
======================================
// PREPARATORY SUBROUTINES 
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R E P A R A T O R Y   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     ����  �  �  � ��� l     ����  �  
APP DETECT   � ���  A P P   D E T E C T� ��� i   � ���� I      ���� 0 appisrunning appIsRunning� ��� o      �� 0 appname appName�  �  � O    ��� E    ��� l   	���
� n    	� � 1    	�	
�	 
pnam  2   �
� 
prcs�  �
  � o   	 
�� 0 appname appName� m     �                                                                                  sevs  alis    �  Macintosh HD               �d�jH+   �k�System Events.app                                               �/����        ����  	                CoreServices    �e
�      �Ve     �k� �k� �k�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  l     ����  �  �    l     ��    SET UP ACTIVITIES    � " S E T   U P   A C T I V I T I E S 	
	 i   � � I      ��� � 0 
item_check 
item_Check�  �    k     "  r      l    ���� I    ����
�� .earsffdralis        afdr m     ��
�� afdrcusr��  ��  ��   o      ���� 0 mypath myPath �� O    " Q    !�� r     1    ��
�� 
slct o      ���� 0 themessages theMessages R      ������
�� .ascrerr ****      � ****��  ��  ��   m    	�                                                                                  emal  alis    F  Macintosh HD               �d�jH+   �k�Mail.app                                                        �%r�e�        ����  	                Applications    �e
�      ��^     �k�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  
  l     ��������  ��  ��    l     �� !��    ( "GET COUNT OF ITEMS AND ATTACHMENTS   ! �"" D G E T   C O U N T   O F   I T E M S   A N D   A T T A C H M E N T S #$# i   � �%&% I      ��'���� 0 
item_count 
item_Count' (��( o      ���� 0 themessages theMessages��  ��  & O     A)*) k    @++ ,-, r    ./. I   	��0��
�� .corecnte****       ****0 o    ���� 0 themessages theMessages��  / o      ���� 0 itemnum itemNum- 121 r    343 m    ����  4 o      ���� 0 attnum attNum2 5��5 X    @6��76 r   ( ;898 [   ( 5:;: o   ( -���� 0 attnum attNum; l  - 4<����< I  - 4��=��
�� .corecnte****       ****= n   - 0>?> m   . 0��
�� 
attc? o   - .���� 0 
themessage 
theMessage��  ��  ��  9 o      ���� 0 attnum attNum�� 0 
themessage 
theMessage7 o    ���� 0 themessages theMessages��  * m     @@�                                                                                  emal  alis    F  Macintosh HD               �d�jH+   �k�Mail.app                                                        �%r�e�        ����  	                Applications    �e
�      ��^     �k�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  $ ABA l     ��������  ��  ��  B CDC l      ��EF��  E { u 
======================================
// TAGGING AND NOTEBOOK SUBROUTINES
=======================================
   F �GG �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   T A G G I N G   A N D   N O T E B O O K   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
D HIH l     ��������  ��  ��  I JKJ l     ��LM��  L + %TAGGING AND NOTEBOOK SELECTION DIALOG   M �NN J T A G G I N G   A N D   N O T E B O O K   S E L E C T I O N   D I A L O GK OPO i   � �QRQ I      ��������  0 tagging_dialog tagging_Dialog��  ��  R k     �SS TUT Q     [VWXV k    JYY Z[Z I   ,��\]
�� .sysodlogaskr        TEXT\ b    ^_^ m    `` �aa  _ l 	  b����b m    cc �dd � P l e a s e   E n t e r   Y o u r   T a g s   B e l o w : 
 ( M u l t i p l e   T a g s   S e p a r a t e d   B y   C o m m a s )��  ��  ] ��ef
�� 
appre m    gg �hh Z V e r i t r o p e . c o m   |   A p p l e   M a i l   t o   E v e r n o t e   E x p o r tf ��ij
�� 
dtxti o   	 ���� 0 
defaulttag 
defaultTagj ��kl
�� 
btnsk J    mm non m    pp �qq 4 C r e a t e   i n   D e f a u l t   N o t e b o o ko rsr m    tt �uu 2 S e l e c t   N o t e b o o k   f r o m   L i s ts v��v m    ww �xx  C a n c e l��  l ��yz
�� 
dflty m    {{ �|| 4 C r e a t e   i n   D e f a u l t   N o t e b o o kz ��}~
�� 
cbtn} l 	  ���� m    �� ���  C a n c e l��  ��  ~ �����
�� 
disp� I   &����
�� .sysorpthalis        TEXT� m    �� ���  E v e r n o t e . i c n s� �����
�� 
in B� l   "������ I   "�����
�� .earsffdralis        afdr� m    ���                                                                                  EVRN  alis    V  Macintosh HD               �d�jH+   �k�Evernote.app                                                   �<�W-�        ����  	                Applications    �e
�      �W�+     �k�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  [ ��� r   - 2��� l  - 0������ 1   - 0��
�� 
rslt��  ��  � o      ���� 0 dialogresult  � ��� r   3 :��� n   3 8��� 1   4 8��
�� 
ttxt� o   3 4���� 0 dialogresult  � o      ���� 0 	userinput 	userInput� ��� r   ; B��� n   ; @��� 1   < @��
�� 
bhit� o   ; <���� 0 dialogresult  � o      ���� 0 	buttonsel 	ButtonSel� ���� r   C J��� J   C H�� ���� m   C F�� ���  ,��  � o      ���� 0 	thedelims 	theDelims��  W R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ���� ���  X r   R [��� m   R U������� o      ���� 0 errnum errNumU ��� l  \ \��������  ��  ��  � ��� l  \ \������  �  ASSEMBLE LIST OF TAGS   � ��� * A S S E M B L E   L I S T   O F   T A G S� ��� r   \ e��� n  \ c��� I   ] c������� 0 tag_list Tag_List� ��� o   ] ^���� 0 	userinput 	userInput� ���� o   ^ _���� 0 	thedelims 	theDelims��  ��  �  f   \ ]� o      ���� 0 thetags theTags� ��� l  f f��������  ��  ��  � ��� l  f f������  � 0 *RESET, FINAL CHECK, AND FORMATTING OF TAGS   � ��� T R E S E T ,   F I N A L   C H E C K ,   A N D   F O R M A T T I N G   O F   T A G S� ��� r   f n��� J   f h����  � o      ���� 0 evtag EVTag� ��� r   o {��� n  o u��� I   p u������� 0 	tag_check 	Tag_Check� ���� o   p q���� 0 thetags theTags��  ��  �  f   o p� o      ���� 0 evtag EVTag� ��� l  | |��������  ��  ��  � ��� l  | |������  �  SELECT NOTEBOOK   � ���  S E L E C T   N O T E B O O K� ���� Z  | �������� =  | ���� o   | }���� 0 	buttonsel 	ButtonSel� m   } ��� ��� 2 S e l e c t   N o t e b o o k   f r o m   L i s t� r   � ���� n  � ���� I   � ��������� 0 notebook_list Notebook_List��  ��  �  f   � �� o      ���� 0 
evnotebook 
EVnotebook��  ��  ��  P ��� l     ��������  ��  ��  � ��� l     ������  � % GET EVERNOTE'S DEFAULT NOTEBOOK   � ��� > G E T   E V E R N O T E ' S   D E F A U L T   N O T E B O O K� ��� i   � ���� I      ����~�� $0 default_notebook default_Notebook�  �~  � O     0��� k    /�� ��� r    ��� 6   ��� 2    �}
�} 
EVnb� =   ��� 1   	 �|
�| 
EVnd� m    �{
�{ boovtrue� o      �z�z *0 get_defaultnotebook get_defaultNotebook� ��y� Z    /���x�w� =   ��� o    �v�v 0 
evnotebook 
EVnotebook� m    �� ���  � r    +��� c    %��� n    #� � 1   ! #�u
�u 
pnam  l   !�t�s n    ! 4    !�r
�r 
cobj m     �q�q  o    �p�p *0 get_defaultnotebook get_defaultNotebook�t  �s  � m   # $�o
�o 
ctxt� o      �n�n 0 
evnotebook 
EVnotebook�x  �w  �y  � m     �                                                                                  EVRN  alis    V  Macintosh HD               �d�jH+   �k�Evernote.app                                                   �<�W-�        ����  	                Applications    �e
�      �W�+     �k�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �  l     �m�l�k�m  �l  �k   	 l     �j
�j  
  TAG SELECTION SUBROUTINE    � 0 T A G   S E L E C T I O N   S U B R O U T I N E	  i   � � I      �i�h�i 0 tag_list Tag_List  o      �g�g 0 	userinput 	userInput �f o      �e�e 0 	thedelims 	theDelims�f  �h   k     U  r      n     1    �d
�d 
txdl 1     �c
�c 
ascr o      �b�b 0 	olddelims 	oldDelims  r     J    	   !�a! o    �`�` 0 	userinput 	userInput�a   o      �_�_ 0 thelist theList "#" X    L$�^%$ k    G&& '(' r    !)*) o    �]�] 0 adelim aDelim* n     +,+ 1     �\
�\ 
txdl, 1    �[
�[ 
ascr( -.- r   " &/0/ J   " $�Z�Z  0 o      �Y�Y 0 newlist newList. 121 X   ' C3�X43 r   7 >565 b   7 <787 o   7 8�W�W 0 newlist newList8 n   8 ;9:9 2  9 ;�V
�V 
citm: o   8 9�U�U 0 anitem anItem6 o      �T�T 0 newlist newList�X 0 anitem anItem4 o   * +�S�S 0 thelist theList2 ;�R; r   D G<=< o   D E�Q�Q 0 newlist newList= o      �P�P 0 thelist theList�R  �^ 0 adelim aDelim% o    �O�O 0 	thedelims 	theDelims# >?> r   M R@A@ o   M N�N�N 0 	olddelims 	oldDelimsA n     BCB 1   O Q�M
�M 
txdlC 1   N O�L
�L 
ascr? D�KD L   S UEE o   S T�J�J 0 thelist theList�K   FGF l     �I�H�G�I  �H  �G  G HIH l     �FJK�F  J &  CREATES TAGS IF THEY DON'T EXIST   K �LL @ C R E A T E S   T A G S   I F   T H E Y   D O N ' T   E X I S TI MNM i   � �OPO I      �EQ�D�E 0 	tag_check 	Tag_CheckQ R�CR o      �B�B 0 thetags theTags�C  �D  P k     rSS TUT O     oVWV k    nXX YZY r    [\[ J    �A�A  \ o      �@�@ 0 	finaltags 	finalTagsZ ]�?] X   	 n^�>_^ k    i`` aba l   �=�<�;�=  �<  �;  b cdc l   �:ef�:  e !  TRIM LEADING SPACE, IF ANY   f �gg 6   T R I M   L E A D I N G   S P A C E ,   I F   A N Yd hih Z   4jk�9�8j l   l�7�6l =   mnm l   o�5�4o n    pqp 4    �3r
�3 
cha r m    �2�2 q o    �1�1 0 thetag theTag�5  �4  n m    ss �tt   �7  �6  k r   " 0uvu c   " .wxw n   " ,yzy 7  # ,�0{|
�0 
ctxt{ m   ' )�/�/ |  ;   * +z o   " #�.�. 0 thetag theTagx m   , -�-
�- 
ctxtv o      �,�, 0 thetag theTag�9  �8  i }~} l  5 5�+�*�)�+  �*  �)  ~ �( Z   5 i���'�� l  5 ?��&�%� H   5 ?�� l  5 >��$�#� I  5 >�"��!
�" .coredoexnull���     ****� 5   5 :� ��
�  
EVtg� o   7 8�� 0 thetag theTag
� kfrmname�!  �$  �#  �&  �%  � Q   B _���� k   E V�� ��� r   E Q��� I  E O���
� .corecrel****      � null� m   E F�
� 
EVtg� ���
� 
prdt� K   G K�� ���
� 
pnam� o   H I�� 0 thetag theTag�  �  � o      �� 0 maketag makeTag� ��� r   R V��� o   R S�� 0 maketag makeTag� n      ���  ;   T U� o   S T�� 0 	finaltags 	finalTags�  � R      ���
� .ascrerr ****      � ****�  �  �  �'  � r   b i��� 4   b f��
� 
EVtg� o   d e�� 0 thetag theTag� n      ���  ;   g h� o   f g�� 0 	finaltags 	finalTags�(  �> 0 thetag theTag_ o    �� 0 thetags theTags�?  W m     ���                                                                                  EVRN  alis    V  Macintosh HD               �d�jH+   �k�Evernote.app                                                   �<�W-�        ����  	                Applications    �e
�      �W�+     �k�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  U ��
� L   p r�� o   p q�	�	 0 	finaltags 	finalTags�
  N ��� l     ����  �  �  � ��� l     ����  � - 'EVERNOTE NOTEBOOK SELECTION SUBROUTINE    � ��� N E V E R N O T E   N O T E B O O K   S E L E C T I O N   S U B R O U T I N E  � ��� i   � ���� I      ���� 0 notebook_list Notebook_List�  �  � O     ��� k    ~�� ��� I   	�� ��
� .miscactvnull��� ��� null�   ��  � ��� l   
 ���� r   
 ��� J   
 ����  � o      ���� "0 listofnotebooks listOfNotebooks� 2 ,PREPARE TO GET EVERNOTE'S LIST OF NOTEBOOKS    � ��� X P R E P A R E   T O   G E T   E V E R N O T E ' S   L I S T   O F   N O T E B O O K S  � ��� l    ���� r    ��� 2    ��
�� 
EVnb� o      ���� 0 evnotebooks EVNotebooks�  GET THE NOTEBOOK LIST    � ��� , G E T   T H E   N O T E B O O K   L I S T  � ��� X    4����� k   % /�� ��� r   % *��� l  % (������ l  % (������ n   % (��� 1   & (��
�� 
pnam� o   % &���� "0 currentnotebook currentNotebook��  ��  ��  ��  � o      ���� *0 currentnotebookname currentNotebookName� ���� s   + /��� o   + ,���� *0 currentnotebookname currentNotebookName� l     ������ n      ���  ;   - .� o   , -���� "0 listofnotebooks listOfNotebooks��  ��  ��  �� "0 currentnotebook currentNotebook� o    ���� 0 evnotebooks EVNotebooks� ��� l   5 =���� r   5 =��� n  5 ;��� I   6 ;������� 0 simple_sort  � ���� o   6 7���� "0 listofnotebooks listOfNotebooks��  ��  �  f   5 6� o      ����  0 folders_sorted Folders_sorted�  SORT THE LIST    � ���  S O R T   T H E   L I S T  � ��� l   > O���� r   > O��� I  > M����
�� .gtqpchltns    @   @ ns  � o   > ?����  0 folders_sorted Folders_sorted� ����
�� 
appr� m   @ A�� ��� 0 S e l e c t   E v e r n o t e   N o t e b o o k� ����
�� 
prmp� l 	 B C������ m   B C�� ��� 4 C u r r e n t   E v e r n o t e   N o t e b o o k s��  ��  � ����
�� 
okbt� m   D E�� ���  O K� �����
�� 
cnbt� m   F G�� ���  N e w   N o t e b o o k��  � o      ���� 0 selnotebook SelNotebook� ( "USER SELECTION FROM NOTEBOOK LIST    � ��� D U S E R   S E L E C T I O N   F R O M   N O T E B O O K   L I S T  � ���� Z   P ~������ l  P S������ =  P S� � o   P Q���� 0 selnotebook SelNotebook  m   Q R��
�� boovfals��  ��  � l  V q k   V q  r   V i n   V g	
	 l 	 c g���� 1   c g��
�� 
ttxt��  ��  
 l  V c���� I  V c��
�� .sysodlogaskr        TEXT m   V Y � 0 E n t e r   N e w   N o t e b o o k   N a m e : ����
�� 
dtxt m   \ _ �  ��  ��  ��   o      ���� 0 	userinput 	userInput �� r   j q o   j k���� 0 	userinput 	userInput o      ���� 0 
evnotebook 
EVnotebook��   ! CREATE NEW NOTEBOOK OPTION     � 6 C R E A T E   N E W   N O T E B O O K   O P T I O N  ��  � r   t ~ n   t x 4   u x��
�� 
cobj m   v w����  o   t u���� 0 selnotebook SelNotebook o      ���� 0 
evnotebook 
EVnotebook��  � m     �                                                                                  EVRN  alis    V  Macintosh HD               �d�jH+   �k�Evernote.app                                                   �<�W-�        ����  	                Applications    �e
�      �W�+     �k�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �  l     ��������  ��  ��    !  l      ��"#��  " o i 
======================================
// UTILITY SUBROUTINES 
=======================================
   # �$$ �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U T I L I T Y   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
! %&% l     ��������  ��  ��  & '(' l     ��)*��  )   EXTRACTION SUBROUTINE   * �++ ,   E X T R A C T I O N   S U B R O U T I N E( ,-, i   � �./. I      ��0����  0 extractbetween extractBetween0 121 o      ���� 0 
searchtext 
SearchText2 343 o      ���� 0 	starttext 	startText4 5��5 o      ���� 0 endtext endText��  ��  / k     ,66 787 r     9:9 n    ;<; 1    ��
�� 
txdl< 1     ��
�� 
ascr: o      ���� 0 tid  8 =>= r    ?@? o    ���� 0 	starttext 	startText@ n     ABA 1    
��
�� 
txdlB 1    ��
�� 
ascr> CDC r    EFE n    GHG m    ��
�� 
ctxtH n    IJI 4    ��K
�� 
citmK m    ������J o    ���� 0 
searchtext 
SearchTextF o      ���� 0 enditems endItemsD LML r    NON o    ���� 0 endtext endTextO n     PQP 1    ��
�� 
txdlQ 1    ��
�� 
ascrM RSR r    #TUT n    !VWV m    !��
�� 
ctxtW n    XYX 4    ��Z
�� 
citmZ m    ���� Y o    ���� 0 enditems endItemsU o      ����  0 beginningtoend beginningToEndS [\[ r   $ )]^] o   $ %���� 0 tid  ^ n     _`_ 1   & (��
�� 
txdl` 1   % &��
�� 
ascr\ a��a L   * ,bb o   * +����  0 beginningtoend beginningToEnd��  - cdc l     ��������  ��  ��  d efe l     ��gh��  g  SORT SUBROUTINE   h �ii  S O R T   S U B R O U T I N Ef jkj i   � �lml I      ��n���� 0 simple_sort  n o��o o      ���� 0 my_list  ��  ��  m k     upp qrq r     sts J     ����  t l     u����u o      ���� 0 
index_list  ��  ��  r vwv r    	xyx J    ����  y l     z����z o      ���� 0 sorted_list  ��  ��  w {|{ U   
 r}~} k    m ��� r    ��� m    �� ���  � l     ������ o      ���� 0 low_item  ��  ��  � ��� Y    c�������� Z   ) ^������� H   ) -�� E  ) ,��� l  ) *������ o   ) *���� 0 
index_list  ��  ��  � o   * +���� 0 i  � k   0 Z�� ��� r   0 8��� c   0 6��� n   0 4��� 4   1 4���
�� 
cobj� o   2 3���� 0 i  � o   0 1���� 0 my_list  � m   4 5��
�� 
ctxt� o      ���� 0 	this_item  � ���� Z   9 Z������ =  9 <��� l  9 :���~� o   9 :�}�} 0 low_item  �  �~  � m   : ;�� ���  � k   ? F�� ��� r   ? B��� o   ? @�|�| 0 	this_item  � l     ��{�z� o      �y�y 0 low_item  �{  �z  � ��x� r   C F��� o   C D�w�w 0 i  � l     ��v�u� o      �t�t 0 low_item_index  �v  �u  �x  � ��� A I L��� o   I J�s�s 0 	this_item  � l  J K��r�q� o   J K�p�p 0 low_item  �r  �q  � ��o� k   O V�� ��� r   O R��� o   O P�n�n 0 	this_item  � l     ��m�l� o      �k�k 0 low_item  �m  �l  � ��j� r   S V��� o   S T�i�i 0 i  � l     ��h�g� o      �f�f 0 low_item_index  �h  �g  �j  �o  ��  ��  ��  ��  �� 0 i  � m    �e�e � l   $��d�c� n    $��� m   ! #�b
�b 
nmbr� n   !��� 2   !�a
�a 
cobj� o    �`�` 0 my_list  �d  �c  ��  � ��� r   d h��� l  d e��_�^� o   d e�]�] 0 low_item  �_  �^  � l     ��\�[� n      ���  ;   f g� o   e f�Z�Z 0 sorted_list  �\  �[  � ��Y� r   i m��� l  i j��X�W� o   i j�V�V 0 low_item_index  �X  �W  � l     ��U�T� n      ���  ;   k l� l  j k��S�R� o   j k�Q�Q 0 
index_list  �S  �R  �U  �T  �Y  ~ l   ��P�O� l   ��N�M� n    ��� m    �L
�L 
nmbr� n   ��� 2   �K
�K 
cobj� o    �J�J 0 my_list  �N  �M  �P  �O  | ��I� L   s u�� l  s t��H�G� o   s t�F�F 0 sorted_list  �H  �G  �I  k ��� l     �E�D�C�E  �D  �C  � ��� l     �B���B  � &  REMOVE EMBEDDED IMAGE REFERENCES   � ��� @ R E M O V E   E M B E D D E D   I M A G E   R E F E R E N C E S� ��� i   � ���� I      �A��@�A 0 stripcid stripCID� ��?� o      �>�> 0 
imgstphtml 
imgstpHTML�?  �@  � k     �� ��� r     	��� b     ��� b     ��� m     �� ��� 
 e c h o  � n    ��� 1    �=
�= 
strq� o    �<�< 0 
imgstphtml 
imgstpHTML� m    �� ��� .   |   s e d   ' s / " c i d : . * " / " " / '� o      �;�; $0 thecommandstring theCommandString� ��� r   
 ��� I  
 �:��9
�: .sysoexecTEXT���     TEXT� o   
 �8�8 $0 thecommandstring theCommandString�9  � o      �7�7 0 	theresult 	theResult� ��6� L    �� o    �5�5 0 	theresult 	theResult�6  �    l     �4�3�2�4  �3  �2    i   � � I      �1�0�1 0 	trimstart 	trimStart �/ o      �.�. 0 str  �/  �0   k     S 	
	 l     �-�-   L F Thanks to HAS (http://applemods.sourceforge.net/mods/Data/String.php)    � �   T h a n k s   t o   H A S   ( h t t p : / / a p p l e m o d s . s o u r c e f o r g e . n e t / m o d s / D a t a / S t r i n g . p h p )
  q       �,�, 0 str   �+�*�+ 0 
whitespace 
whiteSpace�*   �) Q     S k    C  r     c     o    �(�( 0 str   m    �'
�' 
TEXT o      �&�& 0 str    r   	   J   	 !! "#" 5   	 �%$�$
�% 
cha $ m    �#�# 

�$ kfrmID  # %&% o    �"
�" 
ret & '(' 1    �!
�! 
spac( )� ) 1    �
� 
tab �     o      �� 0 
whitespace 
whiteSpace *�* Q    C+,-+ k    9.. /0/ V    6121 r   $ 1343 n  $ /565 7  % /�78
� 
ctxt7 m   ) +�� 8 m   , .����6 o   $ %�� 0 str  4 o      �� 0 str  2 E   #9:9 o    �� 0 
whitespace 
whiteSpace: n   ";<; 4   "�=
� 
cha = m     !�� < o    �� 0 str  0 >�> L   7 9?? o   7 8�� 0 str  �  , R      ��@
� .ascrerr ****      � ****�  @ �A�
� 
errnA d      BB m      ����  - L   A CCC m   A BDD �EE  �   R      �FG
� .ascrerr ****      � ****F o      �� 0 emsg eMsgG �
H�	
�
 
errnH o      �� 0 enum eNum�	   R   K S�IJ
� .ascrerr ****      � ****I b   O RKLK m   O PMM �NN " C a n ' t   t r i m S t a r t :  L o   P Q�� 0 emsg eMsgJ �O�
� 
errnO o   M N�� 0 enum eNum�  �)   PQP l     ��� �  �  �   Q RSR l     ��������  ��  ��  S TUT l      ��VW��  V x r 
======================================
// PROCESS MAIL ITEMS SUBROUTINE
=======================================
   W �XX �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R O C E S S   M A I L   I T E M S   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
U YZY l     ��������  ��  ��  Z [\[ i   � �]^] I      ��_���� 0 mail_process mail_Process_ `��` o      ���� 0 themessages theMessages��  ��  ^ k    �aa bcb l     ��de��  d  CHECK DEFAULT NOTEBOOK   e �ff , C H E C K   D E F A U L T   N O T E B O O Kc ghg n    iji I    �������� $0 default_notebook default_Notebook��  ��  j  f     h k��k O   �lml Q   
�no��n k   �pp qrq Z    st����s =   uvu o    ����  0 tagging_switch tagging_Switchv m    ww �xx  O Nt n   yzy I    ��������  0 tagging_dialog tagging_Dialog��  ��  z  f    ��  ��  r {|{ l  ! !��������  ��  ��  | }��} X   !�~��~ k   1��� ��� Q   1Z����� k   4Q�� ��� l  4 4������  �  GET MESSAGE INFO   � ���   G E T   M E S S A G E   I N F O� ��� r   4 =��� l  4 7������ n   4 7��� 1   5 7��
�� 
subj� o   4 5���� 0 thismessage thisMessage��  ��  � o      ���� 0 mytitle myTitle� ��� r   > C��� l  > A������ n   > A��� 1   ? A��
�� 
ctnt� o   > ?���� 0 thismessage thisMessage��  ��  � o      ���� 0 	mycontent 	myContent� ��� r   D M��� l  D G������ n   D G��� 1   E G��
�� 
raso� o   D E���� 0 thismessage thisMessage��  ��  � o      ���� 0 mysource mySource� ��� r   N S��� l  N Q������ n   N Q��� 1   O Q��
�� 
rpto� o   N O���� 0 thismessage thisMessage��  ��  � o      ���� 0 	replyaddr 	ReplyAddr� ��� r   T Y��� l  T W������ n   T W��� 1   U W��
�� 
rdrc� o   T U���� 0 thismessage thisMessage��  ��  � o      ���� 0 	emaildate 	EmailDate� ��� r   Z b��� l  Z `������ n   Z `��� 2   ^ `��
�� 
trcp� n   Z ^��� 4   [ ^���
�� 
cobj� m   \ ]���� � o   Z [���� 0 thismessage thisMessage��  ��  � o      ���� 0 allrecipients allRecipients� ��� l  c c��������  ��  ��  � ��� l  c c������  �  TEST FOR CC RECIPIENTS   � ��� , T E S T   F O R   C C   R E C I P I E N T S� ��� r   c k��� l  c i������ n   c i��� 2   g i��
�� 
crcp� n   c g��� 4   d g���
�� 
cobj� m   e f���� � o   c d���� 0 thismessage thisMessage��  ��  � o      ���� 0 allccs allCCs� ��� l  l l��������  ��  ��  � ��� l  l l������  � + %ASSEMBLE ALL TO: RECIPENTS FOR HEADER   � ��� J A S S E M B L E   A L L   T O :   R E C I P E N T S   F O R   H E A D E R� ��� r   l o��� m   l m�� ���  � o      ���� 0 torecipients toRecipients� ��� X   p ������ k   � ��� ��� r   � ���� m   � ��� ���  � o      ���� 0 toname toName� ��� r   � ���� l  � ������� n   � ���� 1   � ���
�� 
pnam� o   � ����� 0 allrecipient allRecipient��  ��  � o      ���� 0 toname toName� ��� Z  � �������� =  � ���� o   � ����� 0 toname toName� m   � ���
�� 
msng� r   � ���� m   � ��� ���  � o      ���� 0 toname toName��  ��  � ��� r   � ���� l  � ������� n   � ���� 1   � ���
�� 
radd� o   � ����� 0 allrecipient allRecipient��  ��  � o      ���� 0 toemail toEmail� ��� r   � ���� b   � ���� b   � �� � b   � � b   � � o   � ����� 0 toname toName 1   � ���
�� 
spac m   � � �  (  o   � ����� 0 toemail toEmail� m   � � �  ) < b r / >� o      ���� 0 
tocombined 
toCombined� 	��	 r   � �

 l  � ����� c   � � b   � � o   � ����� 0 torecipients toRecipients o   � ����� 0 
tocombined 
toCombined m   � ���
�� 
TEXT��  ��   o      ���� 0 torecipients toRecipients��  �� 0 allrecipient allRecipient� o   s t���� 0 allrecipients allRecipients�  l  � ���������  ��  ��    l  � �����   + %ASSEMBLE ALL CC: RECIPENTS FOR HEADER    � J A S S E M B L E   A L L   C C :   R E C I P E N T S   F O R   H E A D E R  r   � � m   � � �   o      ���� 0 ccrecipients ccRecipients  l  � ���������  ��  ��    !  Z   �4"#����" >  � �$%$ o   � ����� 0 allccs allCCs% J   � �����  # X   �0&��'& k   �+(( )*) r   � �+,+ m   � �-- �..  , o      ���� 0 ccname ccName* /0/ r   � �121 l  � �3����3 n   � �454 1   � ���
�� 
pnam5 o   � ����� 0 allcc allCC��  ��  2 o      ���� 0 ccname ccName0 676 Z  �89����8 =  � �:;: o   � ��� 0 ccname ccName; m   � ��~
�~ 
msng9 r   � �<=< m   � �>> �??  = o      �}�} 0 toname toName��  ��  7 @A@ r  BCB l 	D�|�{D n  	EFE 1  	�z
�z 
raddF o  �y�y 0 allcc allCC�|  �{  C o      �x�x 0 ccemail ccEmailA GHG r  IJI b  KLK b  MNM b  OPO b  QRQ o  �w�w 0 ccname ccNameR 1  �v
�v 
spacP m  SS �TT  (N o  �u�u 0 ccemail ccEmailL m  UU �VV  ) < b r / >J o      �t�t 0 
cccombined 
ccCombinedH W�sW r   +XYX l  )Z�r�qZ c   )[\[ b   %]^] o   !�p�p 0 ccrecipients ccRecipients^ o  !$�o�o 0 
cccombined 
ccCombined\ m  %(�n
�n 
TEXT�r  �q  Y o      �m�m 0 ccrecipients ccRecipients�s  �� 0 allcc allCC' o   � ��l�l 0 allccs allCCs��  ��  ! _`_ l 55�kab�k  a  CREATE MAIL MESSAGE URL   b �cc . C R E A T E   M A I L   M E S S A G E   U R L` ded r  5<fgf m  58hh �ii  g o      �j�j 0 therecipient theRecipiente jkj r  =Dlml m  =@nn �oo  m o      �i�i 0 ex  k pqp r  ELrsr m  EHtt �uu  s o      �h�h 0 msglink MsgLinkq vwv Q  M�xy�gx k  P�zz {|{ r  PW}~} m  PS ���  ~ o      �f�f 0 therecipient theRecipient| ��� r  Xd��� l X`��e�d� n  X`��� 1  \`�c
�c 
radd� n  X\��� 4  Y\�b�
�b 
trcp� m  Z[�a�a � o  XY�`�` 0 thismessage thisMessage�e  �d  � o      �_�_ 0 therecipient theRecipient� ��� r  ev��� b  er��� b  en��� m  eh�� ���  m e s s a g e : / / % 3 c� n hm��� 1  im�^
�^ 
meid� o  hi�]�] 0 thismessage thisMessage� m  nq�� ���  % 3 e� o      �\�\ 0 msglink MsgLink� ��[� l w����� Z w����Z�Y� > w~��� o  wz�X�X 0 therecipient theRecipient� m  z}�� ���  � r  ����� n ����� I  ���W��V�W  0 extractbetween extractBetween� ��� o  ���U�U 0 	replyaddr 	ReplyAddr� ��� m  ���� ���  <� ��T� m  ���� ���  >�T  �V  �  f  ��� o      �S�S 0 ex  �Z  �Y  �   extract the Address   � ��� (   e x t r a c t   t h e   A d d r e s s�[  y R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  �g  w ��� l ���O�N�M�O  �N  �M  � ��� l ���L���L  �  HTML EMAIL FUNCTIONS   � ��� ( H T M L   E M A I L   F U N C T I O N S� ��� r  ����� n ����� I  ���K��J�K  0 extractbetween extractBetween� ��� o  ���I�I 0 mysource mySource� ��� m  ���� ���  b o u n d a r y = "� ��H� b  ����� m  ���� ���  "� 1  ���G
�G 
lnfd�H  �J  �  f  ��� o      �F�F 0 theboundary theBoundary� ��� r  ����� l ����E�D� b  ����� b  ����� o  ���C
�C 
ret � m  ���� ���  - -� o  ���B�B 0 theboundary theBoundary�E  �D  � o      �A�A "0 themessagestart theMessageStart� ��� r  ����� l ����@�?� b  ����� b  ����� b  ����� m  ���� ���  - -� o  ���>�> 0 theboundary theBoundary� o  ���=
�= 
ret � m  ���� ���  C o n t e n t - T y p e :�@  �?  � o      �<�< 0 themessageend theMessageEnd� ��� r  ����� n  ����� 2 ���;
�; 
cpar� o  ���:�: 0 mysource mySource� o      �9�9 0 
parasource 
paraSource� ��� r  ����� n  ����� 2 ���8
�8 
cpar� l ����7�6� c  ����� n  ����� 1  ���5
�5 
alhe� o  ���4�4 0 thismessage thisMessage� m  ���3
�3 
ctxt�7  �6  � o      �2�2 0 myheaderlines myHeaderlines� ��� l ���1�0�/�1  �0  �/  � ��� l ���.�-�,�.  �-  �,  � ��� l ���+���+  �  GET CONTENT TYPE   � ���   G E T   C O N T E N T   T Y P E� � � X  �7�* Z  2�)�( C   o  �'�' 0 myheaderline myHeaderline m   �  C o n t e n t - T y p e :   r  .	
	 n ( I  (�&�%�&  0 extractbetween extractBetween  o  �$�$ 0 myheaderline myHeaderline  m  ! �  C o n t e n t - T y p e :   �# m  !$ �  ;�#  �%    f  
 o      �"�" 0 	myheaders 	myHeaders�)  �(  �* 0 myheaderline myHeaderline o  �!�! 0 myheaderlines myHeaderlines   r  8I n 8E I  9E� ��  0 stripheader stripHeader  o  9>�� 0 
parasource 
paraSource  �  o  >A�� 0 myheaderlines myHeaderlines�  �    f  89 o      �� 0 	cutsource 	cutSource !�! r  JQ"#" o  JM�� 0 	cutsource 	cutSource# o      �� 0 evhtml evHTML�  � R      ���
� .ascrerr ****      � ****�  �  ��  � $%$ l [[����  �  �  % &'& l [[�()�  (  MAKE HEADER TEMPLATE   ) �** ( M A K E   H E A D E R   T E M P L A T E' +,+ r  [�-.- b  [�/0/ b  [�121 b  [�343 b  [�565 b  [~787 b  [z9:9 b  [x;<; b  [t=>= b  [n?@? b  [jABA b  [fCDC b  [bEFE m  [^GG �HH� 
 < t a b l e   b o r d e r = " 1 "   w i d t h = " 1 0 0 % "   c e l l s p a c i n g = " 0 "   c e l l p a d d i n g = " 2 " > 
 < t b o d y > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > F r o m :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < a   h r e f = " m a i l t o :F o  ^a�� 0 ex  D m  beII �JJ  " >B o  fi�� 0 ex  @ m  jmKK �LL < / a > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > S u b j e c t :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < s t r o n g >> o  ns�� 0 mytitle myTitle< m  twMM �NN < / s t r o n g > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > D a t e   /   T i m e :     < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " >: o  xy�� 0 	emaildate 	EmailDate8 m  z}OO �PP � < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > T o : < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " >6 o  ~�� 0 torecipients toRecipients4 m  ��QQ �RR � < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > C C : < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " >2 o  ���� 0 ccrecipients ccRecipients0 m  ��SS �TT H < / t d > 
 < / t r > 
 < / t b o d y > 
 < / t a b l e > 
 < h r   / >. o      �
�
 0 the_template the_Template, UVU l ���	���	  �  �  V WXW l ���YZ�  Y &  SEND ITEM TO EVERNOTE SUBROUTINE   Z �[[ @ S E N D   I T E M   T O   E V E R N O T E   S U B R O U T I N EX \]\ n ��^_^ I  ���`�� 0 make_evernote make_Evernote` aba o  ���� 0 mytitle myTitleb cdc o  ���� 0 evtag EVTagd efe o  ���� 0 	emaildate 	EmailDatef ghg o  ��� �  0 msglink MsgLinkh iji o  ������ 0 	mycontent 	myContentj klk o  ������ 0 mysource mySourcel mnm o  ������ 0 theboundary theBoundaryn opo o  ������ "0 themessagestart theMessageStartp qrq o  ������ 0 themessageend theMessageEndr sts o  ������ 0 	myheaders 	myHeaderst uvu o  ������ 0 thismessage thisMessagev wxw o  ������ 0 evhtml evHTMLx yzy o  ������ 0 
evnotebook 
EVnotebookz {��{ o  ������ 0 the_template the_Template��  �  _  f  ��] |��| l ����������  ��  ��  ��  �� 0 thismessage thisMessage o   $ %���� 0 themessages theMessages��  o R      ������
�� .ascrerr ****      � ****��  ��  ��  m m    }}�                                                                                  emal  alis    F  Macintosh HD               �d�jH+   �k�Mail.app                                                        �%r�e�        ����  	                Applications    �e
�      ��^     �k�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  \ ~~ l     ��������  ��  ��   ��� l     ��������  ��  ��  � ��� l      ������  � { u 
======================================
// MAKE ITEM IN EVERNOTE SUBROUTINE
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A K E   I T E M   I N   E V E R N O T E   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 make_evernote make_Evernote� ��� o      ���� 0 mytitle myTitle� ��� o      ���� 0 evtag EVTag� ��� o      ���� 0 	emaildate 	EmailDate� ��� o      ���� 0 msglink MsgLink� ��� o      ���� 0 	mycontent 	myContent� ��� o      ���� 0 mysource mySource� ��� o      ���� 0 theboundary theBoundary� ��� o      ���� "0 themessagestart theMessageStart� ��� o      ���� 0 themessageend theMessageEnd� ��� o      ���� 0 	myheaders 	myHeaders� ��� o      ���� 0 thismessage thisMessage� ��� o      ���� 0 evhtml evHTML� ��� o      ���� 0 
evnotebook 
EVnotebook� ���� o      ���� 0 the_template the_Template��  ��  � k    ;�� ��� l     ��������  ��  ��  � ��� O    -��� Q   ,����� k   #�� ��� l   ��������  ��  ��  � ��� l   ��������  ��  ��  � ��� l   ��������  ��  ��  � ��� l   ������  �  IS IT A TEXT EMAIL?      � ��� , I S   I T   A   T E X T   E M A I L ?      � ��� Z   ������ E    
��� o    ���� 0 	myheaders 	myHeaders� m    	�� ���  t e x t / p l a i n� k    H�� ��� r    ��� I   �����
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Enhl� o    ���� 0 the_template the_Template� ����
�� 
Entt� o    ���� 0 mytitle myTitle� �����
�� 
Ennb� o    ���� 0 
evnotebook 
EVnotebook��  � o      ���� 0 n  � ��� Z   -������� >   ��� o    ���� 0 evtag EVTag� J    ����  � I  " )����
�� .EVRNassnnull���     ****� o   " #���� 0 evtag EVTag� �����
�� 
EV13� o   $ %���� 0 n  ��  ��  ��  � ��� O  . :��� I  2 9�����
�� .EVRNadtnnull���     EVnn��  � �����
�� 
EV18� o   4 5���� 0 	mycontent 	myContent��  � o   . /���� 0 n  � ��� r   ; @��� o   ; <���� 0 	emaildate 	EmailDate� n      ��� 1   = ?��
�� 
EVdd� o   < =���� 0 n  � ��� r   A F��� o   A B���� 0 msglink MsgLink� n      ��� 1   C E��
�� 
EVsu� o   B C���� 0 n  � ��� l  G G��������  ��  ��  � ��� l  G G������  � 5 / IF HTML PROCESSING IS TURNED TO "OFF", PROCESS   � ��� ^   I F   H T M L   P R O C E S S I N G   I S   T U R N E D   T O   " O F F " ,   P R O C E S S� ���� l  G G������  � ; 5 AS PLAINTEXT (USEFUL FOR NON-ENGLISH ENCODED EMAILS)   � ��� j   A S   P L A I N T E X T   ( U S E F U L   F O R   N O N - E N G L I S H   E N C O D E D   E M A I L S )��  � ��� =  K R��� o   K P���� 0 html_switch HTML_Switch� m   P Q�� ���  O F F� � � k   U �  r   U b I  U `����
�� .EVRNcrntnull��� ��� null��   ��
�� 
Enhl o   W X���� 0 the_template the_Template ��	

�� 
Entt	 o   Y Z���� 0 mytitle myTitle
 ����
�� 
Ennb o   [ \���� 0 
evnotebook 
EVnotebook��   o      ���� 0 n    Z  c u���� >  c g o   c d���� 0 evtag EVTag J   d f����   I  j q��
�� .EVRNassnnull���     **** o   j k���� 0 evtag EVTag ����
�� 
EV13 o   l m���� 0 n  ��  ��  ��    O  v � I  z �����
�� .EVRNadtnnull���     EVnn��   ����
�� 
EV18 o   | }���� 0 	mycontent 	myContent��   o   v w���� 0 n    r   � � o   � ����� 0 	emaildate 	EmailDate n        1   � ���
�� 
EVdd  o   � ����� 0 n   !"! r   � �#$# o   � ����� 0 msglink MsgLink$ n      %&% 1   � ��
� 
EVsu& o   � ��~�~ 0 n  " '�}' l  � ��|()�|  ( " IS IT MULTIPART ALTERNATIVE?   ) �** 8 I S   I T   M U L T I P A R T   A L T E R N A T I V E ?�}    +,+ E   � �-.- o   � ��{�{ 0 	myheaders 	myHeaders. m   � �// �00 * m u l t i p a r t / a l t e r n a t i v e, 121 k   �33 454 l  � ��z�y�x�z  �y  �x  5 676 l  � ��w89�w  8  CHECK FOR BASE64   9 �::   C H E C K   F O R   B A S E 6 47 ;<; r   � �=>= n  � �?@? I   � ��vA�u�v 0 base64_check base64_CheckA B�tB o   � ��s�s 0 mysource mySource�t  �u  @  f   � �> o      �r�r 0 base64detect base64Detect< CDC l  � ��q�p�o�q  �p  �o  D EFE l  � ��nGH�n  G % IF MESSAGE IS BASE64 ENCODED...   H �II > I F   M E S S A G E   I S   B A S E 6 4   E N C O D E D . . .F JKJ Z   �
LM�mNL =  � �OPO o   � ��l�l 0 base64detect base64DetectP m   � ��k
�k boovtrueM k   �sQQ RSR r   � �TUT n  � �VWV I   � ��jX�i�j  0 extractbetween extractBetweenX YZY o   � ��h�h 0 mysource mySourceZ [\[ m   � �]] �^^ B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4\ _�g_ b   � �`a` m   � �bb �cc  - -a o   � ��f�f 0 theboundary theBoundary�g  �i  W  f   � �U o      �e�e 0 	multihtml 	multiHTMLS ded l  � ��d�c�b�d  �c  �b  e fgf l  � ��ahi�a  h 1 +STRIP OUT CONTENT-DISPOSITION, IF NECESSARY   i �jj V S T R I P   O U T   C O N T E N T - D I S P O S I T I O N ,   I F   N E C E S S A R Yg klk Z  � �mn�`�_m E   � �opo o   � ��^�^ 0 	multihtml 	multiHTMLp m   � �qq �rr 6 C o n t e n t - D i s p o s i t i o n :   i n l i n en r   � �sts n  � �uvu I   � ��]w�\�]  0 extractbetween extractBetweenw xyx o   � ��[�[ 0 	multihtml 	multiHTMLy z{z m   � �|| �}} 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e{ ~�Z~ o   � ��Y�Y 0 theboundary theBoundary�Z  �\  v  f   � �t o      �X�X 0 	multihtml 	multiHTML�`  �_  l � Z  ����W�V� E   � ���� o   � ��U�U 0 	multihtml 	multiHTML� m   � ��� ��� > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t� r   ���� n  � ���� I   � ��T��S�T  0 extractbetween extractBetween� ��� o   � ��R�R 0 	multihtml 	multiHTML� ��� m   � ��� ��� > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t� ��Q� o   � ��P�P 0 theboundary theBoundary�Q  �S  �  f   � �� o      �O�O 0 	multihtml 	multiHTML�W  �V  � ��� l �N�M�L�N  �M  �L  � ��� l �K���K  �  TRIM LEADING LINEFEEDS   � ��� , T R I M   L E A D I N G   L I N E F E E D S� ��� r  ��� n ��� I  �J��I�J 0 	trimstart 	trimStart� ��H� o  �G�G 0 	multihtml 	multiHTML�H  �I  �  f  � o      �F�F 0 basehtml baseHTML� ��� l �E�D�C�E  �D  �C  � ��� l �B���B  �  DECODE BASE64   � ���  D E C O D E   B A S E 6 4� ��� r  3��� I -�A��@
�A .sysoexecTEXT���     TEXT� b  )��� b  %��� m  �� ��� 
 e c h o  � l $��?�>� n  $��� 1   $�=
�= 
strq� o   �<�< 0 basehtml baseHTML�?  �>  � m  %(�� ���  |   b a s e 6 4   - D�@  � o      �;�; 0 basehtml baseHTML� ��� l 44�:�9�8�:  �9  �8  � ��� l 44�7���7  �  MAKE NOTE IN EVERNOTE   � ��� * M A K E   N O T E   I N   E V E R N O T E� ��� r  4A��� I 4?�6�5�
�6 .EVRNcrntnull��� ��� null�5  � �4��
�4 
Enhl� o  67�3�3 0 the_template the_Template� �2��
�2 
Entt� o  89�1�1 0 mytitle myTitle� �0��/
�0 
Ennb� o  :;�.�. 0 
evnotebook 
EVnotebook�/  � o      �-�- 0 n  � ��� Z BT���,�+� > BF��� o  BC�*�* 0 evtag EVTag� J  CE�)�)  � I IP�(��
�( .EVRNassnnull���     ****� o  IJ�'�' 0 evtag EVTag� �&��%
�& 
EV13� o  KL�$�$ 0 n  �%  �,  �+  � ��� O Ug��� I Yf�#�"�
�# .EVRNadtnnull���     EVnn�"  � �!�� 
�! 
EV19� o  ]b�� 0 basehtml baseHTML�   � o  UV�� 0 n  � ��� r  hm��� o  hi�� 0 	emaildate 	EmailDate� n      ��� 1  jl�
� 
EVdd� o  ij�� 0 n  � ��� r  ns��� o  no�� 0 msglink MsgLink� n      ��� 1  pr�
� 
EVsu� o  op�� 0 n  �  �m  N k  v
�� ��� l vv����  �  �  � ��� l vv����  � ) #IF MESSAGE IS NOT BASE64 ENCODED...   � ��� F I F   M E S S A G E   I S   N O T   B A S E 6 4   E N C O D E D . . .� ��� r  v���� n v~��� I  w~���� 0 htmlfix htmlFix� ��� o  wx�� 0 mysource mySource� ��� o  xy�� 0 theboundary theBoundary� ��� o  yz�� 0 	mycontent 	myContent�  �  �  f  vw� o      �� 0 	finalhtml 	finalHTML� ��� Z  �
���
�� = ����� o  ���	�	  0 decode_success decode_Success� m  ���
� boovtrue� k  ���� �	 � l ������  �  �  	  			 l ���		�  	  MAKE NOTE IN EVERNOTE   	 �		 * M A K E   N O T E   I N   E V E R N O T E	 			 r  ��				 I ����	

� .EVRNcrntnull��� ��� null�  	
 �		
� 
Enhl	 o  ��� �  0 the_template the_Template	 ��		
�� 
Entt	 o  ������ 0 mytitle myTitle	 ��	��
�� 
Ennb	 o  ������ 0 
evnotebook 
EVnotebook��  		 o      ���� 0 n  	 			 Z ��		����	 > ��			 o  ������ 0 evtag EVTag	 J  ������  	 I ����		
�� .EVRNassnnull���     ****	 o  ������ 0 evtag EVTag	 ��	��
�� 
EV13	 o  ������ 0 n  ��  ��  ��  	 			 O ��			 I ������	
�� .EVRNadtnnull���     EVnn��  	 ��	��
�� 
EV19	 o  ������ 0 	finalhtml 	finalHTML��  	 o  ������ 0 n  	 		 	 r  ��	!	"	! o  ������ 0 	emaildate 	EmailDate	" n      	#	$	# 1  ����
�� 
EVdd	$ o  ������ 0 n  	  	%��	% r  ��	&	'	& o  ������ 0 msglink MsgLink	' n      	(	)	( 1  ����
�� 
EVsu	) o  ������ 0 n  ��  �
  � k  �
	*	* 	+	,	+ l ����������  ��  ��  	, 	-	.	- l ����	/	0��  	/  MAKE NOTE IN EVERNOTE   	0 �	1	1 * M A K E   N O T E   I N   E V E R N O T E	. 	2	3	2 r  ��	4	5	4 I ������	6
�� .EVRNcrntnull��� ��� null��  	6 ��	7	8
�� 
Enhl	7 o  ������ 0 the_template the_Template	8 ��	9	:
�� 
Entt	9 o  ������ 0 mytitle myTitle	: ��	;��
�� 
Ennb	; o  ������ 0 
evnotebook 
EVnotebook��  	5 o      ���� 0 n  	3 	<	=	< Z ��	>	?����	> > ��	@	A	@ o  ������ 0 evtag EVTag	A J  ������  	? I ����	B	C
�� .EVRNassnnull���     ****	B o  ������ 0 evtag EVTag	C ��	D��
�� 
EV13	D o  ������ 0 n  ��  ��  ��  	= 	E	F	E O ��	G	H	G I ������	I
�� .EVRNadtnnull���     EVnn��  	I ��	J��
�� 
EV18	J o  ������ 0 	mycontent 	myContent��  	H o  ������ 0 n  	F 	K	L	K r  �	M	N	M o  � ���� 0 	emaildate 	EmailDate	N n      	O	P	O 1  ��
�� 
EVdd	P o   ���� 0 n  	L 	Q��	Q r  
	R	S	R o  ���� 0 msglink MsgLink	S n      	T	U	T 1  	��
�� 
EVsu	U o  ���� 0 n  ��  �  K 	V	W	V l ��������  ��  ��  	W 	X��	X l ��	Y	Z��  	Y  IS IT MULTIPART MIXED?   	Z �	[	[ , I S   I T   M U L T I P A R T   M I X E D ?��  2 	\	]	\ E  	^	_	^ o  ���� 0 	myheaders 	myHeaders	_ m  	`	` �	a	a  m u l t i p a r t	] 	b��	b k  k	c	c 	d	e	d l i	f	g	h	f Z  i	i	j	k��	i E  	l	m	l o  ���� 0 mysource mySource	m m  	n	n �	o	o . C o n t e n t - T y p e :   t e x t / h t m l	j k  	p	p 	q	r	q l ��������  ��  ��  	r 	s	t	s l ��	u	v��  	u  CHECK FOR BASE64   	v �	w	w   C H E C K   F O R   B A S E 6 4	t 	x	y	x r  '	z	{	z n %	|	}	| I   %��	~���� 0 base64_check base64_Check	~ 	��	 o   !���� 0 mysource mySource��  ��  	}  f   	{ o      ���� 0 base64detect base64Detect	y 	�	�	� l ((��������  ��  ��  	� 	�	�	� l ((��	�	���  	� % IF MESSAGE IS BASE64 ENCODED...   	� �	�	� > I F   M E S S A G E   I S   B A S E 6 4   E N C O D E D . . .	� 	�	�	� Z  (	�	�	���	� = (+	�	�	� o  ()���� 0 base64detect base64Detect	� m  )*��
�� boovtrue	� k  .|	�	� 	�	�	� r  .:	�	�	� n .4	�	�	� I  /4��	����� 0 base64_decode base64_Decode	� 	���	� o  /0���� 0 mysource mySource��  ��  	�  f  ./	� o      ���� 0 basehtml baseHTML	� 	�	�	� l ;;��������  ��  ��  	� 	�	�	� l ;;��	�	���  	�  MAKE NOTE IN EVERNOTE   	� �	�	� * M A K E   N O T E   I N   E V E R N O T E	� 	�	�	� r  ;H	�	�	� I ;F����	�
�� .EVRNcrntnull��� ��� null��  	� ��	�	�
�� 
Enhl	� o  =>���� 0 the_template the_Template	� ��	�	�
�� 
Entt	� o  ?@���� 0 mytitle myTitle	� ��	���
�� 
Ennb	� o  AB���� 0 
evnotebook 
EVnotebook��  	� o      ���� 0 n  	� 	�	�	� Z I[	�	�����	� > IM	�	�	� o  IJ���� 0 evtag EVTag	� J  JL����  	� I PW��	�	�
�� .EVRNassnnull���     ****	� o  PQ���� 0 evtag EVTag	� ��	���
�� 
EV13	� o  RS���� 0 n  ��  ��  ��  	� 	�	�	� O \n	�	�	� I `m����	�
�� .EVRNadtnnull���     EVnn��  	� ��	���
�� 
EV19	� o  di���� 0 basehtml baseHTML��  	� o  \]���� 0 n  	� 	�	�	� r  ot	�	�	� o  op���� 0 	emaildate 	EmailDate	� n      	�	�	� 1  qs��
�� 
EVdd	� o  pq���� 0 n  	� 	�	�	� r  uz	�	�	� o  uv���� 0 msglink MsgLink	� n      	�	�	� 1  wy��
�� 
EVsu	� o  vw�� 0 n  	� 	�	�	� l {{�~�}�|�~  �}  �|  	� 	��{	� l {{�z	�	��z  	� ) #IF MESSAGE IS NOT BASE64 ENCODED...   	� �	�	� F I F   M E S S A G E   I S   N O T   B A S E 6 4   E N C O D E D . . .�{  	� 	�	�	� = �	�	�	� o  ��y�y 0 base64detect base64Detect	� m  ���x
�x boovfals	� 	��w	� k  �	�	� 	�	�	� r  ��	�	�	� n ��	�	�	� I  ���v	��u�v 0 htmlfix htmlFix	� 	�	�	� o  ���t�t 0 mysource mySource	� 	�	�	� o  ���s�s 0 theboundary theBoundary	� 	��r	� o  ���q�q 0 	mycontent 	myContent�r  �u  	�  f  ��	� o      �p�p 0 	finalhtml 	finalHTML	� 	��o	� Z  �	�	��n	�	� = ��	�	�	� o  ���m�m  0 decode_success decode_Success	� m  ���l
�l boovtrue	� k  ��	�	� 	�	�	� l ���k�j�i�k  �j  �i  	� 	�	�	� l ���h	�	��h  	�  MAKE NOTE IN EVERNOTE   	� �	�	� * M A K E   N O T E   I N   E V E R N O T E	� 	�	�	� r  ��	�	�	� I ���g�f	�
�g .EVRNcrntnull��� ��� null�f  	� �e	�	�
�e 
Enhl	� o  ���d�d 0 the_template the_Template	� �c	�	�
�c 
Entt	� o  ���b�b 0 mytitle myTitle	� �a	��`
�a 
Ennb	� o  ���_�_ 0 
evnotebook 
EVnotebook�`  	� o      �^�^ 0 n  	� 	�	�	� Z ��	�	��]�\	� > ��	�	�	� o  ���[�[ 0 evtag EVTag	� J  ���Z�Z  	� I ���Y	�	�
�Y .EVRNassnnull���     ****	� o  ���X�X 0 evtag EVTag	� �W	��V
�W 
EV13	� o  ���U�U 0 n  �V  �]  �\  	� 	�	�	� O ��	�	�	� I ���T�S
 
�T .EVRNadtnnull���     EVnn�S  
  �R
�Q
�R 
EV19
 o  ���P�P 0 	finalhtml 	finalHTML�Q  	� o  ���O�O 0 n  	� 


 r  ��


 o  ���N�N 0 	emaildate 	EmailDate
 n      


 1  ���M
�M 
EVdd
 o  ���L�L 0 n  
 
�K
 r  ��
	


	 o  ���J�J 0 msglink MsgLink

 n      


 1  ���I
�I 
EVsu
 o  ���H�H 0 n  �K  �n  	� k  �

 


 l ���G�F�E�G  �F  �E  
 


 l ���D

�D  
  MAKE NOTE IN EVERNOTE   
 �

 * M A K E   N O T E   I N   E V E R N O T E
 


 r  ��


 I ���C�B

�C .EVRNcrntnull��� ��� null�B  
 �A


�A 
Enhl
 o  ���@�@ 0 the_template the_Template
 �?


�? 
Entt
 o  ���>�> 0 mytitle myTitle
 �=
�<
�= 
Ennb
 o  ���;�; 0 
evnotebook 
EVnotebook�<  
 o      �:�: 0 n  
 

 
 Z � 
!
"�9�8
! > ��
#
$
# o  ���7�7 0 evtag EVTag
$ J  ���6�6  
" I ���5
%
&
�5 .EVRNassnnull���     ****
% o  ���4�4 0 evtag EVTag
& �3
'�2
�3 
EV13
' o  ���1�1 0 n  �2  �9  �8  
  
(
)
( O 
*
+
* I �0�/
,
�0 .EVRNadtnnull���     EVnn�/  
, �.
-�-
�. 
EV18
- o  �,�, 0 	mycontent 	myContent�-  
+ o  �+�+ 0 n  
) 
.
/
. r  
0
1
0 o  �*�* 0 	emaildate 	EmailDate
1 n      
2
3
2 1  �)
�) 
EVdd
3 o  �(�( 0 n  
/ 
4�'
4 r  
5
6
5 o  �&�& 0 msglink MsgLink
6 n      
7
8
7 1  �%
�% 
EVsu
8 o  �$�$ 0 n  �'  �o  �w  ��  	� 
9�#
9 l �"�!� �"  �!  �   �#  	k 
:
;
: E  "'
<
=
< o  "#�� 0 mysource mySource
= m  #&
>
> �
?
?  t e x t / p l a i n
; 
@�
@ k  *e
A
A 
B
C
B l **����  �  �  
C 
D
E
D l **�
F
G�  
F  MAKE NOTE IN EVERNOTE   
G �
H
H * M A K E   N O T E   I N   E V E R N O T E
E 
I
J
I r  *7
K
L
K I *5��
M
� .EVRNcrntnull��� ��� null�  
M �
N
O
� 
Enhl
N o  ,-�� 0 the_template the_Template
O �
P
Q
� 
Entt
P o  ./�� 0 mytitle myTitle
Q �
R�
� 
Ennb
R o  01�� 0 
evnotebook 
EVnotebook�  
L o      �� 0 n  
J 
S
T
S Z 8J
U
V��
U > 8<
W
X
W o  89�� 0 evtag EVTag
X J  9;��  
V I ?F�
Y
Z
� .EVRNassnnull���     ****
Y o  ?@�
�
 0 evtag EVTag
Z �	
[�
�	 
EV13
[ o  AB�� 0 n  �  �  �  
T 
\
]
\ O KW
^
_
^ I OV��
`
� .EVRNadtnnull���     EVnn�  
` �
a�
� 
EV18
a o  QR�� 0 	mycontent 	myContent�  
_ o  KL�� 0 n  
] 
b
c
b r  X]
d
e
d o  XY� �  0 	emaildate 	EmailDate
e n      
f
g
f 1  Z\��
�� 
EVdd
g o  YZ���� 0 n  
c 
h
i
h r  ^c
j
k
j o  ^_���� 0 msglink MsgLink
k n      
l
m
l 1  `b��
�� 
EVsu
m o  _`���� 0 n  
i 
n��
n l dd��������  ��  ��  ��  �  ��  	g   MULTIPART MIXED   	h �
o
o     M U L T I P A R T   M I X E D	e 
p
q
p l jj��������  ��  ��  
q 
r��
r l jj��
s
t��  
s $ OTHER TYPES OF HTML-ENCODING     
t �
u
u < O T H E R   T Y P E S   O F   H T M L - E N C O D I N G    ��  ��  � k  n�
v
v 
w
x
w l nn��������  ��  ��  
x 
y
z
y l nn��
{
|��  
{  CHECK FOR BASE64   
| �
}
}   C H E C K   F O R   B A S E 6 4
z 
~

~ r  nv
�
�
� n nt
�
�
� I  ot��
����� 0 base64_check base64_Check
� 
���
� o  op���� 0 mysource mySource��  ��  
�  f  no
� o      ���� 0 base64detect base64Detect
 
�
�
� l ww��������  ��  ��  
� 
�
�
� l ww��
�
���  
� % IF MESSAGE IS BASE64 ENCODED...   
� �
�
� > I F   M E S S A G E   I S   B A S E 6 4   E N C O D E D . . .
� 
�
�
� Z  w�
�
���
�
� = wz
�
�
� o  wx���� 0 base64detect base64Detect
� m  xy��
�� boovtrue
� r  }�
�
�
� n }�
�
�
� I  ~���
����� 0 base64_decode base64_Decode
� 
���
� o  ~���� 0 mysource mySource��  ��  
�  f  }~
� o      ���� 0 	finalhtml 	finalHTML��  
� k  ��
�
� 
�
�
� r  ��
�
�
� n ��
�
�
� I  ����
�����  0 extractbetween extractBetween
� 
�
�
� o  ������ 0 evhtml evHTML
� 
�
�
� m  ��
�
� �
�
�  < / h e a d >
� 
���
� m  ��
�
� �
�
�  < / h t m l >��  ��  
�  f  ��
� o      ���� 0 	multihtml 	multiHTML
� 
���
� r  ��
�
�
� c  ��
�
�
� n ��
�
�
� I  ����
����� 0 htmlfix htmlFix
� 
�
�
� o  ������ 0 	multihtml 	multiHTML
� 
�
�
� o  ������ 0 theboundary theBoundary
� 
���
� o  ������ 0 	mycontent 	myContent��  ��  
�  f  ��
� m  ����
�� 
ctxt
� o      ���� 0 	finalhtml 	finalHTML��  
� 
�
�
� l ����������  ��  ��  
� 
�
�
� l ����
�
���  
�  MAKE NOTE IN EVERNOTE   
� �
�
� * M A K E   N O T E   I N   E V E R N O T E
� 
�
�
� r  ��
�
�
� I ������
�
�� .EVRNcrntnull��� ��� null��  
� ��
�
�
�� 
Enhl
� o  ������ 0 the_template the_Template
� ��
�
�
�� 
Entt
� o  ������ 0 mytitle myTitle
� ��
���
�� 
Ennb
� o  ������ 0 
evnotebook 
EVnotebook��  
� o      ���� 0 n  
� 
�
�
� Z ��
�
�����
� > ��
�
�
� o  ������ 0 evtag EVTag
� J  ������  
� I ����
�
�
�� .EVRNassnnull���     ****
� o  ������ 0 evtag EVTag
� ��
���
�� 
EV13
� o  ������ 0 n  ��  ��  ��  
� 
�
�
� O ��
�
�
� I ������
�
�� .EVRNadtnnull���     EVnn��  
� ��
���
�� 
EV19
� o  ������ 0 	finalhtml 	finalHTML��  
� o  ������ 0 n  
� 
�
�
� r  ��
�
�
� o  ������ 0 	emaildate 	EmailDate
� n      
�
�
� 1  ����
�� 
EVdd
� o  ������ 0 n  
� 
�
�
� r  ��
�
�
� o  ������ 0 msglink MsgLink
� n      
�
�
� 1  ����
�� 
EVsu
� o  ������ 0 n  
� 
�
�
� l ����������  ��  ��  
� 
���
� l ����
�
���  
�  END OF MESSAGE PROCESSING   
� �
�
� 2 E N D   O F   M E S S A G E   P R O C E S S I N G��  � 
�
�
� l ����������  ��  ��  
� 
�
�
� l ����
�
���  
� $ START OF ATTACHMENT PROCESSING   
� �
�
� < S T A R T   O F   A T T A C H M E N T   P R O C E S S I N G
� 
�
�
� O  �
�
�
� k  �
�
� 
�
�
� l ����
�
���  
� 7 1IF ATTACHMENTS PRESENT, RUN ATTACHMENT SUBROUTINE   
� �
�
� b I F   A T T A C H M E N T S   P R E S E N T ,   R U N   A T T A C H M E N T   S U B R O U T I N E
� 
���
� Z �
�
�����
� > �
�
�
� n �   2 ���
�� 
attc o  ������ 0 thismessage thisMessage
� J  ����  
� n 	 I  
������ 0 attachment_process    o  
���� 0 thismessage thisMessage �� o  ���� 0 n  ��  ��    f  	
��  ��  ��  
� m  ���                                                                                  emal  alis    F  Macintosh HD               �d�jH+   �k�Mail.app                                                        �%r�e�        ����  	                Applications    �e
�      ��^     �k�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  
� 	
	 l ����   / )ITEM HAS FINISHED! COUNT IT AS A SUCCESS!    � R I T E M   H A S   F I N I S H E D !   C O U N T   I T   A S   A   S U C C E S S !
 �� r  # [   o  ���� 0 successcount successCount m  ����  o      ���� 0 successcount successCount��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � m     �                                                                                  EVRN  alis    V  Macintosh HD               �d�jH+   �k�Evernote.app                                                   �<�W-�        ����  	                Applications    �e
�      �W�+     �k�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  � �� I .;����
�� .ascrcmnt****      � **** b  .7 m  .1 �  s u c c e s s C o u n t :   o  16���� 0 successcount successCount��  ��  �  l     ��������  ��  ��    l     ��������  ��  ��    l     ��������  ��  ��    !  l      ��"#��  " r l 
======================================
// ATTACHMENT SUBROUTINES 
=======================================
   # �$$ �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   A T T A C H M E N T   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
! %&% l     ����~��  �  �~  & '(' l     �})*�}  )  FOLDER EXISTS?   * �++  F O L D E R   E X I S T S ?( ,-, i   � �./. I      �|0�{�| 0 f_exists  0 1�z1 o      �y�y 0 exportfolder ExportFolder�z  �{  / Q     +2342 k    55 676 r    
898 l   :�x�w: I   �v;�u
�v .earsffdralis        afdr; m    �t
�t afdrcusr�u  �x  �w  9 o      �s�s 0 mypath myPath7 <=< e    >> c    ?@? o    �r�r 0 exportfolder ExportFolder@ m    �q
�q 
alis= A�pA r    BCB o    �o�o 0 exportfolder ExportFolderC o      �n�n 0 saveloc SaveLoc�p  3 R      �m�l�k
�m .ascrerr ****      � ****�l  �k  4 O   +DED I   *�j�iF
�j .corecrel****      � null�i  F �hGH
�h 
koclG m     !�g
�g 
cfolH �fI�e
�f 
prdtI K   " &JJ �dK�c
�d 
pnamK m   # $LL �MM * T e m p   E x p o r t   F r o m   M a i l�c  �e  E m    NN�                                                                                  MACS  alis    t  Macintosh HD               �d�jH+   �k�
Finder.app                                                      �����e        ����  	                CoreServices    �e
�      �B�     �k� �k� �k�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  - OPO l     �b�a�`�b  �a  �`  P QRQ l     �_ST�_  S  ATTACHMENT PROCESSING   T �UU * A T T A C H M E N T   P R O C E S S I N GR VWV i   � �XYX I      �^Z�]�^ 0 attachment_process  Z [\[ o      �\�\ 0 thismessage thisMessage\ ]�[] o      �Z�Z 0 n  �[  �]  Y O     �^_^ k    �`` aba l   �Y�X�W�Y  �X  �W  b cdc l   �Vef�V  e 0 *MAKE SURE TEXT ITEM DELIMITERS ARE DEFAULT   f �gg T M A K E   S U R E   T E X T   I T E M   D E L I M I T E R S   A R E   D E F A U L Td hih r    	jkj m    ll �mm  k n     non 1    �U
�U 
txdlo 1    �T
�T 
ascri pqp l  
 
�S�R�Q�S  �R  �Q  q rsr l  
 
�Ptu�P  t ) #TEMP FILES PROCESSED ON THE DESKTOP   u �vv F T E M P   F I L E S   P R O C E S S E D   O N   T H E   D E S K T O Ps wxw r   
 yzy c   
 {|{ l  
 }�O�N} b   
 ~~ l  
 ��M�L� I  
 �K��J
�K .earsffdralis        afdr� m   
 �I
�I afdmdesk�J  �M  �L   m    �� ��� , T e m p   E x p o r t   F r o m   M a i l :�O  �N  | m    �H
�H 
TEXTz o      �G�G 0 exportfolder ExportFolderx ��� r    ��� n   ��� I    �F��E�F 0 f_exists  � ��D� o    �C�C 0 exportfolder ExportFolder�D  �E  �  f    � o      �B�B 0 saveloc SaveLoc� ��� l   �A�@�?�A  �@  �?  � ��� l   �>���>  �  PROCESS THE ATTACHMENTS   � ��� . P R O C E S S   T H E   A T T A C H M E N T S� ��� r    $��� n   "��� 2    "�=
�= 
attc� o     �<�< 0 thismessage thisMessage� o      �;�;  0 theattachments theAttachments� ��� r   % (��� m   % &�:�:  � o      �9�9 0 attcount attCount� ��� X   ) ���8�� k   9 ��� ��� r   9 @��� b   9 >��� o   9 :�7�7 0 exportfolder ExportFolder� n  : =��� 1   ; =�6
�6 
pnam� o   : ;�5�5 0 theattachment theAttachment� o      �4�4 0 thefilename theFileName� ��� Q   A W���3� I  D N�2��
�2 .coresavenull���     obj � o   D E�1�1 0 theattachment theAttachment� �0��/
�0 
kfil� 4   F J�.�
�. 
file� o   H I�-�- 0 thefilename theFileName�/  � R      �,�+�*
�, .ascrerr ****      � ****�+  �*  �3  � ��� O   X p��� O  ^ o��� I  b n�)�(�
�) .EVRNadtnnull���     EVnn�(  � �'��&
�' 
EV21� 4   f j�%�
�% 
file� o   h i�$�$ 0 thefilename theFileName�&  � o   ^ _�#�# 0 n  � m   X [���                                                                                  EVRN  alis    V  Macintosh HD               �d�jH+   �k�Evernote.app                                                   �<�W-�        ����  	                Applications    �e
�      �W�+     �k�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  � ��� l  q q�"�!� �"  �!  �   � ��� l  q q����  �   SILENT DELETE OF TEMP FILE   � ��� 4 S I L E N T   D E L E T E   O F   T E M P   F I L E� ��� r   q ���� I  q ~���
� .earsffdralis        afdr� m   q t�
� afdmtrsh� ���
� 
from� m   w z�
� fldmfldu�  � o      �� 0 trash_folder trash_Folder� ��� I  � ����
� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� m   � ��� ���  m v  � n   � ���� 1   � ��
� 
strq� n   � ���� 1   � ��
� 
psxp� o   � ��� 0 thefilename theFileName� 1   � ��
� 
spac� n   � ���� 1   � ��
� 
strq� n   � ���� 1   � ��
� 
psxp� o   � ��� 0 trash_folder trash_Folder�  � ��� l  � �����  �  �  �  �8 0 theattachment theAttachment� o   , -��  0 theattachments theAttachments� ��� l  � ��
�	��
  �	  �  � ��� l  � �����  � " SILENT DELETE OF TEMP FOLDER   � ��� 8 S I L E N T   D E L E T E   O F   T E M P   F O L D E R� ��� r   � ���� n  � ���� I   � ����� 0 trashfolder  � ��� o   � ��� 0 saveloc SaveLoc�  �  �  f   � �� o      �� 0 success  � ��� l  � �� �����   ��  ��  �  _ m     ���                                                                                  emal  alis    F  Macintosh HD               �d�jH+   �k�Mail.app                                                        �%r�e�        ����  	                Applications    �e
�      ��^     �k�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  W ��� l     ��������  ��  ��  � ��� l     ������  � : 4SILENT DELETE OF TEMP FOLDER (THANKS MARTIN MICHEL!)   � ��� h S I L E N T   D E L E T E   O F   T E M P   F O L D E R   ( T H A N K S   M A R T I N   M I C H E L ! )� ��� i   � ���� I      ������� 0 trashfolder  � ���� o      ���� 0 saveloc SaveLoc��  ��  � Q     ����� k    ���    r     l   
���� c    
 l   ���� I   ����
�� .earsffdralis        afdr m    ��
�� afdrtrsh��  ��  ��   m    	��
�� 
utxt��  ��   o      ���� 0 trashfolderpath   	
	 r     I   ����
�� .sysonfo4asfe        file l   ���� c     o    ���� 0 saveloc SaveLoc m    ��
�� 
alis��  ��  ��   o      ���� 0 srcfolderinfo  
  r     n     1    ��
�� 
pnam o    ���� 0 srcfolderinfo   o      ���� 0 srcfoldername    r    $ n    " 1     "��
�� 
strq n      1     ��
�� 
psxp o    ���� 0 saveloc SaveLoc o      ���� 0 saveloc SaveLoc   r   % (!"! m   % &����  " o      ���� 0 counter    #$# T   ) f%% k   . a&& '(' Z   . I)*��+) =  . 1,-, o   . /���� 0 counter  - m   / 0����  * r   4 ;./. b   4 9010 b   4 7232 o   4 5���� 0 trashfolderpath  3 o   5 6���� 0 srcfoldername  1 m   7 844 �55  :/ o      ���� 0 destfolderpath  ��  + r   > I676 b   > G898 b   > E:;: b   > C<=< b   > A>?> o   > ?���� 0 trashfolderpath  ? o   ? @���� 0 srcfoldername  = m   A B@@ �AA   ; o   C D���� 0 counter  9 m   E FBB �CC  :7 o      ���� 0 destfolderpath  ( DED Q   J [FGHF r   M RIJI c   M PKLK o   M N���� 0 destfolderpath  L m   N O��
�� 
alisJ o      ���� 0 destfolderalias  G R      ������
�� .ascrerr ****      � ****��  ��  H  S   Z [E M��M r   \ aNON [   \ _PQP o   \ ]���� 0 counter  Q m   ] ^���� O o      ���� 0 counter  ��  $ RSR r   g nTUT n   g lVWV 1   j l��
�� 
strqW n   g jXYX 1   h j��
�� 
psxpY o   g h���� 0 destfolderpath  U o      ���� 0 destfolderpath  S Z[Z r   o x\]\ b   o v^_^ b   o t`a` b   o rbcb m   o pdd �ee  d i t t o  c o   p q���� 0 saveloc SaveLoca 1   r s��
�� 
spac_ o   t u���� 0 destfolderpath  ] o      ���� 0 command  [ fgf I  y ~��h��
�� .sysoexecTEXT���     TEXTh o   y z���� 0 command  ��  g iji l   ��kl��  k 9 3 this won't be executed if the ditto command errors   l �mm f   t h i s   w o n ' t   b e   e x e c u t e d   i f   t h e   d i t t o   c o m m a n d   e r r o r sj non r    �pqp b    �rsr m    �tt �uu  r m   - r  s o   � ����� 0 saveloc SaveLocq o      ���� 0 command  o vwv I  � ���x��
�� .sysoexecTEXT���     TEXTx o   � ����� 0 command  ��  w y��y L   � �zz m   � ���
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   � �{{ m   � ���
�� boovfals� |}| l     ��������  ��  ��  } ~~ l      ������  � t n 
======================================
// HTML CLEANUP SUBROUTINES 
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   H T M L   C L E A N U P   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 ��� l     ��������  ��  ��  � ��� l     ������  � $ HEADER STRIP (THANKS DOMINIK!)   � ��� < H E A D E R   S T R I P   ( T H A N K S   D O M I N I K ! )� ��� i   � ���� I      ������� 0 stripheader stripHeader� ��� o      ���� 0 
parasource 
paraSource� ���� o      ���� 0 myheaderlines myHeaderlines��  ��  � k     ��� ��� l     ��������  ��  ��  � ��� l     ������  � * $ FIND THE LAST NON-EMPTY HEADER LINE   � ��� H   F I N D   T H E   L A S T   N O N - E M P T Y   H E A D E R   L I N E� ��� r     ��� m     �� ���  � o      ���� 0 lastheaderline  � ��� r    ��� I   	�����
�� .corecnte****       ****� l   ������ o    ���� 0 myheaderlines myHeaderlines��  ��  ��  � o      ���� 0 n  � ��� V    %��� k     �� ��� r    ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 n  � o    ���� 0 myheaderlines myHeaderlines� o      ���� 0 lastheaderline  � ���� r     ��� \    ��� o    ���� 0 n  � m    ���� � o      ���� 0 n  ��  � l   ������ =    ��� o    ���� 0 lastheaderline  � m    �� ���  ��  ��  � ��� l  & &��������  ��  ��  � ��� l  & &������  �   COMPARE HEADER TO SOURCE   � ��� 2   C O M P A R E   H E A D E R   T O   S O U R C E� ��� r   & -��� l  & +������ I  & +�����
�� .corecnte****       ****� o   & '���� 0 
parasource 
paraSource��  ��  ��  � o      ���� 0 sourcelength  � ��� Y   . K�������� Z  8 F������� l  8 >����� =  8 >��� n   8 <��� 4   9 <�~�
�~ 
cobj� o   : ;�}�} 0 n  � o   8 9�|�| 0 
parasource 
paraSource� m   < =�� ���  ��  �  �  S   A B��  ��  �� 0 n  � m   1 2�{�{ � o   2 3�z�z 0 sourcelength  ��  � ��� l  L L�y�x�w�y  �x  �w  � ��� l  L L�v���v  �   STRIP OUT THE HEADERS   � ��� ,   S T R I P   O U T   T H E   H E A D E R S� ��� r   L _��� l  L Y��u�t� n   L Y��� 7  M Y�s��
�s 
cobj� l  Q U��r�q� [   Q U��� o   R S�p�p 0 n  � m   S T�o�o �r  �q  � o   V X�n�n 0 sourcelength  � o   L M�m�m 0 
parasource 
paraSource�u  �t  � o      �l�l  0 cutsourceitems cutSourceItems� ��� r   ` e��� n  ` c��� 1   a c�k
�k 
txdl� 1   ` a�j
�j 
ascr� o      �i�i 0 	olddelims 	oldDelims� ��� r   f k��� o   f g�h
�h 
ret � n     ��� 1   h j�g
�g 
txdl� 1   g h�f
�f 
ascr� ��� r   l u��� l  l s��e�d� c   l s��� o   l q�c�c  0 cutsourceitems cutSourceItems� m   q r�b
�b 
ctxt�e  �d  � o      �a�a 0 	cutsource 	cutSource� ��� r   v {   o   v w�`�` 0 	olddelims 	oldDelims n      1   x z�_
�_ 
txdl 1   w x�^
�^ 
ascr�  l  | |�]�\�[�]  �\  �[    L   | ~ o   | }�Z�Z 0 	cutsource 	cutSource 	�Y	 l   �X�W�V�X  �W  �V  �Y  � 

 l     �U�T�S�U  �T  �S    l     �R�R    BASE64 CHECK    �  B A S E 6 4   C H E C K  i   � � I      �Q�P�Q 0 base64_check base64_Check �O o      �N�N 0 mysource mySource�O  �P   k     L  r      m     �M
�M boovfals o      �L�L 0 base64detect base64Detect  r     m       �!! B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4 o      �K�K 0 base64msgstr base64MsgStr "#" r    $%$ m    	&& �'' $ C o n t e n t - T y p e :   t e x t% o      �J�J &0 base64contenttype base64ContentType# ()( r    *+* I   �I�H,
�I .sysooffslong    ��� null�H  , �G-.
�G 
psof- o    �F�F 0 base64msgstr base64MsgStr. �E/�D
�E 
psin/ o    �C�C 0 mysource mySource�D  + o      �B�B "0 base64msgoffset base64MsgOffset) 010 r    #232 I   !�A�@4
�A .sysooffslong    ��� null�@  4 �?56
�? 
psof5 o    �>�> &0 base64contenttype base64ContentType6 �=7�<
�= 
psin7 o    �;�; 0 mysource mySource�<  3 o      �:�: *0 base64contentoffset base64ContentOffset1 898 r   $ +:;: c   $ )<=< \   $ '>?> o   $ %�9�9 "0 base64msgoffset base64MsgOffset? o   % &�8�8 *0 base64contentoffset base64ContentOffset= m   ' (�7
�7 
doub; o      �6�6 0 base64offset base64Offset9 @A@ r   , 1BCB c   , /DED o   , -�5�5 0 base64offset base64OffsetE m   - .�4
�4 
nmbrC o      �3�3 0 	theoffset 	theOffsetA FGF Z   2 IHI�2�1H A  2 5JKJ o   2 3�0�0 0 	theoffset 	theOffsetK m   3 4�/�/ 2I Z  8 ELM�.�-L ?  8 ;NON o   8 9�,�, 0 	theoffset 	theOffsetO m   9 :�+�+��M r   > APQP m   > ?�*
�* boovtrueQ o      �)�) 0 base64detect base64Detect�.  �-  �2  �1  G R�(R L   J LSS o   J K�'�' 0 base64detect base64Detect�(   TUT l     �&�%�$�&  �%  �$  U VWV l     �#XY�#  X  BASE64 DECODE   Y �ZZ  B A S E 6 4   D E C O D EW [\[ i   � �]^] I      �"_�!�" 0 base64_decode base64_Decode_ `� ` o      �� 0 mysource mySource�   �!  ^ k     eaa bcb l     �de�  d , &USE TID TO QUICKLY ISOLATE BASE64 DATA   e �ff L U S E   T I D   T O   Q U I C K L Y   I S O L A T E   B A S E 6 4   D A T Ac ghg r     iji n    klk 1    �
� 
txdll 1     �
� 
ascrj o      �� 0 olddelim oldDelimh mnm r    opo m    qq �rr . C o n t e n t - T y p e :   t e x t / h t m lp n     sts 1    
�
� 
txdlt 1    �
� 
ascrn uvu r    wxw n    yzy 4   �{
� 
citm{ m    �� z o    �� 0 mysource mySourcex o      �� 0 
base64_raw 
base64_Rawv |}| r    ~~ b    ��� 1    �
� 
lnfd� 1    �
� 
lnfd n     ��� 1    �
� 
txdl� 1    �
� 
ascr} ��� r    -��� n    '��� 4  $ '��
� 
citm� m   % &�� � o    $�� 0 
base64_raw 
base64_Raw� o      �� 0 
base64_raw 
base64_Raw� ��� r   . 3��� m   . /�� ��� 
 - - - - -� n     ��� 1   0 2�
� 
txdl� 1   / 0�
� 
ascr� ��� r   4 B��� n   4 <��� 4  9 <�
�
�
 
citm� m   : ;�	�	 � o   4 9�� 0 
base64_raw 
base64_Raw� o      �� 0 	multihtml 	multiHTML� ��� r   C H��� o   C D�� 0 olddelim oldDelim� n     ��� 1   E G�
� 
txdl� 1   D E�
� 
ascr� ��� l  I I����  �  �  � ��� l  I I� ���   �  DECODE BASE64   � ���  D E C O D E   B A S E 6 4� ��� r   I ^��� I  I X�����
�� .sysoexecTEXT���     TEXT� b   I T��� b   I R��� m   I J�� ��� 
 e c h o  � l  J Q������ n   J Q��� 1   O Q��
�� 
strq� o   J O���� 0 	multihtml 	multiHTML��  ��  � m   R S�� ���  |   b a s e 6 4   - D��  � o      ���� 0 basehtml baseHTML� ��� l  _ _��������  ��  ��  � ���� L   _ e�� o   _ d���� 0 basehtml baseHTML��  \ ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  HTML FIX   � ���  H T M L   F I X� ��� i   � ���� I      ������� 0 htmlfix htmlFix� ��� o      ���� 0 	multihtml 	multiHTML� ��� o      ���� 0 theboundary theBoundary� ���� o      ���� 0 	mycontent 	myContent��  ��  � k    (�� ��� l     ��������  ��  ��  � ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 	olddelims 	oldDelims� ��� l   ������  � ' !set multiHTML to evHTML as string   � ��� B s e t   m u l t i H T M L   t o   e v H T M L   a s   s t r i n g� ��� l   ��������  ��  ��  � ��� l   ������  � ! TEST FOR / STRIP OUT HEADER   � ��� 6 T E S T   F O R   /   S T R I P   O U T   H E A D E R� ��� r    ��� n    	��� 2   	��
�� 
cpar� o    ���� 0 	multihtml 	multiHTML� o      ���� 0 
parasource 
paraSource� ��� Z    9������� E    ��� n    ��� 4    ���
�� 
cobj� m    ���� � o    ���� 0 
parasource 
paraSource� m    �� ���  R e c e i v e d :� k    5�� ��� r    '��� l   %������ n    %��� 4   " %���
�� 
cobj� m   # $���� � o    "���� 0 
parasource 
paraSource��  ��  � o      ���� 0 myheaderlines myHeaderlines� ���� r   ( 5��� n  ( 3   I   ) 3������ 0 stripheader stripHeader  o   ) .���� 0 
parasource 
paraSource �� o   . /���� 0 myheaderlines myHeaderlines��  ��    f   ( )� o      ���� 0 	multihtml 	multiHTML��  ��  ��  �  l  : :��������  ��  ��   	 l  : :��
��  
  TRIM ENDING    �  T R I M   E N D I N G	  Z   : Y�� E   : = o   : ;���� 0 	multihtml 	multiHTML m   ; < �  < / h t m l > r   @ J n  @ H I   A H������  0 extractbetween extractBetween  o   A B���� 0 	multihtml 	multiHTML  m   B C �   . C o n t e n t - T y p e :   t e x t / h t m l !��! m   C D"" �##  < / h t m l >��  ��    f   @ A o      ���� 0 	multihtml 	multiHTML��   r   M Y$%$ n  M W&'& I   N W��(����  0 extractbetween extractBetween( )*) o   N O���� 0 	multihtml 	multiHTML* +,+ m   O P-- �.. . C o n t e n t - T y p e :   t e x t / h t m l, /��/ b   P S010 m   P Q22 �33  - -1 o   Q R���� 0 theboundary theBoundary��  ��  '  f   M N% o      ���� 0 	multihtml 	multiHTML 454 r   Z c676 n   Z ]898 2  [ ]��
�� 
cpar9 o   Z [���� 0 	multihtml 	multiHTML7 o      ���� 0 
parasource 
paraSource5 :;: l  d d��������  ��  ��  ; <=< l  d d��>?��  > - 'TEST FOR / STRIP OUT LEADING SEMI-COLON   ? �@@ N T E S T   F O R   /   S T R I P   O U T   L E A D I N G   S E M I - C O L O N= ABA Z   d �CD����C E   d nEFE n   d lGHG 4   i l��I
�� 
cobjI m   j k���� H o   d i���� 0 
parasource 
paraSourceF m   l mJJ �KK  ;D k   q �LL MNM r   q {OPO l  q yQ����Q n   q yRSR 4   v y��T
�� 
cobjT m   w x���� S o   q v���� 0 
parasource 
paraSource��  ��  P o      ���� 0 myheaderlines myHeaderlinesN UVU r   | �WXW n  | �YZY I   } ���[���� 0 stripheader stripHeader[ \]\ o   } ����� 0 
parasource 
paraSource] ^��^ o   � ����� 0 myheaderlines myHeaderlines��  ��  Z  f   | }X o      ���� 0 	multihtml 	multiHTMLV _��_ r   � �`a` n   � �bcb 2  � ���
�� 
cparc o   � ����� 0 	multihtml 	multiHTMLa o      ���� 0 
parasource 
paraSource��  ��  ��  B ded l  � ���������  ��  ��  e fgf l  � ���hi��  h H BTEST FOR EMPTY LINE / CLEAN SUBSEQUENT ENCODING INFO, IF NECESSARY   i �jj � T E S T   F O R   E M P T Y   L I N E   /   C L E A N   S U B S E Q U E N T   E N C O D I N G   I N F O ,   I F   N E C E S S A R Yg klk Z   �mn����m =  � �opo n   � �qrq 4   � ���s
�� 
cobjs m   � ����� r o   � ����� 0 
parasource 
paraSourcep m   � �tt �uu  n k   �vv wxw l  � ���yz��  y 4 .TEST FOR / STRIP OUT CONTENT-TRANSFER-ENCODING   z �{{ \ T E S T   F O R   /   S T R I P   O U T   C O N T E N T - T R A N S F E R - E N C O D I N Gx |}| Z   � �~����~ E   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource� m   � ��� ��� 2 C o n t e n t - T r a n s f e r - E n c o d i n g k   � ��� ��� r   � ���� l  � ������� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource��  ��  � o      ���� 0 myheaderlines myHeaderlines� ��� r   � ���� n  � ���� I   � �������� 0 stripheader stripHeader� ��� o   � ����� 0 
parasource 
paraSource� ���� o   � ����� 0 myheaderlines myHeaderlines��  ��  �  f   � �� o      �� 0 	multihtml 	multiHTML� ��~� r   � ���� n   � ���� 2  � ��}
�} 
cpar� o   � ��|�| 0 	multihtml 	multiHTML� o      �{�{ 0 
parasource 
paraSource�~  ��  ��  } ��� l  � ��z���z  � " TEST FOR / STRIP OUT CHARSET   � ��� 8 T E S T   F O R   /   S T R I P   O U T   C H A R S E T� ��y� Z   ����x�w� E   � ���� n   � ���� 4   � ��v�
�v 
cobj� m   � ��u�u � o   � ��t�t 0 
parasource 
paraSource� m   � ��� ���  c h a r s e t� k   ��� ��� r   � ���� l  � ���s�r� n   � ���� 4   � ��q�
�q 
cobj� m   � ��p�p � o   � ��o�o 0 
parasource 
paraSource�s  �r  � o      �n�n 0 myheaderlines myHeaderlines� ��� r   � ���� n  � ���� I   � ��m��l�m 0 stripheader stripHeader� ��� o   � ��k�k 0 
parasource 
paraSource� ��j� o   � ��i�i 0 myheaderlines myHeaderlines�j  �l  �  f   � �� o      �h�h 0 	multihtml 	multiHTML� ��g� r   ���� n   ���� 2  �f
�f 
cpar� o   � �e�e 0 	multihtml 	multiHTML� o      �d�d 0 
parasource 
paraSource�g  �x  �w  �y  ��  ��  l ��� l �c�b�a�c  �b  �a  � ��� l �`���`  � 4 .TEST FOR / STRIP OUT CONTENT-TRANSFER-ENCODING   � ��� \ T E S T   F O R   /   S T R I P   O U T   C O N T E N T - T R A N S F E R - E N C O D I N G� ��� Z  F���_�^� E  ��� n  ��� 4  �]�
�] 
cobj� m  �\�\ � o  �[�[ 0 
parasource 
paraSource� m  �� ��� 2 C o n t e n t - T r a n s f e r - E n c o d i n g� k   B�� ��� r   *��� l  (��Z�Y� n   (��� 4  %(�X�
�X 
cobj� m  &'�W�W � o   %�V�V 0 
parasource 
paraSource�Z  �Y  � o      �U�U 0 myheaderlines myHeaderlines� ��� r  +8��� n +6��� I  ,6�T��S�T 0 stripheader stripHeader� ��� o  ,1�R�R 0 
parasource 
paraSource� ��Q� o  12�P�P 0 myheaderlines myHeaderlines�Q  �S  �  f  +,� o      �O�O 0 	multihtml 	multiHTML� ��N� r  9B��� n  9<��� 2 :<�M
�M 
cpar� o  9:�L�L 0 	multihtml 	multiHTML� o      �K�K 0 
parasource 
paraSource�N  �_  �^  � ��� l GG�J�I�H�J  �I  �H  � ��� l GG�G���G  � " TEST FOR / STRIP OUT CHARSET   � ��� 8 T E S T   F O R   /   S T R I P   O U T   C H A R S E T� ��� Z  G|���F�E� E  GS��� n  GO��� 4  LO�D�
�D 
cobj� m  MN�C�C � o  GL�B�B 0 
parasource 
paraSource� m  OR   �  c h a r s e t� k  Vx  r  V` l V^�A�@ n  V^	 4  [^�?

�? 
cobj
 m  \]�>�> 	 o  V[�=�= 0 
parasource 
paraSource�A  �@   o      �<�< 0 myheaderlines myHeaderlines  r  an n al I  bl�;�:�; 0 stripheader stripHeader  o  bg�9�9 0 
parasource 
paraSource �8 o  gh�7�7 0 myheaderlines myHeaderlines�8  �:    f  ab o      �6�6 0 	multihtml 	multiHTML �5 r  ox n  or 2 pr�4
�4 
cpar o  op�3�3 0 	multihtml 	multiHTML o      �2�2 0 
parasource 
paraSource�5  �F  �E  �  l }}�1�0�/�1  �0  �/    l }}�.�.    CLEAN CONTENT    �    C L E A N   C O N T E N T !"! r  }�#$# o  }~�-�- 0 theboundary theBoundary$ n     %&% 1  ��,
�, 
txdl& 1  ~�+
�+ 
ascr" '(' r  ��)*) n  ��+,+ 2 ���*
�* 
citm, o  ���)�) 0 	multihtml 	multiHTML* o      �(�(  0 thesourceitems theSourceItems( -.- r  ��/0/ m  ��11 �22  0 n     343 1  ���'
�' 
txdl4 1  ���&
�& 
ascr. 565 r  ��787 c  ��9:9 o  ���%�%  0 thesourceitems theSourceItems: m  ���$
�$ 
ctxt8 o      �#�# 0 
theencoded 
theEncoded6 ;<; l ���"�!� �"  �!  �   < =>= r  ��?@? m  ��AA �BB  %@ n     CDC 1  ���
� 
txdlD 1  ���
� 
ascr> EFE r  ��GHG n  ��IJI 2 ���
� 
citmJ o  ���� 0 
theencoded 
theEncodedH o      ��  0 thesourceitems theSourceItemsF KLK r  ��MNM c  ��OPO b  ��QRQ m  ��SS �TT  & #R m  ��UU �VV  3 7 ;P m  ���
� 
TEXTN n     WXW 1  ���
� 
txdlX 1  ���
� 
ascrL YZY r  ��[\[ c  ��]^] o  ����  0 thesourceitems theSourceItems^ m  ���
� 
ctxt\ o      �� 0 
theencoded 
theEncodedZ _`_ l ������  �  �  ` aba r  ��cdc m  ��ee �ff  =d n     ghg 1  ���
� 
txdlh 1  ���
� 
ascrb iji r  ��klk n  ��mnm 2 ���
� 
citmn o  ���� 0 
theencoded 
theEncodedl o      ��  0 thesourceitems theSourceItemsj opo r  ��qrq m  ��ss �tt  %r n     uvu 1  ���
� 
txdlv 1  ���
� 
ascrp wxw r  ��yzy c  ��{|{ o  ���
�
  0 thesourceitems theSourceItems| m  ���	
�	 
ctxtz o      �� 0 
theencoded 
theEncodedx }~} l ������  �  �  ~ � r  ���� m  ���� ���  % "� n     ��� 1  ��
� 
txdl� 1  ���
� 
ascr� ��� r  ��� n  ��� 2 �
� 
citm� o  �� 0 
theencoded 
theEncoded� o      � �   0 thesourceitems theSourceItems� ��� r  ��� m  �� ���  = "� n     ��� 1  ��
�� 
txdl� 1  ��
�� 
ascr� ��� r  "��� c   ��� o  ����  0 thesourceitems theSourceItems� m  ��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ##��������  ��  ��  � ��� r  #2��� b  #.��� m  #&�� ���  %� l &-������ I &-�����
�� .sysontocTEXT       shor� m  &)���� ��  ��  ��  � n     ��� 1  /1��
�� 
txdl� 1  ./��
�� 
ascr� ��� r  3>��� n  38��� 2 48��
�� 
citm� o  34���� 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  ?F��� m  ?B�� ���  � n     ��� 1  CE��
�� 
txdl� 1  BC��
�� 
ascr� ��� r  GR��� c  GP��� o  GL����  0 thesourceitems theSourceItems� m  LO��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l SS��������  ��  ��  � ��� r  SZ��� m  SV�� ���  % %� n     ��� 1  WY��
�� 
txdl� 1  VW��
�� 
ascr� ��� r  [f��� n  [`��� 2 \`��
�� 
citm� o  [\���� 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  gn��� m  gj�� ���  %� n     ��� 1  km��
�� 
txdl� 1  jk��
�� 
ascr� ��� r  oz��� c  ox��� o  ot����  0 thesourceitems theSourceItems� m  tw��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l {{��������  ��  ��  � ��� r  {���� b  {���� m  {~�� ���  %� l ~������� I ~������
�� .sysontocTEXT       shor� m  ~����� 
��  ��  ��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � � � r  �� m  �� �  % 0 A n      1  ����
�� 
txdl 1  ����
�� 
ascr   r  ��	
	 n  �� 2 ����
�� 
citm o  ������ 0 
theencoded 
theEncoded
 o      ����  0 thesourceitems theSourceItems  r  �� m  �� �   n      1  ����
�� 
txdl 1  ����
�� 
ascr  r  �� c  �� o  ������  0 thesourceitems theSourceItems m  ����
�� 
ctxt o      ���� 0 
theencoded 
theEncoded  l ����������  ��  ��    r  ��  m  ��!! �""  % 0 9  n     #$# 1  ����
�� 
txdl$ 1  ����
�� 
ascr %&% r  ��'(' n  ��)*) 2 ����
�� 
citm* o  ������ 0 
theencoded 
theEncoded( o      ����  0 thesourceitems theSourceItems& +,+ r  ��-.- m  ��// �00  . n     121 1  ����
�� 
txdl2 1  ����
�� 
ascr, 343 r  ��565 c  ��787 o  ������  0 thesourceitems theSourceItems8 m  ����
�� 
ctxt6 o      ���� 0 
theencoded 
theEncoded4 9:9 l ����������  ��  ��  : ;<; r  �=>= m  ��?? �@@  % C 2 % A 0> n     ABA 1  ���
�� 
txdlB 1  ����
�� 
ascr< CDC r  EFE n  GHG 2 ��
�� 
citmH o  ���� 0 
theencoded 
theEncodedF o      ����  0 thesourceitems theSourceItemsD IJI r  KLK m  MM �NN  & n b s p ;L n     OPO 1  ��
�� 
txdlP 1  ��
�� 
ascrJ QRQ r  "STS c   UVU o  ����  0 thesourceitems theSourceItemsV m  ��
�� 
ctxtT o      ���� 0 
theencoded 
theEncodedR WXW l ##��������  ��  ��  X YZY r  #*[\[ m  #&]] �^^  % 2 0\ n     _`_ 1  ')��
�� 
txdl` 1  &'��
�� 
ascrZ aba r  +6cdc n  +0efe 2 ,0��
�� 
citmf o  +,���� 0 
theencoded 
theEncodedd o      ����  0 thesourceitems theSourceItemsb ghg r  7>iji m  7:kk �ll   j n     mnm 1  ;=��
�� 
txdln 1  :;��
�� 
ascrh opo r  ?Jqrq c  ?Hsts o  ?D����  0 thesourceitems theSourceItemst m  DG��
�� 
ctxtr o      ���� 0 
theencoded 
theEncodedp uvu l KK��������  ��  ��  v wxw r  KVyzy l KR{����{ I KR��|��
�� .sysontocTEXT       shor| m  KN���� 
��  ��  ��  z n     }~} 1  SU��
�� 
txdl~ 1  RS��
�� 
ascrx � r  Wb��� n  W\��� 2 X\��
�� 
citm� o  WX���� 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  cj��� m  cf�� ���  � n     ��� 1  gi��
�� 
txdl� 1  fg��
�� 
ascr� ��� r  kv��� c  kt��� o  kp����  0 thesourceitems theSourceItems� m  ps��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ww��������  ��  ��  � ��� r  w~��� m  wz�� ���  =� n     ��� 1  {}��
�� 
txdl� 1  z{�
� 
ascr� ��� r  ���� n  ���� 2 ���~
�~ 
citm� o  ��}�} 0 
theencoded 
theEncoded� o      �|�|  0 thesourceitems theSourceItems� ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  6 1 ;� m  ���{
�{ 
TEXT� n     ��� 1  ���z
�z 
txdl� 1  ���y
�y 
ascr� ��� r  ����� c  ����� o  ���x�x  0 thesourceitems theSourceItems� m  ���w
�w 
ctxt� o      �v�v 0 
theencoded 
theEncoded� ��� l ���u�t�s�u  �t  �s  � ��� r  ����� m  ���� ���  $� n     ��� 1  ���r
�r 
txdl� 1  ���q
�q 
ascr� ��� r  ����� n  ����� 2 ���p
�p 
citm� o  ���o�o 0 
theencoded 
theEncoded� o      �n�n  0 thesourceitems theSourceItems� ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  3 6 ;� m  ���m
�m 
TEXT� n     ��� 1  ���l
�l 
txdl� 1  ���k
�k 
ascr� ��� r  ����� c  ����� o  ���j�j  0 thesourceitems theSourceItems� m  ���i
�i 
ctxt� o      �h�h 0 
theencoded 
theEncoded� ��� l ���g�f�e�g  �f  �e  � ��� r  ����� m  ���� ���  '� n     ��� 1  ���d
�d 
txdl� 1  ���c
�c 
ascr� ��� r  ����� n  ����� 2 ���b
�b 
citm� o  ���a�a 0 
theencoded 
theEncoded� o      �`�`  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  & a p o s ;� n     ��� 1  ���_
�_ 
txdl� 1  ���^
�^ 
ascr� ��� r  ����� c  ����� o  ���]�]  0 thesourceitems theSourceItems� m  ���\
�\ 
ctxt� o      �[�[ 0 
theencoded 
theEncoded� ��� l ���Z�Y�X�Z  �Y  �X  � ��� r  ���� m  ��� �    "� n      1  �W
�W 
txdl 1  �V
�V 
ascr�  r   n   2 �U
�U 
citm o  �T�T 0 
theencoded 
theEncoded o      �S�S  0 thesourceitems theSourceItems 	
	 r   m   �  \ " n      1  �R
�R 
txdl 1  �Q
�Q 
ascr
  r  & c  $ o   �P�P  0 thesourceitems theSourceItems m   #�O
�O 
ctxt o      �N�N 0 
theencoded 
theEncoded  l ''�M�L�K�M  �L  �K    r  ', o  '(�J�J 0 	olddelims 	oldDelims n      1  )+�I
�I 
txdl 1  ()�H
�H 
ascr   l --�G�F�E�G  �F  �E    !"! r  -;#$# n -9%&% I  .9�D'�C�D  0 extractbetween extractBetween' ()( o  ./�B�B 0 
theencoded 
theEncoded) *+* m  /2,, �--  < / h e a d >+ .�A. m  25// �00  < / h t m l >�A  �C  &  f  -.$ o      �@�@ 0 trimhtml trimHTML" 121 l <<�?�>�=�?  �>  �=  2 343 r  <?565 o  <=�<�< 0 	mycontent 	myContent6 o      �;�; 0 thehtml theHTML4 787 l @@�:�9�8�:  �9  �8  8 9:9 Q  @&;<�7; k  C== >?> r  CJ@A@ m  CD�6
�6 boovfalsA o      �5�5  0 decode_success decode_Success? BCB l KK�4�3�2�4  �3  �2  C DED l KK�1FG�1  F  
UTF-8 CONV   G �HH  U T F - 8   C O N VE IJI r  K^KLK I K\�0M�/
�0 .sysoexecTEXT���     TEXTM b  KXNON b  KTPQP m  KNRR �SS 
 e c h o  Q n  NSTUT 1  OS�.
�. 
strqU o  NO�-�- 0 trimhtml trimHTMLO m  TWVV �WW $   |   i c o n v   - t   U T F - 8  �/  L o      �,�,  0 newencodedtext NewEncodedTextJ XYX r  _fZ[Z n  _d\]\ 1  `d�+
�+ 
strq] o  _`�*�*  0 newencodedtext NewEncodedText[ o      �)�) 0 the_utf8text the_UTF8TextY ^_^ l gg�(�'�&�(  �'  �&  _ `a` l gg�%bc�%  b  URL DECODE CONVERSION   c �dd * U R L   D E C O D E   C O N V E R S I O Na efe r  gvghg c  gtiji b  gpklk b  glmnm m  gjoo �pp ^ p h p   - r   " e c h o   u t f 8 _ e n c o d e ( u r l d e c o d e ( u t f 8 _ d e c o d e (n o  jk�$�$ 0 the_utf8text the_UTF8Textl m  loqq �rr 
 ) ) ) ; "j m  ps�#
�# 
ctxth o      �"�" "0 thedecodescript theDecodeScriptf sts r  w~uvu I w|�!w� 
�! .sysoexecTEXT���     TEXTw o  wx�� "0 thedecodescript theDecodeScript�   v o      �� 0 
thedecoded 
theDecodedt xyx l ����  �  �  y z{z l �|}�  | 2 ,FIX FOR APOSTROPHE / PERCENT / EQUALS ISSUES   } �~~ X F I X   F O R   A P O S T R O P H E   /   P E R C E N T   /   E Q U A L S   I S S U E S{ � r  ���� m  ��� ���  & a p o s ;� n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� n  ����� 2 ���
� 
citm� o  ���� 0 
thedecoded 
theDecoded� o      ��  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  '� n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� c  ����� o  ����  0 thesourceitems theSourceItems� m  ���
� 
ctxt� o      �� 0 
thedecoded 
theDecoded� ��� l ������  �  �  � ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  3 7 ;� m  ���
� 
TEXT� n     ��� 1  ���
� 
txdl� 1  ���

�
 
ascr� ��� r  ����� n  ����� 2 ���	
�	 
citm� o  ���� 0 
thedecoded 
theDecoded� o      ��  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  %� n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� c  ����� o  ����  0 thesourceitems theSourceItems� m  ���
� 
ctxt� o      �� 0 
thedecoded 
theDecoded� ��� l ���� ���  �   ��  � ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  6 1 ;� m  ����
�� 
TEXT� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
thedecoded 
theDecoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  =� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ���� c  ���� o  � ����  0 thesourceitems theSourceItems� m   ��
�� 
ctxt� o      ���� 0 
thedecoded 
theDecoded� ��� l ��������  ��  ��  � ��� l ������  �  RETURN THE VALUE   � ���   R E T U R N   T H E   V A L U E� ��� r  ��� o  ���� 0 
thedecoded 
theDecoded� o      ���� 0 	finalhtml 	finalHTML� ��� r  ��� m  ��
�� boovtrue� o      ����  0 decode_success decode_Success� ���� L  �� o  ���� 0 	finalhtml 	finalHTML��  < R      ������
�� .ascrerr ****      � ****��  ��  �7  : ���� l ''��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � l f 
======================================
// GROWL SUBROUTINES
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   G R O W L   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     ��������  ��  ��  � ��� l     �� ��     CHECK FOR GROWL     �   C H E C K   F O R   G R O W L  �  i   � � I      �������� 0 growl_check Growl_Check��  ��   Z     7���� I     ��	���� 0 appisrunning appIsRunning	 
��
 m     � 
 G r o w l��  ��   k   	 3  r   	  m   	 
��
�� boovtrue o      ���� 0 growl_running growl_Running �� O    3 k    2  r     J      m     � $ I m p o r t   T o   E v e r n o t e   m    !! �"" ( S u c c e s s   N o t i f i c a t i o n  #��# m    $$ �%% ( F a i l u r e   N o t i f i c a t i o n��   o      ���� .0 allnotificationsfiles allNotificationsFiles &'& r    $()( J    "** +,+ m    -- �.. $ I m p o r t   T o   E v e r n o t e, /0/ m    11 �22 ( S u c c e s s   N o t i f i c a t i o n0 3��3 m     44 �55 ( F a i l u r e   N o t i f i c a t i o n��  ) o      ���� 60 enablednotificationsfiles enabledNotificationsFiles' 6��6 I  % 2����7
�� .registernull��� ��� null��  7 ��89
�� 
appl8 l 	 ' (:����: m   ' (;; �<< , A p p l e   M a i l   t o   E v e r n o t e��  ��  9 ��=>
�� 
anot= l 
 ) *?����? o   ) *���� .0 allnotificationsfiles allNotificationsFiles��  ��  > ��@A
�� 
dnot@ l 
 + ,B����B o   + ,���� 60 enablednotificationsfiles enabledNotificationsFiles��  ��  A ��C��
�� 
iappC m   - .DD �EE  M a i l��  ��   m    FF�                                                                                  GRRR  alis    H  Macintosh HD               �d�jH+   �k�	Growl.app                                                      &U Ό�        ����  	                Applications    �e
�      Ό�d     �k�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  ��  ��   GHG l     ��������  ��  ��  H IJI l     ��KL��  K 1 +ANNOUNCE THE COUNT OF TOTAL ITEMS TO EXPORT   L �MM V A N N O U N C E   T H E   C O U N T   O F   T O T A L   I T E M S   T O   E X P O R TJ NON i   � �PQP I      ��R���� 0 process_items process_ItemsR STS o      ���� 0 itemnum itemNumT U��U o      ���� 0 attnum attNum��  ��  Q k     �VV WXW r     YZY m     [[ �\\  Z o      ���� 0 	attplural 	attPluralX ]^] Z    _`a��_ =    bcb o    ���� 0 attnum attNumc m    ����  ` r   
 ded m   
 ff �gg  N oe o      ���� 0 attnum attNuma hih ?    jkj o    ���� 0 attnum attNumk m    ���� i l��l r    mnm m    oo �pp  sn o      ���� 0 	attplural 	attPlural��  ��  ^ q��q l   �rstr O    �uvu Z   " �wx����w =  " )yzy o   " '���� 0 growl_running growl_Runningz m   ' (��
�� boovtruex k   , �{{ |}| r   , 1~~ c   , /��� l  , -������ o   , -���� 0 itemnum itemNum��  ��  � m   - .��
�� 
nmbr o      ���� 0 plural_test Plural_Test} ���� Z   2 ������� ?  2 5��� o   2 3���� 0 plural_test Plural_Test� m   3 4���� � O   8 `��� I  < _�����
�� .notifygrnull��� ��� null��  � ����
�� 
name� l 	 > ?������ m   > ?�� ��� $ I m p o r t   T o   E v e r n o t e��  ��  � ����
�� 
titl� l 	 @ A������ m   @ A�� ��� 4 I m p o r t   T o   E v e r n o t e   S t a r t e d��  ��  � ����
�� 
desc� b   B O��� b   B M��� b   B K��� b   B I��� b   B G��� b   B E��� m   B C�� ���  N o w   P r o c e s s i n g  � o   C D���� 0 itemnum itemNum� m   E F�� ���    I t e m s   w i t h  � o   G H���� 0 attnum attNum� l 	 I J������ m   I J�� ���    a t t a c h m e n t��  ��  � o   K L���� 0 	attplural 	attPlural� m   M N�� ���  .� ����
�� 
appl� l 	 P S������ m   P S�� ��� , A p p l e   M a i l   t o   E v e r n o t e��  ��  � �����
�� 
iapp� m   V Y�� ���  M a i l��  � m   8 9���                                                                                  GRRR  alis    H  Macintosh HD               �d�jH+   �k�	Growl.app                                                      &U Ό�        ����  	                Applications    �e
�      Ό�d     �k�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  � O   c ���� k   g ��� ��� I  g ������
�� .notifygrnull��� ��� null��  � ����
�� 
name� l 	 i l������ m   i l�� ��� $ I m p o r t   T o   E v e r n o t e��  ��  � ����
�� 
titl� l 	 m p������ m   m p�� ��� 4 I m p o r t   T o   E v e r n o t e   S t a r t e d��  ��  � ����
�� 
desc� b   q ���� b   q ���� b   q ���� b   q |��� b   q z��� b   q v��� m   q t�� ���  N o w   P r o c e s s i n g  � o   t u�� 0 itemnum itemNum� m   v y�� ���    I t e m   W i t h  � o   z {�~�~ 0 attnum attNum� l 	 | ��}�|� m   | �� ���    A t t a c h m e n t�}  �|  � o   � ��{�{ 0 	attplural 	attPlural� m   � ��� ���  .� �z��
�z 
appl� l 	 � ���y�x� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e�y  �x  � �w��v
�w 
iapp� m   � ��� ���  M a i l�v  � ��u� l  � ��t�s�r�t  �s  �r  �u  � m   c d���                                                                                  GRRR  alis    H  Macintosh HD               �d�jH+   �k�	Growl.app                                                      &U Ό�        ����  	                Applications    �e
�      Ό�d     �k�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  ��  ��  v m    ���                                                                                  MACS  alis    t  Macintosh HD               �d�jH+   �k�
Finder.app                                                      �����e        ����  	                CoreServices    �e
�      �B�     �k� �k� �k�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  s  FINDER   t ���  F I N D E R��  O ��� l     �q�p�o�q  �p  �o  � ��� l     �n���n  �  GROWL RESULTS   � ���  G R O W L   R E S U L T S� ��� i   � ���� I      �m��l�m 0 growl_growler growl_Growler� ��� o      �k�k 0 growl_running growl_Running� ��� o      �j�j 0 successcount successCount� ��i� o      �h�h 0 errnum errNum�i  �l  � Z     ����g�f� =    ��� o     �e�e 0 growl_running growl_Running� m    �d
�d boovtrue� k    ��� � � O    � k   
 �  l  
 
�c�c     GROWL FAILURE FOR CANCEL    � 2   G R O W L   F A I L U R E   F O R   C A N C E L 	
	 Z  
 (�b�a =  
  o   
 �`�` 0 errnum errNum m    �_�_�� O   $ I   #�^�]
�^ .notifygrnull��� ��� null�]   �\
�\ 
name l 	  �[�Z m     � ( F a i l u r e   N o t i f i c a t i o n�[  �Z   �Y
�Y 
titl l 	  �X�W m     �  U s e r   C a n c e l l e d�X  �W   �V
�V 
desc l 	  �U�T m     �   " F a i l e d   t o   e x p o r t !�U  �T   �S!"
�S 
appl! m    ## �$$ , A p p l e   M a i l   t o   E v e r n o t e" �R%�Q
�R 
iapp% m    && �''  M a i l�Q   m    ((�                                                                                  GRRR  alis    H  Macintosh HD               �d�jH+   �k�	Growl.app                                                      &U Ό�        ����  	                Applications    �e
�      Ό�d     �k�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �b  �a  
 )*) l  ) )�P�O�N�P  �O  �N  * +,+ l  ) )�M�L�K�M  �L  �K  , -.- l  ) )�J/0�J  /   GROWL FAILURE   0 �11    G R O W L   F A I L U R E. 232 r   ) .454 c   ) ,676 l  ) *8�I�H8 o   ) *�G�G 0 successcount successCount�I  �H  7 m   * +�F
�F 
nmbr5 o      �E�E 0 plural_test Plural_Test3 9�D9 Z   / �:;<�C: =  / 2=>= o   / 0�B�B 0 plural_test Plural_Test> m   0 1�A�A��; I  5 L�@�??
�@ .notifygrnull��� ��� null�?  ? �>@A
�> 
name@ l 	 7 8B�=�<B m   7 8CC �DD ( F a i l u r e   N o t i f i c a t i o n�=  �<  A �;EF
�; 
titlE l 	 9 <G�:�9G m   9 <HH �II  I m p o r t   F a i l u r e�:  �9  F �8JK
�8 
descJ m   = @LL �MM @ N o   I t e m s   S e l e c t e d   I n   A p p l e   M a i l !K �7NO
�7 
applN m   A DPP �QQ , A p p l e   M a i l   t o   E v e r n o t eO �6R�5
�6 
iappR m   E HSS �TT  M a i l�5  < UVU =  O RWXW o   O P�4�4 0 plural_test Plural_TestX m   P Q�3�3  V YZY k   U p[[ \]\ I  U n�2�1^
�2 .notifygrnull��� ��� null�1  ^ �0_`
�0 
name_ l 	 W Za�/�.a m   W Zbb �cc ( F a i l u r e   N o t i f i c a t i o n�/  �.  ` �-de
�- 
titld l 	 [ ^f�,�+f m   [ ^gg �hh  I m p o r t   F a i l u r e�,  �+  e �*ij
�* 
desci m   _ bkk �ll 8 N o   I t e m s   E x p o r t e d   F r o m   M a i l !j �)mn
�) 
applm m   c foo �pp , A p p l e   M a i l   t o   E v e r n o t en �(q�'
�( 
iappq m   g jrr �ss  M a i l�'  ] tut l  o o�&�%�$�&  �%  �$  u vwv l  o o�#�"�!�#  �"  �!  w x� x l  o o�yz�  y   GROWL SUCCESS   z �{{    G R O W L   S U C C E S S�   Z |}| =  s v~~ o   s t�� 0 plural_test Plural_Test m   t u�� } ��� k   y ��� ��� I  y ����
� .notifygrnull��� ��� null�  � ���
� 
name� l 	 { ~���� m   { ~�� ��� ( S u c c e s s   N o t i f i c a t i o n�  �  � ���
� 
titl� l 	  ����� m    ��� ���  I m p o r t   S u c c e s s�  �  � ���
� 
desc� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� , S u c c e s s f u l l y   E x p o r t e d  � o   � ��� 0 itemnum itemNum� l 	 � ����� m   � ��� ���    I t e m   t o   t h e  �  �  � o   � ��� 0 
evnotebook 
EVnotebook� m   � ��� ��� *   N o t e b o o k   i n   E v e r n o t e� ���
� 
appl� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e� ���
� 
iapp� m   � ��� ���  M a i l�  � ��� l  � ����
�  �  �
  � ��� l  � ��	���	  �  �  � ��� l  � �����  �   GROWL SUCCESS   � ���    G R O W L   S U C C E S S�  � ��� ?  � ���� o   � ��� 0 plural_test Plural_Test� m   � ��� � ��� k   � ��� ��� I  � ��� �
� .notifygrnull��� ��� null�   � ����
�� 
name� l 	 � ������� m   � ��� ��� ( S u c c e s s   N o t i f i c a t i o n��  ��  � ����
�� 
titl� l 	 � ������� m   � ��� ���  I m p o r t   S u c c e s s��  ��  � ����
�� 
desc� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� , S u c c e s s f u l l y   E x p o r t e d  � o   � ����� 0 itemnum itemNum� l 	 � ������� m   � ��� ���    I t e m s   t o   t h e  ��  ��  � o   � ����� 0 
evnotebook 
EVnotebook� m   � ��� ��� *   N o t e b o o k   i n   E v e r n o t e� ����
�� 
appl� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e� �����
�� 
iapp� m   � ��� ���  M a i l��  � ���� l  � ���������  ��  ��  ��  �  �C  �D   m    ���                                                                                  GRRR  alis    H  Macintosh HD               �d�jH+   �k�	Growl.app                                                      &U Ό�        ����  	                Applications    �e
�      Ό�d     �k�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��    ���� r   � ���� m   � ��� ���  0� o      ���� 0 itemnum itemNum��  �g  �f  � ���� l     ��������  ��  ��  ��       5���   ; L ]�� n s� { � � � �� �� � � � �� � � � � ������������������������� ��  � 3��������������������������������������������������������������������������������������������������������  0 tagging_switch tagging_Switch�� 0 
evnotebook 
EVnotebook�� 0 
defaulttag 
defaultTag�� 0 html_switch HTML_Switch�� 0 successcount successCount�� 0 growl_running growl_Running�� 0 mytitle myTitle�� 0 themessages theMessages�� 0 thismessage thisMessage�� 0 itemnum itemNum�� 0 attnum attNum�� 0 errnum errNum�� 0 usertag userTag�� 0 evtag EVTag�� 0 	multihtml 	multiHTML��  0 thesourceitems theSourceItems�� 0 mysource mySource��  0 decode_success decode_Success�� 0 	finalhtml 	finalHTML�� 0 	myheaders 	myHeaders�� *0 mysource_paragraphs mysource_Paragraphs�� 0 
base64_raw 
base64_Raw�� 0 basehtml baseHTML�� 0 
parasource 
paraSource��  0 cutsourceitems cutSourceItems�� 0 allcc allCC�� 0 appisrunning appIsRunning�� 0 
item_check 
item_Check�� 0 
item_count 
item_Count��  0 tagging_dialog tagging_Dialog�� $0 default_notebook default_Notebook�� 0 tag_list Tag_List�� 0 	tag_check 	Tag_Check�� 0 notebook_list Notebook_List��  0 extractbetween extractBetween�� 0 simple_sort  �� 0 stripcid stripCID�� 0 	trimstart 	trimStart�� 0 mail_process mail_Process�� 0 make_evernote make_Evernote�� 0 f_exists  �� 0 attachment_process  �� 0 trashfolder  �� 0 stripheader stripHeader�� 0 base64_check base64_Check�� 0 base64_decode base64_Decode�� 0 htmlfix htmlFix�� 0 growl_check Growl_Check�� 0 process_items process_Items�� 0 growl_growler growl_Growler
�� .aevtoappnull  �   � ****��  � ������  ��  � ������  ��  � ������  ��  � ������  ��  � ����������� 0 appisrunning appIsRunning�� ����   ���� 0 appname appName��   ���� 0 appname appName ����
�� 
prcs
�� 
pnam�� � 	*�-�,�U� ���������� 0 
item_check 
item_Check��  ��   ���� 0 mypath myPath ����������
�� afdrcusr
�� .earsffdralis        afdr
�� 
slct��  ��  �� #�j E�O�  *�,Ec  W X  hU� ��&�������� 0 
item_count 
item_Count�� ����   ���� 0 themessages theMessages��   ������ 0 themessages theMessages�� 0 
themessage 
theMessage @����
� .corecnte****       ****
� 
kocl
� 
cobj
� 
attc�� B� >�j Ec  	OjEc  
O '�[��l kh b  
��,j Ec  
[OY��U� �R��	
��  0 tagging_dialog tagging_Dialog�  �  	 ������ 0 dialogresult  � 0 	userinput 	userInput� 0 	buttonsel 	ButtonSel� 0 	thedelims 	theDelims� 0 thetags theTags
  `c�g��ptw�{�~��}��|��{�z�y�x�w�v�u��t�s�r�q��p
� 
appr
� 
dtxt
� 
btns
� 
dflt
�~ 
cbtn
�} 
disp
�| 
in B
�{ .earsffdralis        afdr
�z .sysorpthalis        TEXT�y 
�x .sysodlogaskr        TEXT
�w 
rslt
�v 
ttxt
�u 
bhit�t   �o�n�m
�o 
errn�n���m  �s���r 0 tag_list Tag_List�q 0 	tag_check 	Tag_Check�p 0 notebook_list Notebook_List� � L��%���b  ����mv�������a j l a  O_ E�O�a ,E�O�a ,E�Oa kvE�W X  a Ec  O)��l+ E�OjvEc  O)�k+ Ec  O�a   )j+ Ec  Y h� �l��k�j�i�l $0 default_notebook default_Notebook�k  �j   �h�h *0 get_defaultnotebook get_defaultNotebook �g�f��e�d�c
�g 
EVnb  
�f 
EVnd
�e 
cobj
�d 
pnam
�c 
ctxt�i 1� -*�-�[�,\Ze81E�Ob  �  ��k/�,�&Ec  Y hU� �b�a�`�_�b 0 tag_list Tag_List�a �^�^   �]�\�] 0 	userinput 	userInput�\ 0 	thedelims 	theDelims�`   �[�Z�Y�X�W�V�U�[ 0 	userinput 	userInput�Z 0 	thedelims 	theDelims�Y 0 	olddelims 	oldDelims�X 0 thelist theList�W 0 adelim aDelim�V 0 newlist newList�U 0 anitem anItem �T�S�R�Q�P�O
�T 
ascr
�S 
txdl
�R 
kocl
�Q 
cobj
�P .corecnte****       ****
�O 
citm�_ V��,E�O�kvE�O ?�[��l kh ���,FOjvE�O �[��l kh ���-%E�[OY��O�E�[OY��O���,FO�� �NP�M�L�K�N 0 	tag_check 	Tag_Check�M �J�J   �I�I 0 thetags theTags�L   �H�G�F�E�H 0 thetags theTags�G 0 	finaltags 	finalTags�F 0 thetag theTag�E 0 maketag makeTag ��D�C�B�As�@�?�>�=�<�;�:�9�8
�D 
kocl
�C 
cobj
�B .corecnte****       ****
�A 
cha 
�@ 
ctxt
�? 
EVtg
�> kfrmname
�= .coredoexnull���     ****
�< 
prdt
�; 
pnam
�: .corecrel****      � null�9  �8  �K s� ljvE�O d�[��l kh ��k/�  �[�\[Zl\62�&E�Y hO*��0j 	 " ���ll E�O��6FW X  hY 	*�/�6F[OY��UO�� �7��6�5�4�7 0 notebook_list Notebook_List�6  �5   �3�2�1�0�/�.�-�3 "0 listofnotebooks listOfNotebooks�2 0 evnotebooks EVNotebooks�1 "0 currentnotebook currentNotebook�0 *0 currentnotebookname currentNotebookName�/  0 folders_sorted Folders_sorted�. 0 selnotebook SelNotebook�- 0 	userinput 	userInput �,�+�*�)�(�'�&�%��$��#��"��!� ���
�, .miscactvnull��� ��� null
�+ 
EVnb
�* 
kocl
�) 
cobj
�( .corecnte****       ****
�' 
pnam�& 0 simple_sort  
�% 
appr
�$ 
prmp
�# 
okbt
�" 
cnbt�! 
�  .gtqpchltns    @   @ ns  
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt�4 �� |*j OjvE�O*�-E�O �[��l kh ��,E�O��6G[OY��O)�k+ E�O���������a  E�O�f   a a a l a ,E�O�Ec  Y ��k/Ec  U� �/����  0 extractbetween extractBetween� ��   ���� 0 
searchtext 
SearchText� 0 	starttext 	startText� 0 endtext endText�   ������� 0 
searchtext 
SearchText� 0 	starttext 	startText� 0 endtext endText� 0 tid  � 0 enditems endItems�  0 beginningtoend beginningToEnd ����
� 
ascr
� 
txdl
� 
citm
� 
ctxt� -��,E�O���,FO��i/�-E�O���,FO��k/�-E�O���,FO�� �
m�	���
 0 simple_sort  �	 ��   �� 0 my_list  �   ����� ����� 0 my_list  � 0 
index_list  � 0 sorted_list  � 0 low_item  �  0 i  �� 0 	this_item  �� 0 low_item_index   ��������
�� 
cobj
�� 
nmbr
�� 
ctxt� vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�� ����������� 0 stripcid stripCID�� ����   ���� 0 
imgstphtml 
imgstpHTML��   �������� 0 
imgstphtml 
imgstpHTML�� $0 thecommandstring theCommandString�� 0 	theresult 	theResult ������
�� 
strq
�� .sysoexecTEXT���     TEXT�� ��,%�%E�O�j E�O�� ������ !���� 0 	trimstart 	trimStart�� ��"�� "  ���� 0 str  ��    ���������� 0 str  �� 0 
whitespace 
whiteSpace�� 0 emsg eMsg�� 0 enum eNum! ��������������������#D��$��M
�� 
TEXT
�� 
cha �� 

�� kfrmID  
�� 
ret 
�� 
spac
�� 
tab �� 
�� 
ctxt��  # ������
�� 
errn���@��  �� 0 emsg eMsg$ ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� T E��&E�O)���0����vE�O % h���k/�[�\[Zl\Zi2E�[OY��O�W 	X 	 
�W X  )�l�%� ��^����%&���� 0 mail_process mail_Process�� ��'�� '  ���� 0 themessages theMessages��  % �������������������������������������������� 0 themessages theMessages�� 0 thismessage thisMessage�� 0 	mycontent 	myContent�� 0 	replyaddr 	ReplyAddr�� 0 	emaildate 	EmailDate�� 0 allrecipients allRecipients�� 0 allccs allCCs�� 0 torecipients toRecipients�� 0 allrecipient allRecipient�� 0 toname toName�� 0 toemail toEmail�� 0 
tocombined 
toCombined�� 0 ccrecipients ccRecipients�� 0 allcc allCC� 0 ccname ccName� 0 ccemail ccEmail� 0 
cccombined 
ccCombined� 0 therecipient theRecipient� 0 ex  � 0 msglink MsgLink� 0 theboundary theBoundary� "0 themessagestart theMessageStart� 0 themessageend theMessageEnd� 0 myheaderlines myHeaderlines� 0 myheaderline myHeaderline� 0 	cutsource 	cutSource� 0 evhtml evHTML� 0 the_template the_Template& A�}w�������������������->SUhnt��������������������GIKMOQS��� $0 default_notebook default_Notebook�  0 tagging_dialog tagging_Dialog
� 
kocl
� 
cobj
� .corecnte****       ****
� 
subj
� 
ctnt
� 
raso
� 
rpto
� 
rdrc
� 
trcp
� 
crcp
� 
pnam
� 
msng
� 
radd
� 
spac
� 
TEXT
� 
meid�  0 extractbetween extractBetween�  �  
� 
lnfd
� 
ret 
� 
cpar
� 
alhe
� 
ctxt� 0 stripheader stripHeader� � 0 make_evernote make_Evernote���)j+  O���b   �  
)j+ Y hO��[��l kh "��,Ec  O��,E�O��,Ec  O��,E�O��,E�O��k/�-E�O��k/�-E�O�E�O U�[��l kh �E�O�a ,E�O�a   
a E�Y hO�a ,E�O�_ %a %�%a %E�O��%a &E�[OY��Oa E�O�jv a [�[��l kh a E�O�a ,E�O�a   
a E�Y hO�a ,E�O�_ %a %�%a %E^ O�] %a &E�[OY��Y hOa E^ Oa E^ Oa E^ O Ja  E^ O��k/a ,E^ Oa !�a ",%a #%E^ O] a $ )�a %a &m+ 'E^ Y hW X ( )hO)b  a *a +_ ,%m+ 'E^ O_ -a .%] %E^ Oa /] %_ -%a 0%E^ Ob  a 1-Ec  O�a 2,a 3&a 1-E^ O 8] [��l kh ] a 4 )] a 5a 6m+ 'Ec  Y h[OY��O)b  ] l+ 7E^ O] E^ W X ( )hOa 8] %a 9%] %a :%b  %a ;%�%a <%�%a =%�%a >%E^ O)b  b  �] �b  ] ] ] b  �] b  ] a ?+ @OP[OY�eW X ( )hU� ����()�� 0 make_evernote make_Evernote� �*� *  ��������������� 0 mytitle myTitle� 0 evtag EVTag� 0 	emaildate 	EmailDate� 0 msglink MsgLink� 0 	mycontent 	myContent� 0 mysource mySource� 0 theboundary theBoundary� "0 themessagestart theMessageStart� 0 themessageend theMessageEnd� 0 	myheaders 	myHeaders� 0 thismessage thisMessage� 0 evhtml evHTML� 0 
evnotebook 
EVnotebook� 0 the_template the_Template�  ( ����~�}�|�{�z�y�x�w�v�u�t�s�r� 0 mytitle myTitle� 0 evtag EVTag� 0 	emaildate 	EmailDate�~ 0 msglink MsgLink�} 0 	mycontent 	myContent�| 0 mysource mySource�{ 0 theboundary theBoundary�z "0 themessagestart theMessageStart�y 0 themessageend theMessageEnd�x 0 	myheaders 	myHeaders�w 0 thismessage thisMessage�v 0 evhtml evHTML�u 0 
evnotebook 
EVnotebook�t 0 the_template the_Template�s 0 n  �r 0 base64detect base64Detect) ,��q�p�o�n�m�l�k�j�i�h�g�/�f]b�eq|���d��c��b�a�`	`	n�_
>
�
��^�]�\�[�Z�Y
�q 
Enhl
�p 
Entt
�o 
Ennb�n 
�m .EVRNcrntnull��� ��� null
�l 
EV13
�k .EVRNassnnull���     ****
�j 
EV18
�i .EVRNadtnnull���     EVnn
�h 
EVdd
�g 
EVsu�f 0 base64_check base64_Check�e  0 extractbetween extractBetween�d 0 	trimstart 	trimStart
�c 
strq
�b .sysoexecTEXT���     TEXT
�a 
EV19�` 0 htmlfix htmlFix�_ 0 base64_decode base64_Decode
�^ 
ctxt
�] 
attc�\ 0 attachment_process  �[  �Z  
�Y .ascrcmnt****      � ****�<�*!�� @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY�b  �  @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPYf��x)�k+ E�O�e  �)�a a �%m+ Ec  Ob  a  )b  a �m+ Ec  Y hOb  a  )b  a �m+ Ec  Y hO)b  k+ Ec  Oa b  a ,%a %j Ec  O*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY�a Y�a )�k+ E�O�e  S)�k+  Ec  O*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FOPY ��f  �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FY hOPY I�a ! @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY hOPY �)�k+ E�O�e  )�k+  Ec  Y +)�a "a #m+ Ec  O)b  ��m+ a $&Ec  O*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FOPOa % �a &-jv )��l+ 'Y hUOb  kEc  W X ( )hUOa *b  %j +� �X/�W�V+,�U�X 0 f_exists  �W �T-�T -  �S�S 0 exportfolder ExportFolder�V  + �R�Q�P�R 0 exportfolder ExportFolder�Q 0 mypath myPath�P 0 saveloc SaveLoc, �O�N�M�L�KN�J�I�H�GL�F�E
�O afdrcusr
�N .earsffdralis        afdr
�M 
alis�L  �K  
�J 
kocl
�I 
cfol
�H 
prdt
�G 
pnam�F 
�E .corecrel****      � null�U , �j E�O��&O�E�W X  � *�����l� U� �DY�C�B./�A�D 0 attachment_process  �C �@0�@ 0  �?�>�? 0 thismessage thisMessage�> 0 n  �B  . 
�=�<�;�:�9�8�7�6�5�4�= 0 thismessage thisMessage�< 0 n  �; 0 exportfolder ExportFolder�: 0 saveloc SaveLoc�9  0 theattachments theAttachments�8 0 attcount attCount�7 0 theattachment theAttachment�6 0 thefilename theFileName�5 0 trash_folder trash_Folder�4 0 success  / �l�3�2�1�0��/�.�-�,�+�*�)�(�'�&�%�$��#�"�!� �������
�3 
ascr
�2 
txdl
�1 afdmdesk
�0 .earsffdralis        afdr
�/ 
TEXT�. 0 f_exists  
�- 
attc
�, 
kocl
�+ 
cobj
�* .corecnte****       ****
�) 
pnam
�( 
kfil
�' 
file
�& .coresavenull���     obj �%  �$  
�# 
EV21
�" .EVRNadtnnull���     EVnn
�! afdmtrsh
�  
from
� fldmfldu
� 
psxp
� 
strq
� 
spac
� .sysoexecTEXT���     TEXT� 0 trashfolder  �A �� ����,FO�j �%�&E�O)�k+ E�O��-E�OjE�O }�[��l kh ���,%E�O ��*�/l W X  hOa  � *a *�/l UUOa a a l E�Oa �a ,a ,%_ %�a ,a ,%j OP[OY��O)�k+ E�OPU� ����12�� 0 trashfolder  � �3� 3  �� 0 saveloc SaveLoc�  1 ��������� 0 saveloc SaveLoc� 0 trashfolderpath  � 0 srcfolderinfo  � 0 srcfoldername  � 0 counter  � 0 destfolderpath  � 0 destfolderalias  � 0 command  2 ��
�	�����4@B��d�� t
� afdrtrsh
�
 .earsffdralis        afdr
�	 
utxt
� 
alis
� .sysonfo4asfe        file
� 
pnam
� 
psxp
� 
strq�  �  
� 
spac
�  .sysoexecTEXT���     TEXT� � ��j �&E�O��&j E�O��,E�O��,�,E�OjE�O <hZ�j  ��%�%E�Y ��%�%�%�%E�O 
��&E�W X  O�kE�[OY��O��,�,E�O��%�%�%E�O�j Oa �%E�O�j OeW 	X  f� �������45���� 0 stripheader stripHeader�� ��6�� 6  ������ 0 
parasource 
paraSource�� 0 myheaderlines myHeaderlines��  4 ���������������� 0 
parasource 
paraSource�� 0 myheaderlines myHeaderlines�� 0 lastheaderline  �� 0 n  �� 0 sourcelength  �� 0 	olddelims 	oldDelims�� 0 	cutsource 	cutSource5 	���������������
�� .corecnte****       ****
�� 
cobj
�� 
ascr
�� 
txdl
�� 
ret 
�� 
ctxt�� ��E�O�j E�O h�� ��/E�O�kE�[OY��O�j E�O k�kh ��/�  Y h[OY��O�[�\[Z�k\Z�2Ec  O��,E�O���,FOb  �&E�O���,FO�OP� ������78���� 0 base64_check base64_Check�� ��9�� 9  ���� 0 mysource mySource��  7 ������������������ 0 mysource mySource�� 0 base64detect base64Detect�� 0 base64msgstr base64MsgStr�� &0 base64contenttype base64ContentType�� "0 base64msgoffset base64MsgOffset�� *0 base64contentoffset base64ContentOffset�� 0 base64offset base64Offset�� 0 	theoffset 	theOffset8 
 &����������������
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
doub
�� 
nmbr�� 2������ MfE�O�E�O�E�O*��� E�O*��� E�O���&E�O��&E�O�� �� eE�Y hY hO�� ��^����:;���� 0 base64_decode base64_Decode�� ��<�� <  ���� 0 mysource mySource��  : ������ 0 mysource mySource�� 0 olddelim oldDelim; 
����q�����������
�� 
ascr
�� 
txdl
�� 
citm
�� 
lnfd
�� 
strq
�� .sysoexecTEXT���     TEXT�� f��,E�O���,FO��l/Ec  O��%��,FOb  �l/Ec  O���,FOb  �k/Ec  O���,FO�b  �,%�%j 	Ec  Ob  � �������=>���� 0 htmlfix htmlFix�� ��?�� ?  �������� 0 	multihtml 	multiHTML�� 0 theboundary theBoundary�� 0 	mycontent 	myContent��  = ������������� 0 	multihtml 	multiHTML� 0 theboundary theBoundary� 0 	mycontent 	myContent� 0 	olddelims 	oldDelims� 0 myheaderlines myHeaderlines� 0 
theencoded 
theEncoded� 0 trimhtml trimHTML� 0 thehtml theHTML�  0 newencodedtext NewEncodedText� 0 the_utf8text the_UTF8Text� "0 thedecodescript theDecodeScript� 0 
thedecoded 
theDecoded> K������"�-2Jt��� �1�ASU�es�����������!/?M]k����������,/R�V�oq����������
� 
ascr
� 
txdl
� 
cpar
� 
cobj� 0 stripheader stripHeader�  0 extractbetween extractBetween
� 
citm
� 
ctxt
� 
TEXT� 
� .sysontocTEXT       shor� 

� 
strq
� .sysoexecTEXT���     TEXT�  �  ��)��,E�O��-Ec  Ob  �k/� b  �k/E�O)b  �l+ E�Y hO�� )���m+ 	E�Y )���%m+ 	E�O��-Ec  Ob  �k/� 'b  �k/E�O)b  �l+ E�O��-Ec  Y hOb  �k/�  lb  �l/� 'b  �l/E�O)b  �l+ E�O��-Ec  Y hOb  �l/� 'b  �l/E�O)b  �l+ E�O��-Ec  Y hY hOb  �k/a  'b  �k/E�O)b  �l+ E�O��-Ec  Y hOb  �k/a  'b  �k/E�O)b  �l+ E�O��-Ec  Y hO���,FO�a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa a %a &��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa a j %��,FO�a -Ec  Oa  ��,FOb  a &E�Oa !��,FO�a -Ec  Oa "��,FOb  a &E�Oa #a $j %��,FO�a -Ec  Oa %��,FOb  a &E�Oa &��,FO�a -Ec  Oa '��,FOb  a &E�Oa (��,FO�a -Ec  Oa )��,FOb  a &E�Oa *��,FO�a -Ec  Oa +��,FOb  a &E�Oa ,��,FO�a -Ec  Oa -��,FOb  a &E�Oa $j ��,FO�a -Ec  Oa .��,FOb  a &E�Oa /��,FO�a -Ec  Oa 0a 1%a &��,FOb  a &E�Oa 2��,FO�a -Ec  Oa 3a 4%a &��,FOb  a &E�Oa 5��,FO�a -Ec  Oa 6��,FOb  a &E�Oa 7��,FO�a -Ec  Oa 8��,FOb  a &E�O���,FO)�a 9a :m+ 	E�O�E�O �fEc  Oa ;�a <,%a =%j >E�O�a <,E�Oa ?�%a @%a &E�O�j >E�Oa A��,FO�a -Ec  Oa B��,FOb  a &E�Oa Ca D%a &��,FO�a -Ec  Oa E��,FOb  a &E�Oa Fa G%a &��,FO�a -Ec  Oa H��,FOb  a &E�O�Ec  OeEc  Ob  W X I JhOP� ���@A�� 0 growl_check Growl_Check�  �  @ ��� .0 allnotificationsfiles allNotificationsFiles� 60 enablednotificationsfiles enabledNotificationsFilesA �F!$-14�;���D��� 0 appisrunning appIsRunning
� 
appl
� 
anot
� 
dnot
� 
iapp� 
� .registernull��� ��� null� 8*�k+  /eEc  O� ���mvE�O���mvE�O*������� UY h� �Q��BC�� 0 process_items process_Items� �D� D  ��� 0 itemnum itemNum� 0 attnum attNum�  B ����� 0 itemnum itemNum� 0 attnum attNum� 0 	attplural 	attPlural� 0 plural_test Plural_TestC [fo��������������������������
� 
nmbr
� 
name
� 
titl
� 
desc
� 
appl
� 
iapp� 

� .notifygrnull��� ��� null� ��E�O�j  �E�Y �k �E�Y hO� }b  e  r��&E�O�k -� %*������%�%�%�%�%�%�a a a a  UY 8� 3*�a �a �a �%a %�%a %�%a %�a a a a  OPUY hU� ����EF�� 0 growl_growler growl_Growler� �G� G  �~�}�|�~ 0 growl_running growl_Running�} 0 successcount successCount�| 0 errnum errNum�  E �{�z�y�x�{ 0 growl_running growl_Running�z 0 successcount successCount�y 0 errnum errNum�x 0 plural_test Plural_TestF (��w�v�u�t�s#�r&�q�p�oCHLPSbgkor����������������w��
�v 
name
�u 
titl
�t 
desc
�s 
appl
�r 
iapp�q 

�p .notifygrnull��� ��� null
�o 
nmbr� ��e  �� ܢ�  � *����������� UY hO��&E�O�i  *���a �a �a �a � Y ��j   *�a �a �a �a �a � OPY s�k  4*�a �a �a b  	%a %b  %a %�a �a � OPY ;�k 4*�a  �a !�a "b  	%a #%b  %a $%�a %�a &� OPY hUOa 'Ec  	Y h  �nH�m�lIJ�k
�n .aevtoappnull  �   � ****H k    !KK  �LL  �MM  �NN  ��j�j  �m  �l  I �i�h�i 0 errtext errText�h 0 errnum errNumJ % � � ��g�f�e�d�c�b�a�`�_O�^��]��\��[��Z��Y��X�W����V�����U�T
�g 
ascr
�f 
txdl�e 0 growl_check Growl_Check�d 0 
item_check 
item_Check�c 0 
item_count 
item_Count�b 0 process_items process_Items�a 0 mail_process mail_Process�` 0 growl_growler growl_Growler�_ 0 errtext errTextO �S�R�Q
�S 
errn�R 0 errnum errNum�Q  �^��
�] 
name
�\ 
titl
�[ 
desc
�Z 
appl
�Y 
iapp�X 

�W .notifygrnull��� ��� null
�V 
ret 
�U 
disp
�T .sysodlogaskr        TEXT�k"�Ec  O�Ec  O���,FO d)j+ O)j+ Ob  jv ,)b  k+ O)b  	b  
l+ O)b  k+ 	OPY 	iEc  O)b  b  b  m+ 
OPW �X  b  e  x��  /� '*�a a a a a a a a a a  OPUY @� ;*�a a a a a _ %b  %a %_ %�%a a  a a !a  OPUOPY #b  f  a "�%_ %�%a #jl $Y h ascr  ��ޭ