const express = require('express');
const sqlite3 = require('sqlite3').verbose();
const app = express();
const port = 3000;

// Open SQLite database
const db = new sqlite3.Database('./Unconfirmed.db');

app.use(express.json());
app.use(express.static('public')); // For serving static files

// Route to get all products
app.get('/api/products', (req, res) => {
    db.all('SELECT * FROM products', [], (err, rows) => {
        if (err) {
            throw err;
        }
        res.json(rows);
    });
});

// Start server
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});