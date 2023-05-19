using Sanatorium.Database;
using Sanatorium.ViewMenu;
using Sanatorium.ViewModel;
using Sanatorium.ViewProcedurs;
using System;
using System.Collections.Generic;
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

namespace Sanatorium.ViewPatients
{
    /// <summary>
    /// Логика взаимодействия для Patients.xaml
    /// </summary>
    public partial class Patients : Window
    {
        public Patients()
        {
            InitializeComponent();
            DataContext = new AppVM();
        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {

            var addWindow = new AddAndEditPatients(null);
            addWindow.Show();
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            Patient item = dgPatients.SelectedItem as Patient;
            if (item == null)
            {
                MessageBox.Show("Выберите запись для удаления", "Удаление пациента");
            }
            else
            {
                MessageBoxResult result = MessageBox.Show("Удалить пациента  " + item.PatientSurname + "?",
               "Удаление пациента", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                if (result != MessageBoxResult.Yes)
                    return;

            
            try
            {
            


                using (var db = new SanatoriumEntities1())
                {
                    var idForDelete = (DataContext as AppVM).SelectedPatients.PatientId;

                    var objectForDelete = db.Patient.FirstOrDefault(x => x.PatientId == idForDelete);

                    db.Patient.Remove(objectForDelete);

                    db.SaveChanges(); MessageBox.Show("Вы удалили пациента", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);

                    (DataContext as AppVM).LoadDate();
                }
            }
            catch(Exception)
            {
                MessageBox.Show("Ошибка", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            }
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)

        {

            if (!(dgPatients.SelectedItem is Patient item))
            {
                MessageBox.Show("Выберите запись для редактирования", "Редактирование");
                return;
            }
            else {
            var editwindow = new AddAndEditPatients((DataContext as AppVM).SelectedPatients);

            editwindow.Show();
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            var back = new UserPageWindow();
            back.Show();
            this.Close();
        }

        private void BtnProcedures_Click(object sender, RoutedEventArgs e)
        {
            var procedur = new Procedurs();
            procedur.Show();
            this.Close();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            (DataContext as AppVM).Search((sender as TextBox).Text);
        }
    }
}
