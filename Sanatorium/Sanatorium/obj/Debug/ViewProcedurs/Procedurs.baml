   M S B A M L   `   `   `  ����E  ASanatorium, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Sanatorium.ViewProcedursSanatorium.ViewProcedurs  5   	   (    "Sanatorium.ViewProcedurs.Procedurs   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:Sanatorium.ViewProcedurs     5   	     � Title$  Процедуры��5   	   $	��411��5	   	   $	��411��5
   	   $
��1000��5   	    � Icon$ /Resources/procedur.ico��5   
   $
��1000��5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
dgPatients��5         
IsReadOnly .    AutoGenerateColumns .  $y�Visible=�6U   $
��Left=�5      $	��315��6.   $��	20,40,0,0q�6;   $	��Top=�6N   $	��800��6f   ��5      �� *	Procedurs+ �� SelectedItem 65   �� *SelectedProcedurs+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$* $Название процедуры ��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6B   �� *ProcedureName+  5      $ Дата��6%   	 63   �� *ProcedureDate+  5      $ Пациент��6%   	 66   �� *Patient.PatientSurname+  5      $ Доктор��6%   	 65   �� *Doctor.DoctorSurname+  5      $ Кабинет��6%   	 66   �� *CabinetNumber+5      �� 5   
   $��0��6   $��0,40,10,140q�6"   $��Right=�67   $	��250��6S   $	��150��6`   .+�5      �� -   5        $��5q�5      $��0��5       $��20��5!      �� 5#      -   5        
 ��Name$
 btn_Add��5#      $��5q�5%      ���#673ab7
�������$	��124��5(      $��31��6   $��Добавить��5)      �� 5*      -   5        $
 btnEdit��5*      $��5q�5,      ���#673ab7
�������$	��124��5/      $��31��6   $��1��50      $ ��Редактировать��51      �� 52      -   5        $
 	bt_Delete��52      $��5q�54      ���#673ab7
�������$	��124��57      $��31��6   $��Удалить��58      �� 5;      -   5        $
 BtnBack��5;      $��5q�5=      $	��124��5>      $��31��6   $��
Назад��5?      5@      5B      5C      