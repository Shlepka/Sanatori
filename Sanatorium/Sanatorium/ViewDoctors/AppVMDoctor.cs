using Sanatorium.Database;
using Sanatorium.ViewModel;
using Sanatorium.ViewPatients;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sanatorium.ViewDoctors
{
    public class AppVMDoctor:BaseModel
    {

        private Doctor _selectedDoctors;
        public Doctor SelectedDoctors
        {
            get => _selectedDoctors;
            set
            {
                _selectedDoctors = value;
                OnPropertyChanged(nameof(SelectedDoctors));
            }
        }

        private ObservableCollection<Doctor> _doctors;
        public ObservableCollection<Doctor> Doctors
        {
            get => _doctors;
            set
            {
                _doctors = value;
                OnPropertyChanged(nameof(Doctors));
            }
        }

        public AppVMDoctor()
        {
            Doctors = new ObservableCollection<Doctor>();
            LoadDate();
        }



        public void LoadDate()
        {
            Doctors.Clear();
            using (SanatoriumEntities1 db = new SanatoriumEntities1())
            {
                var _productList = db.Doctor.Include("Speciality").ToList();
                _productList.ForEach(p => Doctors.Add(p));
            }
        }
        public void Search(string quntint)
        {
            if (string.IsNullOrEmpty(quntint)) { LoadDate(); return; }

            Doctors.Clear();
            using (var db = new SanatoriumEntities1())
            {
                var result = db.Doctor.Where(u => u.DoctorSurname.ToLower().Contains(quntint.ToLower()) || u.DoctorName.ToLower().Contains(quntint.ToLower())
                || u.DoctorPatronymic.ToLower().Contains(quntint.ToLower())
                ).Include("Speciality").ToList();
                result.ForEach(u => Doctors.Add(u));
            }
        }
    }
}

