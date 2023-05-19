using Sanatorium.Database;
using Sanatorium.ViewDoctors;
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

namespace Sanatorium.ViewProcedurs
{
    /// <summary>
    /// Логика взаимодействия для Procedurs.xaml
    /// </summary>
    public partial class Procedurs : Window
    {
        public Procedurs()
        {
            InitializeComponent();
            DataContext = new AppVMProcedur();
        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {


          
                var addProcedur = new AddAndEditProcedurs(null);
                addProcedur.Show();
            
        }




        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {

            if (!(dgPatients.SelectedItem is Procedur item))
            {
                MessageBox.Show("Выберите запись для редактирования", "Редактирование");
                return;
            }
            else
            {
                var editProcedur = new AddAndEditProcedurs((DataContext as AppVMProcedur).SelectedProcedurs);

                editProcedur.Show();
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            var back = new Patients();
            back.Show();
            this.Close();
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {

            Procedur item = dgPatients.SelectedItem as Procedur;
            if (item == null)
            {
                MessageBox.Show("Выберите запись для удаления", "Удаление процедуры");
            }
            else
            {
                MessageBoxResult result = MessageBox.Show("Удалить процедуру  " + item.ProcedureName + "?",
               "Удаление процедуры", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                if (result != MessageBoxResult.Yes)
                    return;
                try
                {
                    using (var db = new SanatoriumEntities1())
                    {
                        var idForDelete = (DataContext as AppVMProcedur).SelectedProcedurs.ProcedureId;

                        var objectForDelete = db.Procedur.FirstOrDefault(x => x.ProcedureId == idForDelete);

                        db.Procedur.Remove(objectForDelete);

                        db.SaveChanges(); MessageBox.Show("Вы удалили процедуру", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);

                        (DataContext as AppVMProcedur).LoadDate();
                    }
                }
                catch
                {
                    MessageBox.Show("Ошибка", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            (DataContext as AppVMProcedur).Search((sender as TextBox).Text);
        }
    }
}
