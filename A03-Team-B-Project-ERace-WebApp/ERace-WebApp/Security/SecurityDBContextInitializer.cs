﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

#region additional namespaces
using ERace_WebApp.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Configuration;
using System.Data.Entity;
#endregion

namespace ERace_WebApp.Security
{
    public class SecurityDbContextInitializer : CreateDatabaseIfNotExists<ApplicationDbContext>
    {

        protected override void Seed(ApplicationDbContext context)
        {
            #region Seed the roles
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var startupRoles = ConfigurationManager.AppSettings["startupRoles"].Split(';');
            foreach (var role in startupRoles)
                roleManager.Create(new IdentityRole { Name = role });
            #endregion

            #region Seed the users
            //Add Admin user
            string adminUser = ConfigurationManager.AppSettings["adminUserName"];
            string adminRole = ConfigurationManager.AppSettings["adminRole"];
            string adminEmail = ConfigurationManager.AppSettings["adminEmail"];
            string adminPassword = ConfigurationManager.AppSettings["adminPassword"];
            var userManager = new ApplicationUserManager(new UserStore<ApplicationUser>(context));
            var result = userManager.Create(new ApplicationUser
            {
                UserName = adminUser,
                Email = adminEmail
            }, adminPassword);
            if (result.Succeeded)
                userManager.AddToRole(userManager.FindByName(adminUser).Id, adminRole);

            //Add FoodService employee
            string employeeUser = "Marla Kreeg";
            string employeeRole = "Food Service";
            string employeeEmail = "Marla.Kreeg@ERace.ca";
            string employeePassword = ConfigurationManager.AppSettings["newUserPassword"];
            int employeeid = 1;
            result = userManager.Create(new ApplicationUser
            {
                UserName = employeeUser,
                Email = employeeEmail,
                EmployeeId = employeeid
            }, employeePassword);
            if (result.Succeeded)
                userManager.AddToRole(userManager.FindByName(employeeUser).Id, employeeRole);

            //Add Clerk employee
             employeeUser = "Marceau Serat";
             employeeRole = "Clerk";
             employeeEmail = "Marceau.Serat@ERace.ca";
             employeePassword = ConfigurationManager.AppSettings["newUserPassword"];
             employeeid = 37;
            result = userManager.Create(new ApplicationUser
            {
                UserName = employeeUser,
                Email = employeeEmail,
                EmployeeId = employeeid
            }, employeePassword);
            if (result.Succeeded)
                userManager.AddToRole(userManager.FindByName(employeeUser).Id, employeeRole);

            //Add Clerk employee
            employeeUser = "Kevin Beecham";
            employeeRole = "OfficeManager";
            employeeEmail = "Kevin.Beecham@ERace.ca";
            employeePassword = ConfigurationManager.AppSettings["newUserPassword"];
            employeeid = 26;
            result = userManager.Create(new ApplicationUser
            {
                UserName = employeeUser,
                Email = employeeEmail,
                EmployeeId = employeeid
            }, employeePassword);
            if (result.Succeeded)
                userManager.AddToRole(userManager.FindByName(employeeUser).Id, employeeRole);

            #endregion

            // ... etc. ...

            base.Seed(context);
        }
    }
}