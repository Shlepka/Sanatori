using Sanatorium.Database;
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

namespace Sanatorium.ViewMenu
{
    /// <summary>
    /// Логика взаимодействия для Authorization.xaml
    /// </summary>
    public partial class Authorization : Window
    {
        public Authorization()
        {
            InitializeComponent();
            ConnectDB.db = new Database.SanatoriumEntities1();

        }

        private void btnReg_Click(object sender, RoutedEventArgs e)
        {
            Registration regWindow = new Registration(null);
            regWindow.Show();
            Hide();
        }

        private void Enter_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var userObj = ConnectDB.db.Admin.FirstOrDefault(x => x.Login == txboxLogin.Text && x.Password == txPassword.Password);
                if (userObj == null)
                {
                    MessageBox.Show("Неверный логин или пароль", "Авторизация", MessageBoxButton.OK, MessageBoxImage.Error);


                }
                else
                {

                    var formProd = new UserPageWindow();
                    formProd.Show();
                    this.Close();


                }
            }
            catch (Exception ex)
            {

                MessageBox.Show("Ошибка");
            }
        }
    }
}