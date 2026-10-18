package kotlinx.serialization.internal;

import kotlinx.serialization.SerializationException;
import p4.h;
import wd.b;

/* JADX INFO: compiled from: AbstractPolymorphicSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AbstractPolymorphicSerializerKt {
    public static final Void throwSubtypeNotRegistered(String str, b<?> bVar) {
        String strB;
        h.j(bVar, "baseClass");
        String str2 = "in the scope of '" + ((Object) bVar.a()) + '\'';
        if (str == null) {
            strB = h.B("Class discriminator was missing and no default polymorphic serializers were registered ", str2);
        } else {
            strB = "Class '" + ((Object) str) + "' is not registered for polymorphic serialization " + str2 + ".\nMark the base class as 'sealed' or register the serializer explicitly.";
        }
        throw new SerializationException(strB);
    }

    public static final Void throwSubtypeNotRegistered(b<?> bVar, b<?> bVar2) {
        h.j(bVar, "subClass");
        h.j(bVar2, "baseClass");
        String strA = bVar.a();
        if (strA == null) {
            strA = String.valueOf(bVar);
        }
        throwSubtypeNotRegistered(strA, bVar2);
        throw new fd.b();
    }
}
