const express = require('express');
const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
  res.json({
    message: 'ECS Rodando v4.3 teste da separação de task definition por ambientes',
    timestamp: new Date()
  });
});

app.get('/health', (req, res) => {
  res.status(200).send('ok');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});