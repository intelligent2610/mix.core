using Mix.Domain.Core.ViewModels;
using Newtonsoft.Json;

namespace Electrolux.Api.Domain.ViewModels
{
    public class ElectroluxPaginationModel<T>: PaginationModel<T>
    {
        [JsonProperty("totalGift")]
        public long TotalGift { get; set; }

        public ElectroluxPaginationModel(PaginationModel<T> model)
        {
            Items = model.Items;
            PageIndex = model.Page;
            PageSize = model.PageSize;
            TotalItems = model.TotalItems;
            TotalPage = model.TotalPage;
        }
    }
}
