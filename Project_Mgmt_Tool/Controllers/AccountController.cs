using EmailServiceNew;
using Microsoft.AspNetCore.Mvc;

namespace Project_Mgmt_Tool.Controllers
{
    public class AccountController : Controller
    {

        private readonly EmailService _emailService;

        public AccountController(EmailService emailService)
        {
            _emailService = emailService;
        }

        public IActionResult AccountIndex()
        {
            return View();
        }

        public async Task<IActionResult> SendEmail()
        {
            // Example usage
            await _emailService.SendEmailAysnc("yashmote002@gmail.com", "Test Subject", "<h1>Hello!</h1>");
            return Ok("Email sent successfully.");
        }
    }
}
