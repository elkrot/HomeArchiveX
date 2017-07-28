using System;
using System.Linq;
using HomeArchiveX.Model;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

namespace HomeArchiveX.WpfUI.Wrapper
{
    public partial class ArchiveEntityWrapper : ModelWrapper<ArchiveEntity>
    {
        public ArchiveEntityWrapper(ArchiveEntity model) : base(model)
        {
        }

        #region ArchiveEntityKey
        public System.Int32 ArchiveEntityKey
        {
            get { return GetValue<System.Int32>(); }
            set { SetValue(value); }
        }

        public System.Int32 ArchiveEntityKeyOriginalValue => GetOriginalValue<System.Int32>(nameof(ArchiveEntityKey));

        public bool ArchiveEntityKeyIsChanged => GetIsChanged(nameof(ArchiveEntityKey));

        #endregion

        #region ParentEntityKey
        public System.Nullable<System.Int32> ParentEntityKey
        {
            get { return GetValue<System.Nullable<System.Int32>>(); }
            set { SetValue(value); }
        }

        public System.Nullable<System.Int32> ParentEntityKeyOriginalValue => GetOriginalValue<System.Nullable<System.Int32>>(nameof(ParentEntityKey));

        public bool ParentEntityKeyIsChanged => GetIsChanged(nameof(ParentEntityKey));
        #endregion

        #region DriveId
        public System.Nullable<System.Int32> DriveId
        {
            get { return GetValue<System.Nullable<System.Int32>>(); }
            set { SetValue(value); }
        }

        public System.Nullable<System.Int32> DriveIdOriginalValue => GetOriginalValue<System.Nullable<System.Int32>>(nameof(DriveId));

        public bool DriveIdIsChanged => GetIsChanged(nameof(DriveId));
        #endregion

        #region Title
        public System.String Title
        {
            get { return GetValue<System.String>(); }
            set { SetValue(value); }
        }

        public System.String TitleOriginalValue => GetOriginalValue<System.String>(nameof(Title));

        public bool TitleIsChanged => GetIsChanged(nameof(Title));
        #endregion

        #region EntityType
        public System.Byte EntityType
        {
            get { return GetValue<System.Byte>(); }
            set { SetValue(value); }
        }

        public System.Byte EntityTypeOriginalValue => GetOriginalValue<System.Byte>(nameof(EntityType));

        public bool EntityTypeIsChanged => GetIsChanged(nameof(EntityType));
        #endregion

        #region EntityPath
        public System.String EntityPath
        {
            get { return GetValue<System.String>(); }
            set { SetValue(value); }
        }

        public System.String EntityPathOriginalValue => GetOriginalValue<System.String>(nameof(EntityPath));

        public bool EntityPathIsChanged => GetIsChanged(nameof(EntityPath));
        #endregion

        #region EntityExtension
        public System.String EntityExtension
        {
            get { return GetValue<System.String>(); }
            set { SetValue(value); }
        }

        public System.String EntityExtensionOriginalValue => GetOriginalValue<System.String>(nameof(EntityExtension));

        public bool EntityExtensionIsChanged => GetIsChanged(nameof(EntityExtension));
        #endregion

        #region Description
        public System.String Description
        {
            get { return GetValue<System.String>(); }
            set { SetValue(value); }
        }

        public System.String DescriptionOriginalValue => GetOriginalValue<System.String>(nameof(Description));

        public bool DescriptionIsChanged => GetIsChanged(nameof(Description));
        #endregion

        #region HashCode
        public System.Nullable<System.Int32> HashCode
        {
            get { return GetValue<System.Nullable<System.Int32>>(); }
            set { SetValue(value); }
        }

        public System.Nullable<System.Int32> HashCodeOriginalValue => GetOriginalValue<System.Nullable<System.Int32>>(nameof(HashCode));

        public bool HashCodeIsChanged => GetIsChanged(nameof(HashCode));
        #endregion

        #region CreatedDate
        public System.DateTime CreatedDate
        {
            get { return GetValue<System.DateTime>(); }
            set { SetValue(value); }
        }

        public System.DateTime CreatedDateOriginalValue => GetOriginalValue<System.DateTime>(nameof(CreatedDate));

        public bool CreatedDateIsChanged => GetIsChanged(nameof(CreatedDate));
        #endregion




        private byte[] EntityInfo {get { return GetValue<byte[]>(); } }

        private byte[] MFileInfo { get { return GetValue<byte[]>(); } }


        #region FileInfo
        public FileInfo FileInfo
        {
            get {
                var data = EntityInfo;
                if (data == null || data.Count() <= 1) return default(FileInfo);
                using (MemoryStream stream = new MemoryStream(data))
                {
                    BinaryFormatter formatter = new BinaryFormatter();
                    object obj = formatter.Deserialize(stream);
                    if (!(obj is FileInfo))
                        return null;
                    return (FileInfo)obj;
                }
            }

        }

        #endregion
        #region MediaInfo
        public Dictionary<string,string> MediaInfo
        {
            get
            {
                var data = EntityInfo;
                if (data == null || data.Count() <= 1) return default(Dictionary<string, string>);
                using (MemoryStream stream = new MemoryStream(data))
                {
                    BinaryFormatter formatter = new BinaryFormatter();
                    return (Dictionary<string, string>)formatter.Deserialize(stream);
                }
            }

        }

        #endregion
        public ICollection<CategoryToEntity> CategoryToEntities { get; set; }
        public  ICollection<ImageToEntity> ImageToEntities { get; set; }
        public  TagToEntity TagToEntity { get; set; }


    }
}
