package androidx.work;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import k1.l;

/* JADX INFO: compiled from: Data.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f3049b = l.e("Data");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f3050c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, Object> f3051a;

    /* JADX INFO: compiled from: Data.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Map<String, Object> f3052a = new HashMap();

        public final b a() throws Throwable {
            b bVar = new b((Map<String, ?>) this.f3052a);
            b.b(bVar);
            return bVar;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final a b(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value == null) {
                    this.f3052a.put(key, null);
                } else {
                    Class<?> cls = value.getClass();
                    if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                        this.f3052a.put(key, value);
                    } else {
                        int i10 = 0;
                        if (cls == boolean[].class) {
                            Map<String, Object> map2 = this.f3052a;
                            boolean[] zArr = (boolean[]) value;
                            String str = b.f3049b;
                            Boolean[] boolArr = new Boolean[zArr.length];
                            while (i10 < zArr.length) {
                                boolArr[i10] = Boolean.valueOf(zArr[i10]);
                                i10++;
                            }
                            map2.put(key, boolArr);
                        } else if (cls == byte[].class) {
                            Map<String, Object> map3 = this.f3052a;
                            byte[] bArr = (byte[]) value;
                            String str2 = b.f3049b;
                            Byte[] bArr2 = new Byte[bArr.length];
                            while (i10 < bArr.length) {
                                bArr2[i10] = Byte.valueOf(bArr[i10]);
                                i10++;
                            }
                            map3.put(key, bArr2);
                        } else if (cls == int[].class) {
                            Map<String, Object> map4 = this.f3052a;
                            int[] iArr = (int[]) value;
                            String str3 = b.f3049b;
                            Integer[] numArr = new Integer[iArr.length];
                            while (i10 < iArr.length) {
                                numArr[i10] = Integer.valueOf(iArr[i10]);
                                i10++;
                            }
                            map4.put(key, numArr);
                        } else if (cls == long[].class) {
                            Map<String, Object> map5 = this.f3052a;
                            long[] jArr = (long[]) value;
                            String str4 = b.f3049b;
                            Long[] lArr = new Long[jArr.length];
                            while (i10 < jArr.length) {
                                lArr[i10] = Long.valueOf(jArr[i10]);
                                i10++;
                            }
                            map5.put(key, lArr);
                        } else if (cls == float[].class) {
                            Map<String, Object> map6 = this.f3052a;
                            float[] fArr = (float[]) value;
                            String str5 = b.f3049b;
                            Float[] fArr2 = new Float[fArr.length];
                            while (i10 < fArr.length) {
                                fArr2[i10] = Float.valueOf(fArr[i10]);
                                i10++;
                            }
                            map6.put(key, fArr2);
                        } else {
                            if (cls != double[].class) {
                                throw new IllegalArgumentException(String.format("Key %s has invalid type %s", key, cls));
                            }
                            Map<String, Object> map7 = this.f3052a;
                            double[] dArr = (double[]) value;
                            String str6 = b.f3049b;
                            Double[] dArr2 = new Double[dArr.length];
                            while (i10 < dArr.length) {
                                dArr2[i10] = Double.valueOf(dArr[i10]);
                                i10++;
                            }
                            map7.put(key, dArr2);
                        }
                    }
                }
            }
            return this;
        }
    }

    static {
        b bVar = new b(new HashMap());
        b(bVar);
        f3050c = bVar;
    }

    public b() {
    }

    /* JADX WARN: Code duplicated, block: B:54:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static b a(byte[] bArr) throws Throwable {
        Throwable th;
        ObjectInputStream objectInputStream;
        Throwable e10;
        if (bArr.length > 10240) {
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        }
        HashMap map = new HashMap();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        for (int i10 = objectInputStream.readInt(); i10 > 0; i10--) {
                            map.put(objectInputStream.readUTF(), objectInputStream.readObject());
                        }
                        try {
                            objectInputStream.close();
                        } catch (IOException e11) {
                            Log.e(f3049b, "Error in Data#fromByteArray: ", e11);
                        }
                        byteArrayInputStream.close();
                    } catch (IOException e12) {
                        e10 = e12;
                        Log.e(f3049b, "Error in Data#fromByteArray: ", e10);
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e13) {
                                Log.e(f3049b, "Error in Data#fromByteArray: ", e13);
                            }
                        }
                        byteArrayInputStream.close();
                    } catch (ClassNotFoundException e14) {
                        e10 = e14;
                        Log.e(f3049b, "Error in Data#fromByteArray: ", e10);
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        byteArrayInputStream.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (0 != 0) {
                        try {
                            objectInputStream2.close();
                        } catch (IOException e15) {
                            Log.e(f3049b, "Error in Data#fromByteArray: ", e15);
                        }
                    }
                    try {
                        byteArrayInputStream.close();
                        throw th;
                    } catch (IOException e16) {
                        Log.e(f3049b, "Error in Data#fromByteArray: ", e16);
                        throw th;
                    }
                }
            } catch (IOException e17) {
                e = e17;
                Throwable th3 = e;
                objectInputStream = null;
                e10 = th3;
                Log.e(f3049b, "Error in Data#fromByteArray: ", e10);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                byteArrayInputStream.close();
                return new b(map);
            } catch (ClassNotFoundException e18) {
                e = e18;
                Throwable th4 = e;
                objectInputStream = null;
                e10 = th4;
                Log.e(f3049b, "Error in Data#fromByteArray: ", e10);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                byteArrayInputStream.close();
                return new b(map);
            } catch (Throwable th5) {
                th = th5;
                if (0 != 0) {
                    objectInputStream2.close();
                }
                byteArrayInputStream.close();
                throw th;
            }
        } catch (IOException e19) {
            Log.e(f3049b, "Error in Data#fromByteArray: ", e19);
        }
        return new b(map);
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public static byte[] b(b bVar) throws Throwable {
        ObjectOutputStream objectOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeInt(bVar.f3051a.size());
                    for (Map.Entry entry : bVar.f3051a.entrySet()) {
                        objectOutputStream.writeUTF((String) entry.getKey());
                        objectOutputStream.writeObject(entry.getValue());
                    }
                    try {
                        objectOutputStream.close();
                    } catch (IOException e10) {
                        Log.e(f3049b, "Error in Data#toByteArray: ", e10);
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e11) {
                        Log.e(f3049b, "Error in Data#toByteArray: ", e11);
                    }
                    if (byteArrayOutputStream.size() <= 10240) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                } catch (IOException e12) {
                    e = e12;
                    objectOutputStream2 = objectOutputStream;
                    Log.e(f3049b, "Error in Data#toByteArray: ", e);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (objectOutputStream2 != null) {
                        try {
                            objectOutputStream2.close();
                        } catch (IOException e13) {
                            Log.e(f3049b, "Error in Data#toByteArray: ", e13);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e14) {
                        Log.e(f3049b, "Error in Data#toByteArray: ", e14);
                    }
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e15) {
                            Log.e(f3049b, "Error in Data#toByteArray: ", e15);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (IOException e16) {
                        Log.e(f3049b, "Error in Data#toByteArray: ", e16);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                objectOutputStream = objectOutputStream2;
            }
        } catch (IOException e17) {
            e = e17;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        Set<String> setKeySet = this.f3051a.keySet();
        if (!setKeySet.equals(bVar.f3051a.keySet())) {
            return false;
        }
        for (String str : setKeySet) {
            Object obj2 = this.f3051a.get(str);
            Object obj3 = bVar.f3051a.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : ((obj2 instanceof Object[]) && (obj3 instanceof Object[])) ? Arrays.deepEquals((Object[]) obj2, (Object[]) obj3) : obj2.equals(obj3))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f3051a.hashCode() * 31;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Data {");
        if (!this.f3051a.isEmpty()) {
            for (String str : this.f3051a.keySet()) {
                sb2.append(str);
                sb2.append(" : ");
                Object obj = this.f3051a.get(str);
                if (obj instanceof Object[]) {
                    sb2.append(Arrays.toString((Object[]) obj));
                } else {
                    sb2.append(obj);
                }
                sb2.append(", ");
            }
        }
        sb2.append("}");
        return sb2.toString();
    }

    public b(b bVar) {
        this.f3051a = new HashMap(bVar.f3051a);
    }

    public b(Map<String, ?> map) {
        this.f3051a = new HashMap(map);
    }
}
