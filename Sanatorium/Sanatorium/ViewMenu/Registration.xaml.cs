using Sanatorium.Database;
using Sanatorium.ViewModel;
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

namespace Sanatorium.ViewMenu
{
    /// <summary>
    /// Логика взаимодействия для Registration.xaml
    /// </summary>
    public partial class Registration : Window
    {
        public Registration(Admin admin)
        {
            InitializeComponent();

            if (admin is null)
            {
                var newProduct = new Admin();



                DataContext = newProduct;


            }
            else
            {
                DataContext = admin;
            }

        }
    

        private void Registr_Click(object sender, RoutedEventArgs e)
        {
        
        //using (var db = new SanatoriumEntities1())
        //{
        //    db.Admin.AddOrUpdate((DataContext as Admin));
        //    db.SaveChanges();
        //        UserPageWindow authWindow = new UserPageWindow();
        //        MessageBox.Show("Всё хорошо! Регистрация прошла успешно!");
        //        authWindow.Show();
        //        Hide();
        //    }

            //if (pas != pas_2)
            //{

            //    pas_2.Background = Brushes.Gray;
            //}
            //else
            //{
            //    string login = txbLogin.Text.Trim();
            //    string pass = pas.Password.Trim();
            //    string pass_2 = pas_2.Password.Trim();
            //    MessageBox.Show("Всё хорошо! Регистрация прошла успешно!");
            //    Admin admin = new Admin (login, pass);

            //    ConnectDB.db.Admin.Add(admin);
            //    ConnectDB.db.SaveChanges();


            //}
        }
    }
    }

