   M S B A M L   `   `   `  ����E  ASanatorium, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Sanatorium.ViewDoctorsSanatorium.ViewDoctors  5   	   .    (Sanatorium.ViewDoctors.AddAndEditDoctors   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:Sanatorium.ViewDoctors     5   	     � WindowStartupLocation$  CenterOwner=�5   	    � Icon$ /Resources/adddoctor.ico��5	   	   $	��360��5
   
   $	��400��5   
    � Title$. (Редактирование врача ��5      $	��400��6'   $	��400��64   .��5      � $��10q�6   $��Center=�5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5       �� 5!      $
��Auto �5"      �� 5#      $
��Auto �5$      �� 5%      $
��Auto �5&      .+�5)   
   �� .+�5*      �� $��Фамилия :��5+      �� 5,      -   5         ��Name$ 
txbSurname��5-   1   ��6   �� *DoctorSurname+61   5.      �� 5/   
   $��1��50      .+�51      �� $��Имя:��52      �� 53      -   5        $ txbName��54   -   ��6   �� *
DoctorName+6-   55      �� 56   
   $��2��57      .+�58      �� $��Отчество:��59      �� 5:      -   5        $ txbPatronymic��5;   3   ��6   �� *DoctorPatronymic+63   5<      �� 5=   
   $��6��5>      .+�5?      �� $��Телефон:��5@      �� 5A      -   5        $ txbPhone��5B   )   ��6   �� *Phone+6)   5C      �� 5D   
   $��7��5E      .+�5F      �� $!��Специальность:��5G      �� 5H      -   5        $��cmbSpeciality��5I       �� DisplayMemberPath$ Speciality1��5H      5I      5J      �� 5L   
   -   5        $��btnSave��5M      ���#673ab7
�������$��9��5Q       � ToolTip$ 8��5R      $��5q�5S      $��Сохранить��5T      �� 5U   
   -   5        $��btnBack��5V      ���#673ab7
�������$��11��5Z      $ 8��5[      $��5q�5\      $��Отмена��5]      5_      5`      