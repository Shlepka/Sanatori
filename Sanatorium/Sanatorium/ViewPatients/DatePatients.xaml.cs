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
using System.Xml.Linq;
using static Sanatorium.ViewPatients.AddAndEditPatients;
using static System.Net.Mime.MediaTypeNames;

namespace Sanatorium.ViewPatients
{
    /// <summary>
    /// Логика взаимодействия для DatePatients.xaml
    /// </summary>
    public partial class DatePatients : Window
    {
        public DatePatients()
        {
            InitializeComponent();
            
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
          
            //D.ArrivalText = Convert.ToString(dateArrival.Text);
            //D.DepartureText = Convert.ToString(dateDeparture.Text);
           
            this.Close();
        }
    }
}
