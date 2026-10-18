package kotlinx.serialization.modules;

import java.util.List;
import kotlinx.serialization.KSerializer;
import p4.h;
import qd.l;

/* JADX INFO: compiled from: SerializersModule.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ContextualProvider {

    /* JADX INFO: compiled from: SerializersModule.kt */
    public static final class Argless extends ContextualProvider {
        private final KSerializer<?> serializer;

        public boolean equals(Object obj) {
            return (obj instanceof Argless) && h.c(((Argless) obj).serializer, this.serializer);
        }

        public final KSerializer<?> getSerializer() {
            return this.serializer;
        }

        public int hashCode() {
            return this.serializer.hashCode();
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        public KSerializer<?> invoke(List<? extends KSerializer<?>> list) {
            h.j(list, "typeArgumentsSerializers");
            return this.serializer;
        }
    }

    /* JADX INFO: compiled from: SerializersModule.kt */
    public static final class WithTypeArguments extends ContextualProvider {
        private final l<List<? extends KSerializer<?>>, KSerializer<?>> provider;

        public final l<List<? extends KSerializer<?>>, KSerializer<?>> getProvider() {
            return this.provider;
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        public KSerializer<?> invoke(List<? extends KSerializer<?>> list) {
            h.j(list, "typeArgumentsSerializers");
            return this.provider.invoke(list);
        }
    }

    private ContextualProvider() {
    }

    public abstract KSerializer<?> invoke(List<? extends KSerializer<?>> list);
}
