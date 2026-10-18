package kotlinx.serialization.modules;

import gd.p;
import java.util.List;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import rd.h;
import wd.b;

/* JADX INFO: compiled from: SerializersModule.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class SerializersModule {
    private SerializersModule() {
    }

    public /* synthetic */ SerializersModule(h hVar) {
        this();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KSerializer getContextual$default(SerializersModule serializersModule, b bVar, List list, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
        }
        if ((i10 & 2) != 0) {
            list = p.f8070h;
        }
        return serializersModule.getContextual(bVar, list);
    }

    public abstract void dumpTo(SerializersModuleCollector serializersModuleCollector);

    public abstract <T> KSerializer<T> getContextual(b<T> bVar, List<? extends KSerializer<?>> list);

    public abstract <T> DeserializationStrategy<? extends T> getPolymorphic(b<? super T> bVar, String str);

    public abstract <T> SerializationStrategy<T> getPolymorphic(b<? super T> bVar, T t10);
}
