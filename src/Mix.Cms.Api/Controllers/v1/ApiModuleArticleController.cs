﻿// Licensed to the Mix I/O Foundation under one or more agreements.
// The Mix I/O Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.

using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Mix.Domain.Core.ViewModels;
using Mix.Cms.Lib.Models.Cms;
using Mix.Cms.Lib;
using Mix.Cms.Lib.Services;
using System.Linq.Expressions;
using System.Web;
using Mix.Cms.Lib.ViewModels.MixModulePosts;
using Microsoft.AspNetCore.SignalR;
using Mix.Cms.Hub;
using Microsoft.Extensions.Caching.Memory;

namespace Mix.Cms.Api.Controllers.v1
{
    [Produces("application/json")]
    [Route("api/v1/{culture}/module-article")]
    [ApiExplorerSettings(IgnoreApi = false, GroupName = nameof(ApiModulePostController))]
    public class ApiModulePostController :
        BaseGenericApiController<MixCmsContext, MixModulePost>
    {
        public ApiModulePostController(IMemoryCache memoryCache, IHubContext<PortalHub> hubContext) : base(memoryCache, hubContext)
        {

        }
        #region Get

        // GET api/module/id
        [HttpGet, HttpOptions]
        [Route("delete/{moduleId}/{articleId}")]
        public async Task<RepositoryResponse<MixModulePost>> DeleteAsync(int moduleId, int articleId)
        {
            return await base.DeleteAsync<ReadViewModel>(
                model => model.PostId == articleId && model.ModuleId == moduleId && model.Specificulture == _lang, true);
        }

        // GET api/modules/id
        [HttpGet, HttpOptions]
        [Route("detail/{moduleId}/{articleId}/{viewType}")]
        public async Task<ActionResult<JObject>> Details(string viewType, int? moduleId, int? articleId)
        {
            string msg = string.Empty;
            switch (viewType)
            {

                default:
                    if (moduleId.HasValue && articleId.HasValue)
                    {
                        Expression<Func<MixModulePost, bool>> predicate = model => model.ModuleId == moduleId && model.PostId == articleId && model.Specificulture == _lang;
                        var portalResult = await base.GetSingleAsync<ReadViewModel>($"{viewType}_{moduleId}_{articleId}", predicate);
                        if (portalResult.IsSucceed)
                        {
                            portalResult.Data.Post.DetailsUrl = MixCmsHelper.GetRouterUrl("Post", new { portalResult.Data.Post.SeoName }, Request, Url);
                        }

                        return Ok(JObject.FromObject(portalResult));
                    }
                    else
                    {
                        var model = new MixModulePost()
                        {
                            Specificulture = _lang,
                            Status = MixService.GetConfig<int>("DefaultStatus"),
                            Priority = ReadViewModel.Repository.Max(a => a.Priority).Data + 1
                        };

                        RepositoryResponse<ReadViewModel> result = await base.GetSingleAsync<ReadViewModel>($"{viewType}_default", null, model);
                        return Ok(JObject.FromObject(result));
                    }
            }
        }


        #endregion Get

        #region Post

        // POST api/module
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme, Roles = "SuperAdmin, Admin")]
        [HttpPost, HttpOptions]
        [Route("save")]
        public async Task<RepositoryResponse<ReadViewModel>> Save([FromBody]ReadViewModel model)
        {
            if (model != null)
            {
                var result = await base.SaveAsync<ReadViewModel>(model, true);
                return result;
            }
            return new RepositoryResponse<ReadViewModel>() { Status = 501 };
        }

        // POST api/module
        [HttpPost, HttpOptions]
        [Route("save/{id}/{articleId}")]
        public async Task<RepositoryResponse<MixModulePost>> SaveFields(int moduleId, int articleId, [FromBody]List<EntityField> fields)
        {
            if (fields != null)
            {
                var result = new RepositoryResponse<MixModulePost>() { IsSucceed = true };
                foreach (var property in fields)
                {
                    if (result.IsSucceed)
                    {
                        result = await ReadViewModel.Repository.UpdateFieldsAsync(c => c.ModuleId == moduleId && c.PostId == articleId && c.Specificulture == _lang, fields).ConfigureAwait(false);
                    }
                    else
                    {
                        break;
                    }

                }
                return result;
            }
            return new RepositoryResponse<MixModulePost>();
        }

        // GET api/module
        [HttpPost, HttpOptions]
        [Route("list")]
        public async Task<ActionResult<JObject>> GetList(
            [FromBody] RequestPaging request)
        {
            var query = HttpUtility.ParseQueryString(request.Query ?? "");
            bool isModule = int.TryParse(query.Get("module_id"), out int moduleId);
            bool isPost = int.TryParse(query.Get("article_id"), out int articleId);
            ParseRequestPagingDate(request);
            Expression<Func<MixModulePost, bool>> predicate = model =>
                        model.Specificulture == _lang
                        && (!isModule || model.ModuleId == moduleId)
                        && (!isPost || model.PostId == articleId)
                        && (!request.Status.HasValue || model.Status == request.Status.Value)
                        && (string.IsNullOrWhiteSpace(request.Keyword)
                            || (model.Description.Contains(request.Keyword)
                            ))
                        ;
            string key = $"{request.Key}_{request.Query}_{request.PageSize}_{request.PageIndex}";
            switch (request.Key)
            {
                default:

                    var listItemResult = await base.GetListAsync<ReadViewModel>(key, request, predicate);
                    listItemResult.Data.Items.ForEach(n => n.Post.DetailsUrl = MixCmsHelper.GetRouterUrl(
                                "article",  new { id = n.Post.Id, seoName = n.Post.SeoName }, Request, Url));
                    return JObject.FromObject(listItemResult);
            }
        }
        
        // POST api/update-infos
        [HttpPost, HttpOptions]
        [Route("update-infos")]
        public async Task<RepositoryResponse<List<ReadViewModel>>> UpdateInfos([FromBody]List<ReadViewModel> models)
        {
            if (models != null)
            {                
                return await base.SaveListAsync(models, false);
            }
            else
            {
                return new RepositoryResponse<List<ReadViewModel>>();
            }
        }
        // POST api/update-infos
        [HttpPost, HttpOptions]
        [Route("save-list")]
        public async Task<RepositoryResponse<List<ReadViewModel>>> SaveList([FromBody]List<ReadViewModel> models)
        {
            if (models != null)
            {
                return await base.SaveListAsync(models, false);
            }
            else
            {
                return new RepositoryResponse<List<ReadViewModel>>();
            }
        }
        #endregion Post
    }
}