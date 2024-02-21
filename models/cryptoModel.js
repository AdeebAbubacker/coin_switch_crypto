
import mongoose from 'mongoose';
const { Decimal128 } = mongoose.Types;

const CryptoSchema = new mongoose.Schema({
    crypto_code: {
        type: String,
        required: true
    },
    crypto_name: {
        type: String,
        required: true
    },
    image_url: {
        type: String,
        required: true
    },
    value: {
        type: Decimal128, // Use Decimal128 for high precision
        required: true
    },
    fluctuation: {
        type: Decimal128, // Use Decimal128 for high precision
        required: true
    }
});

// Define a method to convert Decimal128 fields to regular numbers
CryptoSchema.methods.toJSON = function () {
    const obj = this.toObject();
    obj.value = parseFloat(obj.value.toString());
    obj.fluctuation = parseFloat(obj.fluctuation.toString());
    return obj;
};

export default mongoose.model('Crypto', CryptoSchema, 'all_crypto');
