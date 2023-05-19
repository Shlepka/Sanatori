using Sanatorium.Database;
using Sanatorium.ViewMenu;
using Sanatorium.ViewModel;
using Sanatorium.ViewPatients;
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

namespace Sanatorium.ViewDoctors
{
    /// <summary>
    /// Логика взаимодействия для Doctors.xaml
    /// </summary>
    public partial class Doctors : Window
    {
        public Doctors()
        {
            InitializeComponent();
            DataContext = new AppVMDoctor();
        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            var newDoctors = new AddAndEditDoctors(null);
            newDoctors.Show();
        }

        private void btn_Del_Click(object sender, RoutedEventArgs e)
        {
            Doctor item = lvDoctors.SelectedItem as Doctor;
            if (item == null)
            {
                MessageBox.Show("Выберите запись для удаления", "Удаление доктора");
            }
            else
            {
                MessageBoxResult result = MessageBox.Show("Удалить доктора  " + item.DoctorSurname + "?",
               "Удаление пациента", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                if (result != MessageBoxResult.Yes)
                    return;
           
                try
            {
                using (var db = new SanatoriumEntities1())
                {
                    var idForDelete = (DataContext as AppVMDoctor).SelectedDoctors.DoctorId;

                    var objectForDelete = db.Doctor.FirstOrDefault(x => x.DoctorId == idForDelete);

                    db.Doctor.Remove(objectForDelete);

                    db.SaveChanges(); MessageBox.Show("Вы удалили доктора", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);

                        (DataContext as AppVMDoctor).LoadDate();
                }
            }
            catch
            {
                    MessageBox.Show("Ошибка", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            var back = new UserPageWindow();
            back.Show();
            this.Close();
        }

        private void btn_Edit_Click(object sender, RoutedEventArgs e)
        {

            if (!(lvDoctors.SelectedItem is Doctor item))
            {
                MessageBox.Show("Выберите запись для редактирования", "Редактирование");
                return;
            }
            else { 
            var newDoctors = new AddAndEditDoctors((DataContext as AppVMDoctor).SelectedDoctors);
            newDoctors.Show();
            }
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            (DataContext as AppVMDoctor).Search((sender as TextBox).Text);
        }

      




    }
}

