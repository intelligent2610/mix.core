﻿using System;
using System.Collections.Generic;

namespace Mix.Cms.Lib.Models.Cms
{
    public partial class MixRelatedData
    {
        public int Id { get; set; }
        public string Specificulture { get; set; }
        public string DataId { get; set; }
        public int Type { get; set; }
        public string ParentId { get; set; }
        public string ParentType { get; set; }
        public int AttributeSetId { get; set; }
        public string AttributeSetName { get; set; }
        public string Description { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDateTime { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? LastModified { get; set; }
        public int Priority { get; set; }
        public string Status { get; set; }
    }
}
