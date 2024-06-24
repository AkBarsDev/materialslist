using System.IO.Compression;
namespace B2H.MaterialsList.API.WebStorage
{
    public static class Tools
    {
        public static byte[] GetByteFile(string pathFile)
        {
            using (var memoryStream = new MemoryStream())
            {
                using (var file = File.OpenRead(pathFile))
                {
                    file.CopyTo(memoryStream);
                }
                memoryStream.Seek(0, SeekOrigin.Begin);
                return memoryStream.ToArray();
            }
        }
        public static byte[] GetArchive(string[] files)
        {
            using (var memoryStream = new MemoryStream())
            {
                // Create a new zip archive
                using (var zipArchive = new ZipArchive(memoryStream, ZipArchiveMode.Create, true))
                {
                    foreach (var file in files)
                    {
                        var fileInfo = new FileInfo(file);

                        // Create a new entry in the zip archive for each file
                        var entry = zipArchive.CreateEntry(fileInfo.Name);

                        // Write the file contents into the entry
                        using (var entryStream = entry.Open())
                        using (var fileStream = new FileStream(file, FileMode.Open, FileAccess.Read))
                        {
                            fileStream.CopyTo(entryStream);
                        }
                    }
                }
                memoryStream.Seek(0, SeekOrigin.Begin);
                return memoryStream.ToArray();
            }
        }
    }
}
