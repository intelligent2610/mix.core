﻿using System;
using System.Collections.Generic;

namespace Mix.Cms.Lib.Models.Cms
{
    public partial class MixAttributeField
    {
        public int Id { get; set; }
        public int AttributeSetId { get; set; }
        public string Title { get; set; }
        public int DataType { get; set; }
        public string DefaultValue { get; set; }
        public string Name { get; set; }
        public string Options { get; set; }
        public bool IsRequire { get; set; }
        public bool IsEncrypt { get; set; }
        public bool IsSelect { get; set; }
        public bool IsUnique { get; set; }
        public DateTime CreatedDateTime { get; set; }
        public int Priority { get; set; }
        public int Status { get; set; }

        public virtual MixAttributeSet MixAttributeSet { get; set; }
    }
}
