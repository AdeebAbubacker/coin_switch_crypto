


import mongoose from 'mongoose';

const connectDB = () => {
    const localConnectionString = "mongodb://127.0.0.1:27017/coin_switch_crypto";

    return mongoose.connect(localConnectionString);;
}

export default connectDB;
