   M S B A M L   `   `   `  ����E  ASanatorium, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Sanatorium.ViewProcedursSanatorium.ViewProcedurs  5   	   2    ,Sanatorium.ViewProcedurs.AddAndEditProcedurs   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:Sanatorium.ViewProcedurs     5   	     � WindowStartupLocation$  CenterOwner=�5   	   $	��520��5	      $	��400��5
       � Icon$  /Resources/addprocedur.ico��5       � Title$6 0Редактирование Процедуры ��5   	   $	��520��6,   $	��400��69   .��5      � $��10q�6   $��Center=�5       � RowDefinitions 5   
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
   �� .+�5*      �� $+��%Название процедуры :��5+      �� 5,      -   5         ��Name$ txbName��5-   0   ��6   �� *ProcedureName+60   5.      �� 51   
   $��3��52      .+�53      �� $!��Дата процедуры��54      �� 55      -   5        $ 
txbArrival��55      ��56      �� *ProcedureDate+57      �� 58   
   $��4��59      .+�5:      �� $��Паицент��5;      �� 5<      -   5        $��
cmbPatient��5=       �� DisplayMemberPath$ PatientSurname��5<      5=   #   5>      �� 5@   
   $��6��5A      .+�5B      �� $��Доктор:��5C      �� 5D      -   5        $��	cmbDoctor��5E      $ DoctorSurname��5D      5E      5F      �� 5H   
   $��8��5I      .+�5J      �� $��Кабинет��5K      �� 5L      -   5        $ 
txbCabinet��5M   0   ��6   �� *CabinetNumber+6D   5O      �� 5R   
   -   5        $��btnSave��5S      ���#673ab7
�������$��9��5W       � ToolTip$ 8��5X      $��5q�5Y      $��Сохранить��5Z      �� 5[   
   -   5        $��btnBack��5\      ���#673ab7
�������$��11��5`      $ 8��5a      $��5q�5b      $��Отмена��5c      5f      5g      