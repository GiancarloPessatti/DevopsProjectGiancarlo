const express = require('express');
const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
  res.json({
    message: 'ECS Rodando v2',
    timestamp: new Date()
  });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});