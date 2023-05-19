using Sanatorium.Database;
using Sanatorium.ViewDoctors;
using Sanatorium.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sanatorium.ViewProcedurs
{
    public class AppVMProcedur:BaseModel
    {

        private Procedur _selectedProcedurs;
        public Procedur SelectedProcedurs
        {
            get => _selectedProcedurs;
            set
            {
                _selectedProcedurs = value;
                OnPropertyChanged(nameof(SelectedProcedurs));
            }
        }

        private ObservableCollection<Procedur> _procedur;
        public ObservableCollection<Procedur> Procedurs
        {
            get => _procedur;
            set
            {
                _procedur = value;
                OnPropertyChanged(nameof(Procedurs));
            }
        }

        public AppVMProcedur()
        {
            Procedurs = new ObservableCollection<Procedur>();
            LoadDate();
        }



        public void LoadDate()
        {
            Procedurs.Clear();
            using (SanatoriumEntities1 db = new SanatoriumEntities1())
            {
                var _productList = db.Procedur.Include("Patient").Include("Doctor").ToList();
                _productList.ForEach(p => Procedurs.Add(p));
            }
        }

        public void Search(string quntint)
        {
            if (string.IsNullOrEmpty(quntint)) { LoadDate(); return; }

            Procedurs.Clear();
            using (var db = new SanatoriumEntities1())
            {
                var result = db.Procedur.Where(u => u.ProcedureName.ToLower().Contains(quntint.ToLower())).Include("Doctor").Include("Patient").ToList();
                result.ForEach(u => Procedurs.Add(u));
            }
        }

    }
}
