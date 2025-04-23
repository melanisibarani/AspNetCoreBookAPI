namespace AspNetCoreBookAPI.Dtos
{
    public class CreateBookDto
    {
        public string Title { get; set; } = string.Empty;
        public string Author { get; set; } = string.Empty;
        public string? Genre { get; set; }
        public decimal Price { get; set; }
        public string? Description { get; set; }
        public int PublisherId { get; set; }
        public List<int> CategoryIds { get; set; } = new();
    }
}
