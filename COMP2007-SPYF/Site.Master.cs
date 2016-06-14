using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_SPYF
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            addActiveClass();

        }
        /**
         * This method adds the active class to each LI in the main 
         * navbar according to the page title 
         * 
         * @method AddActiveClass
         * @return {String}
         **/

        private string addActiveClass()
        {
            switch (Page.Title)
            {
                case "Home Page":
                    home.Attributes.Add("class", "active");
                    break;

                case "About":
                    about.Attributes.Add("class", "active");
                    break;

                case "Contact":
                    contact.Attributes.Add("class", "active");
                    break;
            }

            return Page.Title;
        }
    }
}