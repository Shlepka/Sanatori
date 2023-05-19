using Sanatorium.Database;
using Sanatorium.ViewDoctors;
using Sanatorium.ViewModel;
using Sanatorium.ViewPatients;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
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

namespace Sanatorium.ViewProcedurs
{
    /// <summary>
    /// Логика взаимодействия для AddAndEditProcedurs.xaml
    /// </summary>
    public partial class AddAndEditProcedurs : Window
    {

        private Procedur procedur = new Procedur();
        public AddAndEditProcedurs(Procedur selectprocedur)
        {
            InitializeComponent();
            DataContext = procedur;
            DataComboBox();

            foreach (var item in App.Current.Windows)
            {
                if (item is Procedurs)
                {
                    Owner = (Window)item;
                }
            }

            if (selectprocedur != null)
            {
                DataContext = selectprocedur;
            }
            else
            {
                var newProcedur = new Procedur();
                newProcedur.DoctorId = new Doctor().DoctorId;
                newProcedur.PatientId = new Patient().PatientId;
                DataContext = newProcedur;
            }

        }

        private void DataComboBox()
        {
            using (var db = new SanatoriumEntities1())
            {
                cmbDoctor.ItemsSource = db.Doctor.ToList();
                cmbPatient.ItemsSource = db.Patient.ToList();

            }
        }

        public void SelectedCombo()
        {
            if (string.IsNullOrEmpty(cmbPatient.Text))
            {
                MessageBox.Show("Пустое значение в поле Пациент", "Проверка");
                return;

            }
            if (string.IsNullOrEmpty(cmbDoctor.Text))
            {
                MessageBox.Show("Пустое значение в поле Доктор", "Проверка");
                return;

            }


                (DataContext as Procedur).DoctorId = (cmbDoctor.SelectedItem as Doctor).DoctorId;
                (DataContext as Procedur).PatientId = (cmbPatient.SelectedItem as Patient).PatientId;
            


          
        }
        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txbName.Text))
            {
                txbName.ToolTip = " Это поле пустое ";
                txbName.Background = Brushes.Gray;
                return;
            }
            if (string.IsNullOrEmpty(txbArrival.Text))
            {
                txbArrival.ToolTip = " Это поле пустое ";
                txbArrival.Background = Brushes.Gray;
                return;
            }
            if (string.IsNullOrEmpty(txbCabinet.Text))
            {

                txbCabinet.ToolTip = " Это поле пустое ";
                txbCabinet.Background = Brushes.Gray;
                return;
            }


            SelectedCombo();
            try
            {
                using (var db = new SanatoriumEntities1())
                {
                    db.Procedur.AddOrUpdate(DataContext as Procedur);
                    db.SaveChanges();
                    ((Owner as Procedurs).DataContext as AppVMProcedur).LoadDate(); MessageBox.Show("Данные сохранены", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
                    this.Close();
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

        private void cmbPatient_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void txbCabinet_TextChanged(object sender, TextChangedEventArgs e)
        {
            txbCabinet.MaxLength = 2;
        }

       
    }
}
