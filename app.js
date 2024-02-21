import express from 'express';
const app = express();
import connectDB from './db/connect.js';
import cryptoModel from './models/cryptoModel.js';


//middleware

app.use(express.json());

app.get('/api/v1/crypto', async (req, res) => {
    try {
     
        const cryptos = await cryptoModel.find({}).sort({ fluctuation: 1 }); 
        res.status(200).json({ cryptos })
    } catch (e) {
        res.status(500).json({ msg: e })
    }
});

//sort list based on fluctuations in ascending
app.get('/api/v1/crypto/topgainers', async (req, res) => {
    try {
        const crypto = await cryptoModel.find({})
        res.status(200).json({ crypto })
    } catch (e) {
        res.status(500).json({ msg: e })
    }
});

//sort list based on fluctuations in descending
app.get('/api/v1/crypto/toplosers', async (req, res) => {
    try {
        const crypto = await cryptoModel.find({})
        res.status(200).json({ crypto })
    } catch (e) {
        res.status(500).json({ msg: e })
    }
});


app.post('/api/v1/crypto', async (req, res) => {
    try {
        const crypto = await cryptoModel.create(req.body)
        res.status(200).json({ crypto })
    } catch (e) {
        res.status(500).json({ msg: e })
    }
});



const port = 3000;
const start = async () => {
    try {
        await connectDB();
        console.log('connected to db');
        app.listen(port, console.log(`Server is listening on port ${port}`));
    } catch (e) {
        console.log('not connected to db');
        console.log(e);
    }
}

start();



// {
//     "name": "Amruta Task",
//     "completed": false
//   }
// This is the raw body to be posted
