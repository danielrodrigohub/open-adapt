package kotlinx.serialization.internal;

import androidx.activity.k;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Polymorphic;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import p4.h;
import rd.x;
import wd.b;

/* JADX INFO: compiled from: Platform.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PlatformKt {
    private static final Object companionOrNull(Class<?> cls) {
        try {
            Field declaredField = cls.getDeclaredField("Companion");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final <T> KSerializer<T> compiledSerializerImpl(b<T> bVar) {
        h.j(bVar, "<this>");
        return constructSerializerForGivenTypeArgs(bVar, new KSerializer[0]);
    }

    public static final <T> KSerializer<T> constructSerializerForGivenTypeArgs(b<T> bVar, KSerializer<Object>... kSerializerArr) throws IllegalAccessException, InvocationTargetException {
        Field field;
        h.j(bVar, "<this>");
        h.j(kSerializerArr, "args");
        Class clsJ = k.j(bVar);
        if (clsJ.isEnum() && isNotAnnotated(clsJ)) {
            return createEnumSerializer(clsJ);
        }
        if (clsJ.isInterface()) {
            return interfaceSerializer(bVar);
        }
        KSerializer<T> kSerializerInvokeSerializerOnCompanion = invokeSerializerOnCompanion(clsJ, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        if (kSerializerInvokeSerializerOnCompanion != null) {
            return kSerializerInvokeSerializerOnCompanion;
        }
        KSerializer<T> kSerializerFindObjectSerializer = findObjectSerializer(clsJ);
        if (kSerializerFindObjectSerializer != null) {
            return kSerializerFindObjectSerializer;
        }
        KSerializer<T> kSerializer = null;
        try {
            Class<?>[] declaredClasses = clsJ.getDeclaredClasses();
            h.i(declaredClasses, "jClass.declaredClasses");
            int length = declaredClasses.length;
            int i10 = 0;
            Class<?> cls = null;
            boolean z10 = false;
            while (true) {
                if (i10 >= length) {
                    if (!z10) {
                        break;
                    }
                    break;
                }
                Class<?> cls2 = declaredClasses[i10];
                if (h.c(cls2.getSimpleName(), "$serializer")) {
                    if (!z10) {
                        z10 = true;
                        cls = cls2;
                    }
                }
                i10++;
                cls = null;
                break;
            }
            Class<?> cls3 = cls;
            Object obj = (cls3 == null || (field = cls3.getField("INSTANCE")) == null) ? null : field.get(null);
            if (obj instanceof KSerializer) {
                kSerializer = (KSerializer) obj;
            }
        } catch (NoSuchFieldException unused) {
        }
        return kSerializer != null ? kSerializer : polymorphicSerializer(bVar);
    }

    private static final <T> KSerializer<T> createEnumSerializer(Class<T> cls) {
        T[] enumConstants = cls.getEnumConstants();
        String canonicalName = cls.getCanonicalName();
        h.i(canonicalName, "canonicalName");
        Objects.requireNonNull(enumConstants, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>");
        return new EnumSerializer(canonicalName, (Enum[]) enumConstants);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0089  */
    private static final <T> KSerializer<T> findObjectSerializer(Class<T> cls) throws IllegalAccessException, InvocationTargetException {
        boolean z10;
        Field[] declaredFields = cls.getDeclaredFields();
        h.i(declaredFields, "jClass.declaredFields");
        int length = declaredFields.length;
        int i10 = 0;
        boolean z11 = false;
        Field field = null;
        while (true) {
            if (i10 >= length) {
                if (!z11) {
                    break;
                }
                break;
            }
            Field field2 = declaredFields[i10];
            if (h.c(field2.getName(), "INSTANCE") && h.c(field2.getType(), cls) && Modifier.isStatic(field2.getModifiers())) {
                if (!z11) {
                    z11 = true;
                    field = field2;
                }
            }
            i10++;
            field = null;
            break;
        }
        Field field3 = field;
        if (field3 == null) {
            return null;
        }
        Object obj = field3.get(null);
        Method[] methods = cls.getMethods();
        h.i(methods, "jClass.methods");
        int length2 = methods.length;
        int i11 = 0;
        boolean z12 = false;
        Method method = null;
        while (true) {
            if (i11 >= length2) {
                if (!z12) {
                    break;
                }
                break;
            }
            Method method2 = methods[i11];
            if (h.c(method2.getName(), "serializer")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                h.i(parameterTypes, "it.parameterTypes");
                if ((parameterTypes.length == 0) && h.c(method2.getReturnType(), KSerializer.class)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (z10) {
                if (!z12) {
                    z12 = true;
                    method = method2;
                }
            }
            i11++;
            method = null;
            break;
        }
        Method method3 = method;
        if (method3 == null) {
            return null;
        }
        Object objInvoke = method3.invoke(obj, new Object[0]);
        if (objInvoke instanceof KSerializer) {
            return (KSerializer) objInvoke;
        }
        return null;
    }

    private static final <T> KSerializer<T> interfaceSerializer(b<T> bVar) {
        Serializable serializable = (Serializable) k.j(bVar).getAnnotation(Serializable.class);
        if (serializable == null || h.c(x.a(serializable.with()), x.a(PolymorphicSerializer.class))) {
            return new PolymorphicSerializer(bVar);
        }
        return null;
    }

    private static final <T> KSerializer<T> invokeSerializerOnCompanion(Class<?> cls, KSerializer<Object>... kSerializerArr) throws IllegalAccessException, InvocationTargetException {
        Class[] clsArr;
        Object objCompanionOrNull = companionOrNull(cls);
        if (objCompanionOrNull == null) {
            return null;
        }
        try {
            if (kSerializerArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = kSerializerArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i10 = 0; i10 < length; i10++) {
                    clsArr2[i10] = KSerializer.class;
                }
                clsArr = clsArr2;
            }
            Object objInvoke = objCompanionOrNull.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(objCompanionOrNull, Arrays.copyOf(kSerializerArr, kSerializerArr.length));
            if (objInvoke instanceof KSerializer) {
                return (KSerializer) objInvoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e10) {
            Throwable cause = e10.getCause();
            if (cause == null) {
                throw e10;
            }
            String message = cause.getMessage();
            if (message == null) {
                message = e10.getMessage();
            }
            throw new InvocationTargetException(cause, message);
        }
    }

    public static final boolean isInstanceOf(Object obj, b<?> bVar) {
        h.j(obj, "<this>");
        h.j(bVar, "kclass");
        return k.k(bVar).isInstance(obj);
    }

    private static final <T> boolean isNotAnnotated(Class<T> cls) {
        return cls.getAnnotation(Serializable.class) == null && cls.getAnnotation(Polymorphic.class) == null;
    }

    public static final boolean isReferenceArray(b<Object> bVar) {
        h.j(bVar, "rootClass");
        return k.j(bVar).isArray();
    }

    public static final Void platformSpecificSerializerNotRegistered(b<?> bVar) {
        h.j(bVar, "<this>");
        Platform_commonKt.serializerNotRegistered(bVar);
        throw new fd.b();
    }

    private static final <T> KSerializer<T> polymorphicSerializer(b<T> bVar) {
        Class clsJ = k.j(bVar);
        if (clsJ.getAnnotation(Polymorphic.class) != null) {
            return new PolymorphicSerializer(bVar);
        }
        Serializable serializable = (Serializable) clsJ.getAnnotation(Serializable.class);
        if (serializable == null || !h.c(x.a(serializable.with()), x.a(PolymorphicSerializer.class))) {
            return null;
        }
        return new PolymorphicSerializer(bVar);
    }

    public static final <T, E extends T> E[] toNativeArrayImpl(ArrayList<E> arrayList, b<T> bVar) {
        h.j(arrayList, "<this>");
        h.j(bVar, "eClass");
        Object objNewInstance = Array.newInstance((Class<?>) k.j(bVar), arrayList.size());
        Objects.requireNonNull(objNewInstance, "null cannot be cast to non-null type kotlin.Array<E of kotlinx.serialization.internal.PlatformKt.toNativeArrayImpl>");
        E[] eArr = (E[]) arrayList.toArray((Object[]) objNewInstance);
        h.i(eArr, "toArray(java.lang.reflect.Array.newInstance(eClass.java, size) as Array<E>)");
        return eArr;
    }
}
