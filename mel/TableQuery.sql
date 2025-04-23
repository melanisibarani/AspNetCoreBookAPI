CREATE TABLE Publishers (
    PublisherId INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200)
);

CREATE TABLE Categories (
    CategoryId INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE Books (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(200) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(100),
    Price DECIMAL(18, 2) NOT NULL,
    Description VARCHAR(2000),
    PublisherId INT NOT NULL,
    FOREIGN KEY (PublisherId) REFERENCES Publishers(PublisherId)
      --  ON DELETE RESTRICT -- Mencegah penghapusan publisher jika ada buku terkait
);

CREATE TABLE BookCategories (
    BookId INT NOT NULL,
    CategoryId INT NOT NULL,
    PRIMARY KEY (BookId, CategoryId),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
        ON DELETE CASCADE, -- Jika buku dihapus, hapus juga relasinya
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
        ON DELETE CASCADE -- Jika kategori dihapus, hapus juga relasinya
);