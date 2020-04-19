﻿// Licensed to the Mixcore Foundation under one or more agreements.
// The Mixcore Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.

using Microsoft.AspNetCore.Mvc;
using Mix.Cms.Lib;
using Mix.Cms.Lib.Models.Cms;
using Mix.Cms.Lib.ViewModels.MixRelatedAttributeSets;
using Mix.Domain.Core.ViewModels;
using Newtonsoft.Json.Linq;
using System;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace Mix.Cms.Api.RestFul.Controllers.v1
{
    [Produces("application/json")]
    [Route("api/v1/rest/{culture}/related-attribute-set/portal")]
    public class ApiRelatedAttributeSetPortalController :
        BaseRestApiController<MixCmsContext, MixRelatedAttributeSet>
    {
        // GET: api/v1/rest/{culture}/related-attribute-set
        [HttpGet]
        public async Task<ActionResult<PaginationModel<UpdateViewModel>>> Get()
        {
            bool isStatus = int.TryParse(Request.Query["status"], out int status);
            bool isFromDate = DateTime.TryParse(Request.Query["fromDate"], out DateTime fromDate);
            bool isToDate = DateTime.TryParse(Request.Query["toDate"], out DateTime toDate);
            string keyword = Request.Query["keyword"];
            string parentType = Request.Query["parentType"];
            string parentId = Request.Query["parentId"];
            Expression<Func<MixRelatedAttributeSet, bool>> predicate = model =>
                (!isStatus || model.Status == status)
                && (!isFromDate || model.CreatedDateTime >= fromDate)
                && (!isToDate || model.CreatedDateTime <= toDate)
                && (string.IsNullOrEmpty(parentId)
                 || model.ParentId.Equals(keyword)
                 )
                && (string.IsNullOrEmpty(parentType)
                 || model.ParentId.Equals(parentType)
                 );
            var getData = await base.GetListAsync<UpdateViewModel>(predicate);
            if (getData.IsSucceed)
            {
                return Ok(getData.Data);
            }
            else
            {
                return BadRequest(getData.Errors);
            }
        }
        
        
        // GET: api/v1/rest/{culture}/related-attribute-set/5
        [HttpGet("{id}")]
        public async Task<ActionResult<UpdateViewModel>> Get(int id)
        {
            Expression<Func<MixRelatedAttributeSet, bool>> predicate = null;
            MixRelatedAttributeSet risk = null;
            if (id == 0)
            {
                var data = new UpdateViewModel();
                data.ExpandView();
                return Ok(data);
            }
            else
            {
                predicate = model => model.Specificulture == _lang && (model.Id == id);

                var getData = await base.GetSingleAsync<UpdateViewModel>(predicate);
                if (getData.IsSucceed)
                {
                    return getData.Data;
                }
                else
                {
                    return NotFound();
                }
            }
        }

        // PUT: api/v1/rest/{culture}/related-attribute-set/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, [FromBody]UpdateViewModel data)
        {
            if (id != data.Id)
            {
                return BadRequest();
            }
            var result = await base.SaveAsync(data, true);
            if (result.IsSucceed)
            {
                return NoContent();
            }
            else
            {
                if (!Exists(id))
                {
                    return NotFound();
                }
                else
                {
                    return BadRequest(result.Errors);
                }
            }
        }

        // POST: api/v1/rest/{culture}/related-attribute-set
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPost]
        public async Task<ActionResult<MixRelatedAttributeSet>> Post([FromBody]UpdateViewModel data)
        {
            var result = await SaveAsync(data, true);
            if (result.IsSucceed)
            {
                return Ok(result.Data);
            }
            else
            {
                return BadRequest(result.Errors);
            }
        }
        // PATCH: api/v1/rest/en-us/related-attribute-set/portal/5
        [HttpPatch("{id}")]
        public async Task<IActionResult> Patch(int id, [FromBody]JObject fields)
        {
            var result = await base.GetSingleAsync<UpdateViewModel>(m => m.Id == id);
            if (result.IsSucceed)
            {
                var saveResult = await result.Data.UpdateFieldsAsync(fields);
                if (saveResult.IsSucceed)
                {
                    return NoContent();
                }
                else
                {
                    return BadRequest(saveResult.Errors);
                }
            }
            else
            {
                if (!Exists(id))
                {
                    return NotFound();
                }
                else
                {
                    return BadRequest(result.Errors);
                }
            }
        }
        // DELETE: api/v1/rest/{culture}/related-attribute-set/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<MixRelatedAttributeSet>> Delete(int id)
        {
            Expression<Func<MixRelatedAttributeSet, bool>> predicate = m => m.Id == id && m.Specificulture == _lang;
            var result = await base.DeleteAsync<UpdateViewModel>(predicate, false);
            if (result.IsSucceed)
            {
                return Ok(result.Data);
            }
            else
            {
                return BadRequest(result.Errors);
            }

        }

        private bool Exists(int id)
        {
            return UpdateViewModel.Repository.CheckIsExists(e => e.Id == id);
        }
    }

}