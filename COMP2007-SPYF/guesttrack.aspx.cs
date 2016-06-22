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
        private object Records;

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
                var Games = (from allGames in db.Game
                             select allGames);

              

                GameGridView.DataSource = Games.ToList();
                GameGridView.DataBind();
            }
        }

        protected void GameGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Store which row was clicked 
            int selectedRow = e.RowIndex;

            //get the selected GameID using the Grid's datakey collection
            int GameID = Convert.ToInt16(GameGridView.DataKeys[selectedRow].Values["GameID"]);

            //use the EF to find the selected data
            using (DefaultConnection db = new DefaultConnection())
            {
                //create object of the game class and add data into it
                Game deletedGame = (from Game in db.Game
                                    where Game.GameID == GameID
                                    select Game).FirstOrDefault();

                //remove the selected game from the db
                db.Game.Remove(deletedGame);

                //Refresh the Grid
                this.GetGame();
            }
        }


                 protected void GameGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //set the page number
            GameGridView.PageIndex = e.NewPageIndex;

            //refresh the grid
            this.GetGame();
        }


        }
   }
    
  


        