﻿using AspNetCoreBookAPI.Models;

public class Publisher
{
    public int PublisherId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? Address { get; set; }

    public ICollection<Book> Books { get; set; } = new List<Book>();
}
