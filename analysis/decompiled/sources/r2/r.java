package r2;

import android.util.Log;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: GlideException.java */
/* JADX INFO: loaded from: classes.dex */
public final class r extends Exception {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final StackTraceElement[] f14372m = new StackTraceElement[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<Throwable> f14373h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p2.f f14374i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public p2.a f14375j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Class<?> f14376k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f14377l;

    public r(String str) {
        this(str, Collections.emptyList());
    }

    public static void b(List<Throwable> list, Appendable appendable) {
        try {
            c(list, appendable);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void c(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            a aVar = (a) appendable;
            aVar.append("Cause (");
            int i11 = i10 + 1;
            aVar.append(String.valueOf(i11));
            aVar.append(" of ");
            aVar.append(String.valueOf(size));
            aVar.append("): ");
            Throwable th = list.get(i10);
            if (th instanceof r) {
                ((r) th).f(appendable);
            } else {
                d(th, appendable);
            }
            i10 = i11;
        }
    }

    public static void d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public final void a(Throwable th, List<Throwable> list) {
        if (!(th instanceof r)) {
            list.add(th);
            return;
        }
        Iterator<Throwable> it = ((r) th).f14373h.iterator();
        while (it.hasNext()) {
            a(it.next(), list);
        }
    }

    public final void e() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            StringBuilder sbC = a0.b.c("Root cause (");
            int i11 = i10 + 1;
            sbC.append(i11);
            sbC.append(" of ");
            sbC.append(size);
            sbC.append(")");
            Log.i("Glide", sbC.toString(), (Throwable) arrayList.get(i10));
            i10 = i11;
        }
    }

    public final void f(Appendable appendable) {
        d(this, appendable);
        b(this.f14373h, new a(appendable));
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String string;
        String string2;
        StringBuilder sb2 = new StringBuilder(71);
        sb2.append(this.f14377l);
        String string3 = "";
        if (this.f14376k != null) {
            StringBuilder sbC = a0.b.c(", ");
            sbC.append(this.f14376k);
            string = sbC.toString();
        } else {
            string = "";
        }
        sb2.append(string);
        if (this.f14375j != null) {
            StringBuilder sbC2 = a0.b.c(", ");
            sbC2.append(this.f14375j);
            string2 = sbC2.toString();
        } else {
            string2 = "";
        }
        sb2.append(string2);
        if (this.f14374i != null) {
            StringBuilder sbC3 = a0.b.c(", ");
            sbC3.append(this.f14374i);
            string3 = sbC3.toString();
        }
        sb2.append(string3);
        ArrayList<Throwable> arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb2.toString();
        }
        if (arrayList.size() == 1) {
            sb2.append("\nThere was 1 root cause:");
        } else {
            sb2.append("\nThere were ");
            sb2.append(arrayList.size());
            sb2.append(" root causes:");
        }
        for (Throwable th : arrayList) {
            sb2.append('\n');
            sb2.append(th.getClass().getName());
            sb2.append('(');
            sb2.append(th.getMessage());
            sb2.append(')');
        }
        sb2.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb2.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        f(System.err);
    }

    public r(String str, List<Throwable> list) {
        this.f14377l = str;
        setStackTrace(f14372m);
        this.f14373h = list;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        f(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        f(printWriter);
    }

    /* JADX INFO: compiled from: GlideException.java */
    public static final class a implements Appendable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Appendable f14378h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f14379i = true;

        public a(Appendable appendable) {
            this.f14378h = appendable;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c10) throws IOException {
            if (this.f14379i) {
                this.f14379i = false;
                this.f14378h.append("  ");
            }
            this.f14379i = c10 == '\n';
            this.f14378h.append(c10);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            append(charSequence, 0, charSequence.length());
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence, int i10, int i11) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            boolean z10 = false;
            if (this.f14379i) {
                this.f14379i = false;
                this.f14378h.append("  ");
            }
            if (charSequence.length() > 0 && charSequence.charAt(i11 - 1) == '\n') {
                z10 = true;
            }
            this.f14379i = z10;
            this.f14378h.append(charSequence, i10, i11);
            return this;
        }
    }
}
