using System;
using System.Collections.Generic;

namespace SistemaRegimiento.Models
{
    // Clase principal para el manejo del S1
    public class Efectivo
    {
        public int Id { get; set; }
        public string Grado { get; set; }
        public string Apellido { get; set; }
        public string Nombre { get; set; }
        public string Subunidad { get; set; } // Ej: "Ca Ite A", "Ca Cdo"
        public EstadoRevista EstadoActual { get; set; }
        
        // Atributo específico para el seguimiento de carrera
        public bool EnTramiteCambioCuerpo { get; set; } 
    }

    // Enum para controlar estrictamente las opciones de presentismo (SQL lo guarda como int)
    public enum EstadoRevista
    {
        Presente,
        LicenciaOrdinaria,
        LicenciaEspecial,
        ParteEnfermo,
        Comision
    }

    // Clase para que cualquier área (S1, S2, S3, S4) reporte al Jefe
    public class NovedadDiaria
    {
        public int Id { get; set; }
        public DateTime FechaHora { get; set; }
        public string AreaOrigen { get; set; } // "S1", "S3", "Guardia"
        public string Descripcion { get; set; }
        public NivelGravedad Gravedad { get; set; }
    }

    public enum NivelGravedad
    {
        Informativo, // Verde
        Precaucion,  // Amarillo
        Critico      // Rojo (Impacta directo en la pantalla del Jefe)
    }
}
