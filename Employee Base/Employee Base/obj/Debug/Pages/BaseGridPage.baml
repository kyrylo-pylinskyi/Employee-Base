   M S B A M L   `   `   `  ����H  DEmployee Base, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Employee_BaseEmployee_Base  5           Employee_Base.BaseGridPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:Employee_Base     5        N� Title$  BaseGridPage��5	      .��5      � ���#EEEEEE � ColumnDefinitions 5   
   �� 5      $	��100 �6   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      $	��150 �6   �� 5      $��32 �6    � RowDefinitions 5   
   �� 5      $��0.45* �6   �� 5      $��5* �6   .+�5   
   �� -   5         ��Name$ TablesComboBox��5      $��5,5,5,5q�6+   $��0��6<   $��0��6L   .@�5      �� 
Employee6"   �� 5      
Customer6"   �� 5      
Department6$   �� 5       City6   5!      �� 5"   
   -   5         ��Name$ UpdateButton��5"      $��Update��6'   $��1��68   $��5,5,60,5q�6H   6Z   �� 5#   
   -   5         ��Name$ 	SearchBox��5#      $��Center=�6E   $��8��6g   $��0��6w   $��5,5,5,5q�6�   �� 5$   
   -   5        $ WatermarkedSearchBox��5$      $��Center=�6Y   $��8��6{   $��0��6�   $��Search��6�   
�������$��5,5,5,5q�6�   �� 5%   
   -   5        $ TableButton��5%      $��9��6&   $��0��66   $��0,5,5,0q�6C   $��Stretch=�6T   $
��Auto��6r   .��5&      �� $��Images/search.png��6   5'      �� 5(   
   -   5         ��Name$ 
CheckBox_1��5(      $��Phone��6'   $��2��67   6b   �� 5)   
   -   5        $ 
CheckBox_2��5)      $��Email��6'   $��3��67   6b   �� 5*   
   -   5        $ 
CheckBox_3��5*      $��	Hire Date��6'   $��4��6;   6f   �� 5+   
   -	   5        $ 
CheckBox_4��5+      $��Gender��6'   $��5��68   6c   �� 5,   
   -
   5        $ 
CheckBox_5��5,      $��Salary��6'   $��6��68   6c   �� 5-   
   -   5        $ 
CheckBox_6��5-      $��
Department��6'   $��7��6<   6g   &   System.Windows.Controls.DataGrid  5.   
   -   5          Name$ BaseGrid��5.      $��1��6%   $��0��62   $��10��6B   $��5,0,5,5q�6W      
IsReadOnly . 6h   5/      50      