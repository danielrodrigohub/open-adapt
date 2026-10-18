package pd;

import androidx.appcompat.widget.o;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import p4.h;
import q.g;
import xd.d;

/* JADX INFO: compiled from: FileTreeWalk.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements d<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f13424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13426c;

    /* JADX INFO: compiled from: FileTreeWalk.kt */
    public static abstract class a extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(File file) {
            super(file);
            h.j(file, "rootDir");
        }
    }

    /* JADX INFO: renamed from: pd.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FileTreeWalk.kt */
    public final class C0235b extends gd.b<File> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ArrayDeque<c> f13427j;

        /* JADX INFO: renamed from: pd.b$b$a */
        /* JADX INFO: compiled from: FileTreeWalk.kt */
        public final class a extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f13429b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public File[] f13430c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f13431d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f13432e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ C0235b f13433f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(C0235b c0235b, File file) {
                super(file);
                h.j(file, "rootDir");
                this.f13433f = c0235b;
            }

            @Override // pd.b.c
            public final File a() {
                if (!this.f13432e && this.f13430c == null) {
                    Objects.requireNonNull(b.this);
                    File[] fileArrListFiles = this.f13439a.listFiles();
                    this.f13430c = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        Objects.requireNonNull(b.this);
                        this.f13432e = true;
                    }
                }
                File[] fileArr = this.f13430c;
                if (fileArr != null) {
                    int i10 = this.f13431d;
                    h.g(fileArr);
                    if (i10 < fileArr.length) {
                        File[] fileArr2 = this.f13430c;
                        h.g(fileArr2);
                        int i11 = this.f13431d;
                        this.f13431d = i11 + 1;
                        return fileArr2[i11];
                    }
                }
                if (this.f13429b) {
                    Objects.requireNonNull(b.this);
                    return null;
                }
                this.f13429b = true;
                return this.f13439a;
            }
        }

        /* JADX INFO: renamed from: pd.b$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FileTreeWalk.kt */
        public final class C0236b extends c {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f13434b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0236b(File file) {
                super(file);
                h.j(file, "rootFile");
            }

            @Override // pd.b.c
            public final File a() {
                if (this.f13434b) {
                    return null;
                }
                this.f13434b = true;
                return this.f13439a;
            }
        }

        /* JADX INFO: renamed from: pd.b$b$c */
        /* JADX INFO: compiled from: FileTreeWalk.kt */
        public final class c extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f13435b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public File[] f13436c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f13437d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ C0235b f13438e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(C0235b c0235b, File file) {
                super(file);
                h.j(file, "rootDir");
                this.f13438e = c0235b;
            }

            /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
            
                if (r0.length == 0) goto L22;
             */
            @Override // pd.b.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final File a() {
                if (!this.f13435b) {
                    Objects.requireNonNull(b.this);
                    this.f13435b = true;
                    return this.f13439a;
                }
                File[] fileArr = this.f13436c;
                if (fileArr != null) {
                    int i10 = this.f13437d;
                    h.g(fileArr);
                    if (i10 >= fileArr.length) {
                        Objects.requireNonNull(b.this);
                        return null;
                    }
                }
                if (this.f13436c == null) {
                    File[] fileArrListFiles = this.f13439a.listFiles();
                    this.f13436c = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        Objects.requireNonNull(b.this);
                    }
                    File[] fileArr2 = this.f13436c;
                    if (fileArr2 != null) {
                        h.g(fileArr2);
                    }
                    Objects.requireNonNull(b.this);
                    return null;
                }
                File[] fileArr3 = this.f13436c;
                h.g(fileArr3);
                int i11 = this.f13437d;
                this.f13437d = i11 + 1;
                return fileArr3[i11];
            }
        }

        public C0235b() {
            ArrayDeque<c> arrayDeque = new ArrayDeque<>();
            this.f13427j = arrayDeque;
            if (b.this.f13424a.isDirectory()) {
                arrayDeque.push(a(b.this.f13424a));
            } else if (b.this.f13424a.isFile()) {
                arrayDeque.push(new C0236b(b.this.f13424a));
            } else {
                this.f8053h = 3;
            }
        }

        public final a a(File file) {
            int iA = g.a(b.this.f13425b);
            if (iA == 0) {
                return new c(this, file);
            }
            if (iA == 1) {
                return new a(this, file);
            }
            throw new j2.a();
        }
    }

    /* JADX INFO: compiled from: FileTreeWalk.kt */
    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final File f13439a;

        public c(File file) {
            h.j(file, "root");
            this.f13439a = file;
        }

        public abstract File a();
    }

    public b(File file) {
        o.d(2, "direction");
        this.f13424a = file;
        this.f13425b = 2;
        this.f13426c = Integer.MAX_VALUE;
    }

    @Override // xd.d
    public final Iterator<File> iterator() {
        return new C0235b();
    }
}
