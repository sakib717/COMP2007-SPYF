using COMP2007_SPYF.Models;
using System;

namespace COMP2007_SPYF
{
    public partial class MatchDetails : System.Web.UI.Page
    {
        private object GameIDTextBox;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            //Redirect Back to the Match Game Tracker 
            Response.Redirect("~/MatchDetails.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            //Use EF to connect to the server
            using (DefaultConnection db = new DefaultConnection())
            {
                //use the SPYF Model to create new match & to save the match
                Game newGame = new Game();

                //Add Data to Record

                newGame.GameID = Convert.ToInt16(GameIDTextBox);
                newGame.Name = NameTextBox.Text;
                newGame.Description = DescriptionTextBox.Text;
                newGame.TotalPointsA = Convert.ToInt32(TotalPointsATextBox.Text);
                newGame.TotalPointsB = Convert.ToInt32(TotalPointsBTextBox.Text);
                newGame.Spectators = Convert.ToInt32(SpectatorsTextBox.Text);
                newGame.WinningTeam = WinningTeamTextBox.Text;

                //Use LINQ to ADD.NET to add/insert new student into the database 
                db.Game.Add(newGame);

                //Save the changes 
                db.SaveChanges();

                //Redirect back to the updated match track page
                Response.Redirect("~/MatchDetails.aspx");

            }
        }
    }
}