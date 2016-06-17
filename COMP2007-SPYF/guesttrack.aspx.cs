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
                DataTable dt = new DataTable();
                dt.Columns.Add("Game ID");
                dt.Columns.Add("Games");
                dt.Columns.Add("Description");
                dt.Columns.Add("Team A");
                dt.Columns.Add("Team B");
                dt.Columns.Add("Spectators");
                dt.Columns.Add("Winner");
                for (int i = 0; i < 100; i++)
                {
                    dt.Rows.Add(new object[] { i, 123 * i, 4567 * i, 2 * i, });
                }

                GameGridView.DataSource = Games.ToList();
                GameGridView.DataBind();
            }
        }

        protected void GameGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
  }


        