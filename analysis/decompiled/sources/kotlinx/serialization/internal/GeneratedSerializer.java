package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import p4.h;

/* JADX INFO: compiled from: PluginHelperInterfaces.kt */
/* JADX INFO: loaded from: classes.dex */
public interface GeneratedSerializer<T> extends KSerializer<T> {

    /* JADX INFO: compiled from: PluginHelperInterfaces.kt */
    public static final class DefaultImpls {
        public static <T> KSerializer<?>[] typeParametersSerializers(GeneratedSerializer<T> generatedSerializer) {
            h.j(generatedSerializer, "this");
            return PluginHelperInterfacesKt.EMPTY_SERIALIZER_ARRAY;
        }
    }

    KSerializer<?>[] childSerializers();

    KSerializer<?>[] typeParametersSerializers();
}
