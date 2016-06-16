using COMP2007_SPYF.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_SPYF
{
    public partial class guesttrack : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {

        //if loading the page, populate the results in the game grid 
        if(!IsPostBack)
            {
                //Get the game data
                this.GetGame();
            }
               
               
         }

        
         // This Method gets the games data from the database
          
         // @method Getguesttrack
         
         // @return (void)
         

           protected void GetGame()
        {
            //connect to the EF
            using (DefaultConnection db = new DefaultConnection())
            {
                //Query the game results
                var Games = (from allGames in db.Games
                             select allGames);

                //bind the result to the the GameGridView
                GameGridView.DataSource = Games.ToList();
                GameGridView.DataBind();
            }
        }
      }
  }


        