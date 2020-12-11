using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;

namespace Electrolux.Api.Domain
{
    public static class Helper
    {
        public static string GenerateCode()
        {
            string allowed = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            string result = string.Empty;
            Random rnd = new Random();
            for (int i = 0; i < 6; i++)
            {
                result += allowed[rnd.Next(0, allowed.Length - 1)];
            }
            return result;
        }
        public static async Task<string> SendMessage(int status, string phone, string code, string bid = null)
        {
            string message = GetMessage(111, phone, code);

            string account = "electrolux";
            string passcode = "5ez5w";
            string serviceId = "TEST-DS";
            //phone = "84932758850";
            string url = $"http://cloudsms.vietguys.biz:8088/api/?u={account}&pwd={passcode}&from={serviceId}&phone={phone}&sms={message}&bid={bid}";
            using (var client = new HttpClient())
            {
                var tokenResponse = client.GetAsync(url).Result;
                return await tokenResponse.Content.ReadAsStringAsync();
            }
        }

        public static string GetMessage(int status, string phone, string code)
        {
            DateTime startDate = new DateTime(2018, 06, 19);
            DateTime endDate = new DateTime(2018, 07, 30);
            string message = "Anh/Chi dung quen minh co hen voi chung toi vao luc 19h ngay 1/1/2020 Hen gap lai. Tran Trong !";
            switch (status)
            {
                case 0:
                    message = $"Bridgestone Viet Nam gui ban ma: {code}. " +
                        $"Ma co gia tri quy doi 01 the xang Flexicard tri gia 300K khi mua 02 lop Turanza GR100 " +
                        $"tai he thong dai ly cua Bridgestone tren toan quoc. Hieu luc den { endDate.ToString("dd/MM/yyyy") }. " +
                        $"Luu y: moi ma se co gia tri quy doi 02 the xang tuong duong 04 lop. " +
                        $"Hotline: 1900545468";
                    break;
                case -1:
                    message = $"Thoi gian tham du chuong trinh Turanza se bat dau tu ngay " +
                        $"{ startDate.ToString("dd/MM/yyyy") } den ngay { endDate.ToString("dd/MM/yyyy") }. " +
                        $"Moi thac mac xin lien he 1900545468. Xin cam on.";
                    break;
                case -2:
                    //var register = BSRegisterViewModel.Repository.GetSingleModel(m => m.Phone == phone && m.Status != (int)SWStatus.Deleted).Data;
                    message = $"SDT cua Quy khach da duoc su dung tham gia chuong " +
                        $"trinh ngay 12/20 va khong the tiep tuc tham gia. " +
                        $"Cam on Quy khach da dong hanh cung Bridgestone. LH:1900545468";
                    break;
                case -3:
                    message = $"Chuong trinh tang the xang 300K khi mua 02 lop Turanza GR100 " +
                        $"da ket thuc tu ngay 10/12/2020 " +
                        $"Cam on Quy khach da dong hanh cung Bridgestone. Hotline 1900545468";
                    break;
                default:
                    message = "Anh/Chi dung quen minh co hen voi chung toi vao luc 19h ngay 1/1/2020 Hen gap lai. Tran Trong !";
                    break;
            }
            return HttpUtility.UrlEncode(message);
        }
    }
}
