using Sanatorium.ViewDoctors;
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

namespace Sanatorium.ViewMenu
{
    /// <summary>
    /// Логика взаимодействия для UserPageWindow.xaml
    /// </summary>
    public partial class UserPageWindow : Window
    {
        public UserPageWindow()
        {
            InitializeComponent();
        }

        private void Button_Patients_Click(object sender, RoutedEventArgs e)
        {
            Patients pat = new Patients();
            pat.Show();
            this.Close();
        }

        private void Button_Doctors_Click(object sender, RoutedEventArgs e)
        {
            Doctors doc= new Doctors();
            doc.Show();
            this.Close();
        }
    }
}
