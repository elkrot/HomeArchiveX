
using System.Collections.Generic;

using HomeArchiveX.Web.Models;
using HomeArchiveX.Model;

namespace HomeArchiveX.Web.App_Start
{
    public class MappingProfile: AutoMapper.Profile
    {
        public MappingProfile()
        {
        CreateMap<Drive, DriveDto>();
        CreateMap<DriveDto, Drive>();
        }
    }
}