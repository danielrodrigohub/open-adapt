package t1;

import android.net.Uri;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

/* JADX INFO: compiled from: WorkTypeConverters.java */
/* JADX INFO: loaded from: classes.dex */
public final class u {
    /* JADX WARN: Code duplicated, block: B:49:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x005c: MOVE (r7 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:34:0x005b */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashSet, java.util.Set<k1.d$a>] */
    public static k1.d a(byte[] bArr) throws Throwable {
        ObjectInputStream objectInputStream;
        IOException e10;
        ObjectInputStream objectInputStream2;
        k1.d dVar = new k1.d();
        if (bArr == null) {
            return dVar;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream3 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    for (int i10 = objectInputStream.readInt(); i10 > 0; i10--) {
                        dVar.f9585a.add(new k1.d.a(Uri.parse(objectInputStream.readUTF()), objectInputStream.readBoolean()));
                    }
                    try {
                        objectInputStream.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                } catch (IOException e12) {
                    e10 = e12;
                    e10.printStackTrace();
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                objectInputStream3 = objectInputStream2;
                if (objectInputStream3 != null) {
                    try {
                        objectInputStream3.close();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                }
                try {
                    byteArrayInputStream.close();
                    throw th;
                } catch (IOException e15) {
                    e15.printStackTrace();
                    throw th;
                }
            }
        } catch (IOException e16) {
            objectInputStream = null;
            e10 = e16;
        } catch (Throwable th2) {
            th = th2;
            if (objectInputStream3 != null) {
                objectInputStream3.close();
            }
            byteArrayInputStream.close();
            throw th;
        }
        try {
            byteArrayInputStream.close();
        } catch (IOException e17) {
            e17.printStackTrace();
        }
        return dVar;
    }

    public static int b(int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 1) {
            return 2;
        }
        throw new IllegalArgumentException(a0.d.b("Could not convert ", i10, " to BackoffPolicy"));
    }

    public static k1.m c(int i10) {
        if (i10 == 0) {
            return k1.m.NOT_REQUIRED;
        }
        if (i10 == 1) {
            return k1.m.CONNECTED;
        }
        if (i10 == 2) {
            return k1.m.UNMETERED;
        }
        if (i10 == 3) {
            return k1.m.NOT_ROAMING;
        }
        if (i10 == 4) {
            return k1.m.METERED;
        }
        if (Build.VERSION.SDK_INT < 30 || i10 != 5) {
            throw new IllegalArgumentException(a0.d.b("Could not convert ", i10, " to NetworkType"));
        }
        return k1.m.TEMPORARILY_UNMETERED;
    }

    public static int d(int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 1) {
            return 2;
        }
        throw new IllegalArgumentException(a0.d.b("Could not convert ", i10, " to OutOfQuotaPolicy"));
    }

    public static k1.p e(int i10) {
        if (i10 == 0) {
            return k1.p.ENQUEUED;
        }
        if (i10 == 1) {
            return k1.p.RUNNING;
        }
        if (i10 == 2) {
            return k1.p.SUCCEEDED;
        }
        if (i10 == 3) {
            return k1.p.FAILED;
        }
        if (i10 == 4) {
            return k1.p.BLOCKED;
        }
        if (i10 == 5) {
            return k1.p.CANCELLED;
        }
        throw new IllegalArgumentException(a0.d.b("Could not convert ", i10, " to State"));
    }

    public static int f(k1.p pVar) {
        int iOrdinal = pVar.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        int i10 = 1;
        if (iOrdinal != 1) {
            i10 = 2;
            if (iOrdinal != 2) {
                i10 = 3;
                if (iOrdinal != 3) {
                    i10 = 4;
                    if (iOrdinal != 4) {
                        if (iOrdinal == 5) {
                            return 5;
                        }
                        throw new IllegalArgumentException("Could not convert " + pVar + " to int");
                    }
                }
            }
        }
        return i10;
    }
}
