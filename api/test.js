const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
	res.status(200).json({ "ML": "it works" });
});

router.get('/meeting', (req, res) => {
	res.status(200).json({ "ML": "im on the meeting" });
});


module.exports = router