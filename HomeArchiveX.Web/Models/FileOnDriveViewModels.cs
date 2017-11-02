using Autofac;
using AutoMapper;
using HomeArchiveX.DataAccess;
using HomeArchiveX.Model;
using HomeArchiveX.Web.App_Start;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace HomeArchiveX.Web.Models
{

    public partial class DriveDto
    {

        public int DriveId { get; set; }
        [Required]
        public string Title { get; set; }
    }




    public class FileOnDriveViewModel
    {
        private readonly Func<IDataService> _dataServiceCreator;
        private IEnumerable<ArchiveEntity> _files;
        public IEnumerable<FileOnDriveTreeViewItem> Items { get; set; }

        public FileOnDriveViewModel(int DriveId)
        {
            var bootstrapper = new Bootstrapper();
            IContainer container = bootstrapper.Bootstrap();
            _dataServiceCreator = container.Resolve<Func<IDataService>>();

            using (var service = _dataServiceCreator())
            {
                _files = service.GetFilesOnDriveByCondition(x => x.DriveId == DriveId, o => o.ArchiveEntityKey);
               Items = LoadItems(null);
            }
        }

        private IEnumerable<FileOnDriveTreeViewItem> LoadItems(int? parentEntityKey)
        {
            List<FileOnDriveTreeViewItem> items = new List<FileOnDriveTreeViewItem>();

            var parendDirs = _files.Where(x => x.ParentEntityKey== parentEntityKey);
            foreach (var item in parendDirs)
            {
                var newItem = new FileOnDriveTreeViewItem(item.ArchiveEntityKey, item.Title, item.EntityType);
                newItem.Items = LoadItems(item.ArchiveEntityKey);
                items.Add(newItem);
            }

            return items;
           
        }
    }

    public class FileOnDriveTreeViewItem
    {
        public FileOnDriveTreeViewItem(int archivEntityId, string title, byte entityType)
        {
            ArchivEntityId = archivEntityId;
            Title = title;
            EntityType = entityType;

            Items = new List<FileOnDriveTreeViewItem>();
        }

        public int ArchivEntityId { get; set; }
        public string Title { get; set; }
        public byte EntityType { get; set; }
        public IEnumerable<FileOnDriveTreeViewItem> Items { get; set; }
    }

    public class SingleFileViewModel {

        private readonly Func<IDataService> _dataServiceCreator;
        public ArchiveEntity Entity { get; set; }
        public SingleFileViewModel(int id)
        {
            var bootstrapper = new Bootstrapper();
            IContainer container = bootstrapper.Bootstrap();
            _dataServiceCreator = container.Resolve<Func<IDataService>>();

            using (var service = _dataServiceCreator())
            {
                Entity = service.GetFileOnDriveDriveById(id);
            }
        }
    }

    #region DriveViewModel
    public class DriveViewModel
    {
        private readonly Func<IDataService> _dataServiceCreator;
        private int RowsCountOnPage { get { return 10; } }
        private int _totalRows;

        public IEnumerable<DriveDto> DriveItems { get; set; }
        public PaginatorViewModel PaginatorViewModel;
        public DriveViewModel(int currentPage)
        {
            var bootstrapper = new Bootstrapper();
            IContainer container = bootstrapper.Bootstrap();
            _dataServiceCreator = container.Resolve<Func<IDataService>>();
            Expression<Func<Drive, bool>> whereExpr = x => x.DriveId.Equals(x.DriveId);
            DriveItems = GetLookupWithCondition(whereExpr, o => o.Title, false, currentPage, RowsCountOnPage);
            _totalRows = GetRowsCountWithCondition(whereExpr);

            PaginatorViewModel = new PaginatorViewModel(RowsCountOnPage, _totalRows, currentPage);
        }


        public IEnumerable<DriveDto> GetLookupWithCondition(Expression<Func<Drive, bool>> where
           , Expression<Func<Drive, object>> orderby, bool isDescending, int index, int length)
        {
            using (var service = _dataServiceCreator())
            {
                return service.GetDrivesByCondition(where, orderby, isDescending, index, length)
                        .Select(Mapper.Map<Drive, DriveDto>);
            }
        }



        public int GetRowsCountWithCondition(Expression<Func<Drive, bool>> where)
        {
            using (var service = _dataServiceCreator())
            {
                return service.GetCountDrivesByCondition(where);
            }
        }

    }

    #endregion




}