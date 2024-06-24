using System;

namespace B2H.MaterialsList.API.DataTransfer.Dto
{
    public class ShortMaterialDto
    {
        public ShortMaterialDto()
        {
        }

        public ShortMaterialDto(Guid id, string name, DateTime? createAt, DateTime? updateAt, int? fileId)
        {
            Id = id;
            Name = name;
            CreateAt = createAt;
            UpdateAt = updateAt;
            FileId = fileId;
        }
        public Guid Id { get; set; } = Guid.Empty;
        public string Name { get; set; }
        public DateTime? CreateAt { get; set; }
        public DateTime? UpdateAt { get; set; }
        public int? FileId { get; set; }
    }
}
