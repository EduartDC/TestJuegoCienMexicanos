//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JuegoCienMexicanos
{
    using System;
    using System.Collections.Generic;
    
    public partial class Match_Score
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Match_Score()
        {
            this.Players = new HashSet<Player>();
        }
    
        public int idMatch_Score { get; set; }
        public int scorePlayerOne { get; set; }
        public int scorePlayerTwo { get; set; }
        public int idPlayerOne { get; set; }
        public int idPlayerTwo { get; set; }
        public int playerWinner { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Player> Players { get; set; }
        public virtual Match Matches { get; set; }
    }
}