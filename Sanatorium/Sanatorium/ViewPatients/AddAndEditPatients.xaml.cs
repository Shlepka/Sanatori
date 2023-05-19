using Sanatorium.Database;
using Sanatorium.ViewMenu;
using Sanatorium.ViewModel;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Xml.Linq;

namespace Sanatorium.ViewPatients
{
    /// <summary>
    /// Логика взаимодействия для AddAndEditPatients.xaml
    /// </summary>
    public partial class AddAndEditPatients : Window
    {

        // public static class D
        //{
        //    public static String ArrivalText { get; set; }
        //    public static String  DepartureText { get; set; }

        //}

        private Patient patient = new Patient();
        public AddAndEditPatients(Patient selectpatient)
        {
            InitializeComponent();
            DataContext = patient;
            DataComboBox();

            foreach (var item in App.Current.Windows)
            {
                if (item is Patients)
                {
                    Owner = (Window)item;
                }
            }

            if (selectpatient != null)
            {
                DataContext = selectpatient;
            }
            else
            {
                var newProduct = new Patient();
                newProduct.VisitId = new Visit().Id;
                newProduct.GenderId = new Gender().Id;
                DataContext = newProduct;
            }

        }

        private void DataComboBox()
        {


            using (var db = new SanatoriumEntities1())
            {
                cmbVisit.ItemsSource = db.Visit.ToList();
                cmbGender.ItemsSource = db.Gender.ToList();
               
            }
        }

        public void SelectedCombo()
        {
            if (string.IsNullOrEmpty(cmbVisit.Text)) 
            {
                MessageBox.Show("Пустое значение в поле Визит", "Проверка");
                return;

            }
            if (string.IsNullOrEmpty(cmbGender.Text))
            {
                MessageBox.Show("Пустое значение в поле Пол", "Проверка");
                return;

            }
            


           
                (DataContext as Patient).VisitId = (cmbVisit.SelectedItem as Visit).Id;
                (DataContext as Patient).GenderId = (cmbGender.SelectedItem as Gender).Id;
            




        }
        private void btnSave_Click(object sender, RoutedEventArgs e)
        {

            if (string.IsNullOrEmpty(txbSurname.Text))
            {
             
                txbSurname.ToolTip = " Это поле пустое ";
                txbSurname.Background = Brushes.Gray;
                return;
            }
            if (string.IsNullOrEmpty(txbName.Text))
            {
         
                txbName.ToolTip = " Это поле пустое ";
                txbName.Background = Brushes.Gray;
                return;
            }
            if (string.IsNullOrEmpty(txbPatronymuc.Text))
            {
        
                txbPatronymuc.ToolTip = " Это поле пустое ";
                txbPatronymuc.Background = Brushes.Gray;
                return;
            }
            if (string.IsNullOrEmpty(txbArrival.Text))
            {
                txbArrival.ToolTip = " Это поле пустое ";
                txbArrival.Background = Brushes.Gray;
                return;
               
            }
            if (string.IsNullOrEmpty(txbDeparture.Text))
            {
                txbDeparture.ToolTip = " Это поле пустое ";
                txbDeparture.Background = Brushes.Gray;
                return;
            }
            if (string.IsNullOrEmpty(txbPhone.Text))
            {
                txbPhone.ToolTip = " Это поле пустое    ";
                txbPhone.Background = Brushes.Gray;
                return;
            }
            if (string.IsNullOrEmpty(txbPassport.Text))
            {
                txbPassport.ToolTip = " Это поле пустое     ";
                txbPassport.Background = Brushes.Gray;
                return;
            }

           
            SelectedCombo();
            try
            {
                using (var db = new SanatoriumEntities1())
                {
                    db.Patient.AddOrUpdate(DataContext as Patient);
                    db.SaveChanges();
                    ((Owner as Patients).DataContext as AppVM).LoadDate(); MessageBox.Show("Данные сохранены", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
                    Close();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Ошибка", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Vist_Click(object sender, RoutedEventArgs e)
        {
            var date = new DatePatients();
            date.Show();

        }

        private void txbSurname_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void txbPassport_TextChanged(object sender, TextChangedEventArgs e)
        {
            txbPassport.MaxLength = 10;

           
        }
    }
}

