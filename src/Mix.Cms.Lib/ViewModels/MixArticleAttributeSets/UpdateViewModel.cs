﻿using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore.Storage;
using Mix.Cms.Lib.Models.Cms;
using Mix.Cms.Lib.ViewModels.MixAttributeSets;
using Mix.Domain.Core.ViewModels;
using Mix.Domain.Data.ViewModels;
using Newtonsoft.Json;

namespace Mix.Cms.Lib.ViewModels.MixArticleAttributeSets
{
    public class UpdateViewModel
       : ViewModelBase<MixCmsContext, MixArticleAttributeSet, UpdateViewModel>
    {
        public UpdateViewModel(MixArticleAttributeSet model, MixCmsContext _context = null, IDbContextTransaction _transaction = null)
            : base(model, _context, _transaction)
        {
        }

        public UpdateViewModel() : base()
        {
        }

        [JsonProperty("attributeSetId")]
        public int AttributeSetId { get; set; }

        [JsonProperty("articleId")]
        public int ArticleId { get; set; }

        [JsonProperty("isActived")]
        public bool IsActived { get; set; }

        [JsonProperty("image")]
        public string Image { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("status")]
        public MixEnums.MixContentStatus Status { get; set; }
        #region Views
        [JsonProperty("attributeSet")]
        public MixAttributeSets.ContentUpdateViewModel AttributeSet { get; set; }

        #endregion Views

        #region overrides

        public override void ExpandView(MixCmsContext _context = null, IDbContextTransaction _transaction = null)
        {
            var getAttributeSet = MixAttributeSets.ContentUpdateViewModel.Repository.GetSingleModel(p => p.Id == AttributeSetId, _context: _context, _transaction: _transaction
            );
            if (getAttributeSet.IsSucceed)
            {
                AttributeSet = getAttributeSet.Data;
            }
        }

        #region Async

        public override async Task<RepositoryResponse<bool>> SaveSubModelsAsync(MixArticleAttributeSet parent, MixCmsContext _context, IDbContextTransaction _transaction)
        {
            var result = new RepositoryResponse<bool>() { IsSucceed = true };

            //Save current set attribute
            var saveResult = await AttributeSet.SaveModelAsync(true, _context, _transaction);
            ViewModelHelper.HandleResult(saveResult, ref result);
            return result;
        }

        #endregion Async

        #endregion overrides
    }
}
