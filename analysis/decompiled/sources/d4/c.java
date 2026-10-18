package d4;

import java.io.IOException;
import m5.p;
import m5.w;
import n3.i1;
import s3.i;

/* JADX INFO: compiled from: WavHeaderReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: compiled from: WavHeaderReader.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6034a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f6035b;

        public a(int i10, long j10) {
            this.f6034a = i10;
            this.f6035b = j10;
        }

        public static a a(i iVar, w wVar) throws IOException {
            iVar.s(wVar.f10475a, 0, 8);
            wVar.D(0);
            return new a(wVar.e(), wVar.j());
        }
    }

    public static boolean a(i iVar) throws IOException {
        w wVar = new w(8);
        int i10 = a.a(iVar, wVar).f6034a;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        iVar.s(wVar.f10475a, 0, 4);
        wVar.D(0);
        int iE = wVar.e();
        if (iE == 1463899717) {
            return true;
        }
        p.c("WavHeaderReader", "Unsupported form type: " + iE);
        return false;
    }

    public static a b(int i10, i iVar, w wVar) throws IOException {
        a aVarA = a.a(iVar, wVar);
        while (aVarA.f6034a != i10) {
            StringBuilder sbC = a0.b.c("Ignoring unknown WAV chunk: ");
            sbC.append(aVarA.f6034a);
            p.g("WavHeaderReader", sbC.toString());
            long j10 = aVarA.f6035b + 8;
            if (j10 > 2147483647L) {
                StringBuilder sbC2 = a0.b.c("Chunk is too large (~2GB+) to skip; id: ");
                sbC2.append(aVarA.f6034a);
                throw i1.c(sbC2.toString());
            }
            iVar.k((int) j10);
            aVarA = a.a(iVar, wVar);
        }
        return aVarA;
    }
}
