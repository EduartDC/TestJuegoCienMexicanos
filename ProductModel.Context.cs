﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ProductContext : DbContext
    {
        public ProductContext()
            : base("name=ProductContext")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Player> Players { get; set; }
        public virtual DbSet<Match_Score> Match_Score { get; set; }
        public virtual DbSet<Question> Questions { get; set; }
        public virtual DbSet<Question_Answer> Question_Answer { get; set; }
        public virtual DbSet<Answer> Answers { get; set; }
        public virtual DbSet<Friends> Friends { get; set; }
        public virtual DbSet<Match> Matches { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
    }
}
