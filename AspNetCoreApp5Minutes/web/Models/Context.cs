using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace crm.Models
{
	public class Context : DbContext
	{
		public Context(DbContextOptions<Context> options) : base(options) {}

		public DbSet<Customer> Customers { get; set; }
	}
}
