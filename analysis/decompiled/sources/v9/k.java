package v9;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final fb.c f16664a;

    public k() {
        Annotation annotation;
        String strMinimumFirmwareVersion;
        Annotation[] annotations = getClass().getAnnotations();
        p4.h.i(annotations, "this::class.java.annotations");
        int length = annotations.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                annotation = null;
                break;
            }
            annotation = annotations[i10];
            p4.h.j(annotation, "<this>");
            Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
            p4.h.i(clsAnnotationType, "this as java.lang.annota…otation).annotationType()");
            if (p4.h.c(rd.x.a(clsAnnotationType), rd.x.a(n.class))) {
                break;
            } else {
                i10++;
            }
        }
        n nVar = annotation instanceof n ? (n) annotation : null;
        this.f16664a = (nVar == null || (strMinimumFirmwareVersion = nVar.minimumFirmwareVersion()) == null) ? new fb.c("1.1.0") : new fb.c(strMinimumFirmwareVersion);
    }

    public String c() {
        return "";
    }
}
