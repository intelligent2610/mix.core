using Mix.Cms.Lib.Models.Cms;
using Mix.Cms.Lib.Services;
using Mix.Cms.Lib.ViewModels.MixAttributeSetDatas;
using Mix.Services;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;

namespace Electrolux.Api.Domain
{
    public static class ElectroluxHelper
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

        public static string GenerateCodeInteger(int length)
        {
            using (MixCmsContext context = new MixCmsContext())
            {
                int max = 99999;
                Random rnd = new Random();
                string result = string.Empty;
                while (string.IsNullOrEmpty(result))
                {
                    int temp = rnd.Next(0, max);
                    string val = temp.ToString();
                    for (int i = 0; i < length - val.Length; i++)
                    {
                        val = $"0{val}";
                    }
                    if (!context.MixAttributeSetValue.Any(m => m.StringValue == val))
                    {
                        result = val;
                    }
                }
                return result;
            }
        }

        public static async Task<bool> SendMessageByStatus(string culture, string status)
        {
            var getData = await Helper.FilterByKeywordAsync<ElectroluxRegisterViewModel>(culture, "register", "equal", "status", status);
            if (getData.IsSucceed)
            {
                foreach (var item in getData.Data)
                {
                    var smsCode = await SendMessage(status, item.Property<string>("so_dien_thoai"));
                    if (!string.IsNullOrEmpty(smsCode))
                    {
                        await SaveValues(item.Id, new JObject()
                        {
                            new JProperty("sms_status", smsCode)
                        }, culture);
                    }
                }
                return true;
            }
            return false;
        }
        public static async Task<string> SendMessage(string status, string phone, string bid = null)
        {
            string culture = MixService.GetConfig<string>("DefaultCulture");
            string message = GetMessage(culture, status);
            if (!string.IsNullOrEmpty(message))
            {
                string account = MixService.GetConfig<string>("sms_acc", culture); // "electrolux";
                string passcode = MixService.GetConfig<string>("sms_pass", culture);// "5ez5w";
                string serviceId = MixService.GetConfig<string>("sms_service_id", culture); // "TEST-DS";
                string smsUrl = MixService.GetConfig<string>("sms_url", culture); //$"http://cloudsms.vietguys.biz:8088/api/?u={account}&pwd={passcode}&from={serviceId}&phone={phone}&sms={message}&bid={bid}";
                string url = string.Format(smsUrl, account, passcode, serviceId, phone, message, bid);
                using (var client = new HttpClient())
                {
                    var tokenResponse = client.GetAsync(url).Result;
                    return await tokenResponse.Content.ReadAsStringAsync();
                }
            }
            return string.Empty;
        }

        public static string GetMessage(string culture, string status)
        {
            switch (status)
            {
                case "Reject":
                    return HttpUtility.UrlEncode(MixService.GetConfig<string>("sms_rejected", culture));
                case "Invalid":
                    return HttpUtility.UrlEncode(MixService.GetConfig<string>("sms_invalid", culture));
                case "Valid":
                    return HttpUtility.UrlEncode(MixService.GetConfig<string>("sms_valid", culture));
                case "Thankyou":
                    return HttpUtility.UrlEncode(MixService.GetConfig<string>("sms_thankyou", culture));
                default:
                    return null;
            }
        }

        public static async Task<bool> SaveValues(string dataId, JObject obj, string culture)
        {
            using (var context = new MixCmsContext())
            {
                foreach (var prop in obj.Properties())
                {
                    var val = context.MixAttributeSetValue.FirstOrDefault(m => m.DataId == dataId && m.AttributeFieldName == prop.Name);
                    if (val != null)
                    {
                        val.StringValue = obj.Value<string>(prop.Name);
                    }
                }
                _ = CacheService.RemoveCacheAsync($"Mix/Cms/Lib/ViewModels/MixAttributeSetDatas/_{dataId}_{culture}");
                await context.SaveChangesAsync();
                return true;
            }
        }

    }
}
