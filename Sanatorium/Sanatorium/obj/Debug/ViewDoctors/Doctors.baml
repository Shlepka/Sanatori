   M S B A M L   `   `   `  ����E  ASanatorium, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Sanatorium.ViewDoctorsSanatorium.ViewDoctors  5   	   $    Sanatorium.ViewDoctors.Doctors   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:Sanatorium.ViewDoctors     5   	   $	��414��5   	   $
��1000��5	   	     � Icon$  /Resources/doctor.ico��5
   
    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ 
Врачи��5   	   $	��414��6   $
��1000��6$   .��5      � .+�5   
   �� -   5         ��Name$ 	lvDoctors��5      $��0��5      $
��Left=�5      $	��315��62   $��	20,40,0,0q�6?   $	��Top=�6R   $	��800��6j   ��5      �� *	Doctors+ �� SelectedItem 5      �� *SelectedDoctors+��5      �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6!   $��0��6:   .+�5      �� $��50��6    $��50��6,   $��/Resourses/picture.png��67   �� 5      ��6    �� *DoctorSurname+�� 5      ��6    �� *
DoctorName+�� 5      ��6    �� *DoctorPatronymic+�� 5      ��6    �� *Phone+�� 5      ��6    �� *Speciality.Speciality1+5      5       5"      �� 5#   
   $��0��6   $��0,40,10,140q�6"   $��Right=�67   $	��250��6S   $	��150��6`   .+�5$      �� -   5        $��5q�5$      $��0��5'      $��20��5(      �� 5*      -   5         ��Name$ btn_Add��5+      $��5q�5-      ���#673ab7
�������$	��124��50      $��31��6   $��Добавить��51      �� 52      -   5        $ btn_Edit��53      $��5q�55      ���#673ab7
�������$	��124��58      $��31��6   $��1��59      $ ��Редактировать��5;      �� 5=      -   5        $ btn_Del��5>      $��5q�5@      ���#673ab7
�������$	��124��5C      $��31��6   $��Удалить��5D      �� 5F      -   5        $ btn_Back��5G      $��5q�5I      $	��124��5K      $��31��6   $��
Назад��5L      5M      5Q      5R      