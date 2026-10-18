package kotlinx.serialization;

/* JADX INFO: compiled from: SerialFormat.kt */
/* JADX INFO: loaded from: classes.dex */
public interface StringFormat extends SerialFormat {
    <T> T decodeFromString(DeserializationStrategy<T> deserializationStrategy, String str);

    <T> String encodeToString(SerializationStrategy<? super T> serializationStrategy, T t10);
}
