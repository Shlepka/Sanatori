//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Sanatorium.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class Patient
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Patient()
        {
            this.Procedur = new HashSet<Procedur>();
        }
    
        public int PatientId { get; set; }
        public string PatientSurname { get; set; }
        public string PatientName { get; set; }
        public string PatientPatronymic { get; set; }
        public System.DateTime ArrivalDate { get; set; }
        public System.DateTime DepartureDate { get; set; }
        public string Phone { get; set; }
        public string Passport { get; set; }
        public int VisitId { get; set; }
        public int GenderId { get; set; }
    
        public virtual Gender Gender { get; set; }
        public virtual Visit Visit { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Procedur> Procedur { get; set; }
    }
}
