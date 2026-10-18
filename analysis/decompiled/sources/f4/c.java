package f4;

import k4.g;
import n3.s0;

/* JADX INFO: compiled from: MetadataDecoderFactory.java */
/* JADX INFO: loaded from: classes.dex */
public interface c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f7053a = new a();

    /* JADX INFO: compiled from: MetadataDecoderFactory.java */
    public class a implements c {
        @Override // f4.c
        public final boolean a(s0 s0Var) {
            String str = s0Var.f11687s;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override // f4.c
        public final b b(s0 s0Var) {
            String str = s0Var.f11687s;
            if (str != null) {
                str.hashCode();
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new g4.b();
                    case "application/x-icy":
                        return new j4.a();
                    case "application/id3":
                        return new g();
                    case "application/x-emsg":
                        return new h4.b();
                    case "application/x-scte35":
                        return new m4.c();
                }
            }
            throw new IllegalArgumentException(androidx.recyclerview.widget.d.c("Attempted to create decoder for unsupported MIME type: ", str));
        }
    }

    boolean a(s0 s0Var);

    b b(s0 s0Var);
}
