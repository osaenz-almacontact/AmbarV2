//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AmbarV2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Requisiciones
    {
        public int Id { get; set; }
        public Nullable<int> IdOperacion { get; set; }
        public Nullable<int> IdCargo { get; set; }
        public Nullable<System.DateTime> FechaEntregaCandidato { get; set; }
        public Nullable<int> NumeroCandidato { get; set; }
        public Nullable<int> Salario { get; set; }
        public string Variable { get; set; }
        public Nullable<int> ValorVariable { get; set; }
        public string HorarioCampana { get; set; }
        public Nullable<int> IdTipoContrato { get; set; }
        public Nullable<int> IdSite { get; set; }
        public Nullable<int> CECO { get; set; }
        public string Perfil { get; set; }
        public Nullable<System.DateTime> FechaCreacion { get; set; }
        public Nullable<int> IdEstado { get; set; }
        public Nullable<System.DateTime> FechaAprobacionJefe { get; set; }
        public Nullable<System.DateTime> FechaAprobacionVinculacion { get; set; }
        public Nullable<int> IdUsuarioSolicitud { get; set; }
        public Nullable<int> IdUsuarioAprobacionJefe { get; set; }
        public Nullable<int> IdTipoConvocatoria { get; set; }
        public Nullable<int> IdAsignadoA { get; set; }
        public Nullable<int> IdUsuarioAprobacionPlaneacion { get; set; }
    }
}