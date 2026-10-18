package kotlinx.serialization;

/* JADX INFO: compiled from: SerialFormat.kt */
/* JADX INFO: loaded from: classes.dex */
public interface BinaryFormat extends SerialFormat {
    <T> T decodeFromByteArray(DeserializationStrategy<T> deserializationStrategy, byte[] bArr);
}
