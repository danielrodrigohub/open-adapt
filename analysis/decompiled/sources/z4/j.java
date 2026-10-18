package z4;

import n3.s0;

/* JADX INFO: compiled from: SubtitleDecoderFactory.java */
/* JADX INFO: loaded from: classes.dex */
public interface j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f19339a = new a();

    /* JADX INFO: compiled from: SubtitleDecoderFactory.java */
    public class a implements j {
        public final h a(s0 s0Var) {
            String str = s0Var.f11687s;
            if (str != null) {
                str.hashCode();
                switch (str) {
                    case "application/dvbsubs":
                        return new b5.a(s0Var.f11689u);
                    case "application/pgs":
                        return new c5.a();
                    case "application/x-mp4-vtt":
                        return new i5.a();
                    case "text/vtt":
                        return new i5.h();
                    case "application/x-quicktime-tx3g":
                        return new h5.a(s0Var.f11689u);
                    case "text/x-ssa":
                        return new e5.a(s0Var.f11689u);
                    case "application/x-mp4-cea-608":
                    case "application/cea-608":
                        return new a5.a(str, s0Var.K);
                    case "text/x-exoplayer-cues":
                        return new d();
                    case "application/cea-708":
                        return new a5.c(s0Var.K, s0Var.f11689u);
                    case "application/x-subrip":
                        return new f5.a();
                    case "application/ttml+xml":
                        return new g5.c();
                }
            }
            throw new IllegalArgumentException(androidx.recyclerview.widget.d.c("Attempted to create decoder for unsupported MIME type: ", str));
        }

        public final boolean b(s0 s0Var) {
            String str = s0Var.f11687s;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str) || "text/x-exoplayer-cues".equals(str);
        }
    }
}
