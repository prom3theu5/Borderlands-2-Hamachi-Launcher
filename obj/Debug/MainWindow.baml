   M S B A M L   `   `   `  ����  Hamachi Launcher!    Hamachi_Launcher.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � AllowsTransparency .  � WindowStyle$
 None=�6O   
������  � WindowStartupLocation$ CenterScreen=�6{   .��5      � -   5        .+�5      � $��	0,0,0,154q�6   ��5   
   �� 5       �� ImageSource$9 3Resources/borderlands-2-logo-wallpaper-1000x500.jpg��6   .+�5
      �� -   5        $
��Left=�5
      $��30��60   $��	496,0,0,0q�6<   $	��Top=�6O   $��29��6g   $��0q�6�    � ToolTip$ Exit Application��6�   ��5      �� 5      $,��&Resources/Actions-application-exit.ico��6   $
��Fill=�6L   $��25��6[   5      �� 5      $$��Borderlands2.exe File Location��6   $
��Left=�6=   $��	10,20,0,0q�6X   $	��Top=�6k   $	��272��6�   $��Segoe WP)�6�   $��18(�6�   $
��Bold"�6�   $��1,1,1,3q�6�   
���������6�   Z�  J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      �� 5      -   5         ��Name$ Filepath��5      $
��Left=�6(   $��23��6C   $��	21,63,0,0q�6O    �� TextWrapping$
 Wrap=�6b   $��File path...��6v   $	��Top=�6�   $	��414��6�   $��Italic$�6�   $��Segoe WP)�6�   	 �� 
IsReadOnly	 . 6�   �� 5      -   5        $��BrowseButton��5   �   $��BROWSE��6   $
��Left=�6&   $��
440,63,0,0q�6A   $	��Top=�6U   $��54��6m   $��Segoe WP)�6x   $��23��6�   $- 'Browse for your borderlands2 executable��6�   �� 5      $��Hamachi Contact IP��6   $
��Left=�61   $��	10,91,0,0q�6L   $	��Top=�6_   $	��272��6w   $��Segoe WP)�6�   $��18(�6�   $
��Bold"�6�   $��1,1,1,3q�6�   
���������6�   Z�  5        5      5      �� 5      -   5        $ IPAddressBox��5      $
��Left=�6,   $��23��6G   $��
21,129,0,0q�6S   $
 Wrap=�6g   $��IP Address...��6{   $	��Top=�6�   $	��171��6�   $��Italic$�6�   $��Segoe WP)�6�   6�   �� 5      -   5        $��ConnectButton��5   �   $
��Left=�6   $��485,162,0,0q�60   $	��Top=�6E   $��40��6]   $��Segoe WP)�6h   $��34��6~   $z tClick to Start Borderlands.  Connecting may take a minute or two, but you will automatically join your friends game.��6�   ��5      �� 5      $��Resources/connect.ico��6   $
��Fill=�6;   6L   5       �� 5"   
   -   5        $��
PingButton��5"   �   $
��PING��6   $
��Left=�6    $��200,129,0,0q�6;   $	��Top=�6P   $��35��6h   $��Segoe WP)�6s   $��23��6�   $  Test Hamachi By Pinging IP��6�   �� 5#      -   5        $��	StatusMSG��5#      $�� ��6   $��Center=�60   $��Center=�6R   $
��Left=�6v   $��
21,162,0,0q�6�   $	��Top=�6�   $	��414��6�   $��Segoe WP)�6�   $��12(�6�   
���   �
���  ��$��Italic$�6  $y�Visible=�6$  $��24��69  $
��Bold"�6E   5$        5%      ��5'      �� 5(      
 �� 
TargetType"
 ��6    �� Triggers 5)      P� 5*       P� Property � y� P� Value$ Visible=�6<    N� EnterActions 5+   "   �� 5,   &   .��5-   *   �� .��5.   .   W�  �� TargetProperty$ Opacity�6>    g� Duration$ 00:00:10D�6b    g� 	BeginTime$ 	00:00:000X�6v    W� From$	 1.0X�6�   	 W� To$	 0.0X�6�   50   +   51   '   53      55      57      58      � 59      $��	0,210,0,0q�6   
������  � ColumnDefinitions 5:      �� 5;      $
��152* �6#   �� 5<      $
��373* �6#   .+�5>      �� $��0��6   $��20q�6$   $��Resources/avatar.jpg��60   �� 5?      $��1��6   $��0,0,20,0q�6$   $��Stretch=�66   $��Stretch=�6R   $&�� Resources/Borderlands-2-Logo.jpg��6p   $
��Fill=�6�   5@      5A      5B      