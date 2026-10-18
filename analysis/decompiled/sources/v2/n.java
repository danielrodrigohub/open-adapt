package v2;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: ModelLoader.java */
/* JADX INFO: loaded from: classes.dex */
public interface n<Model, Data> {

    /* JADX INFO: compiled from: ModelLoader.java */
    public static class a<Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p2.f f16174a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<p2.f> f16175b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.bumptech.glide.load.data.d<Data> f16176c;

        public a(p2.f fVar, com.bumptech.glide.load.data.d<Data> dVar) {
            List<p2.f> listEmptyList = Collections.emptyList();
            Objects.requireNonNull(fVar, "Argument must not be null");
            this.f16174a = fVar;
            Objects.requireNonNull(listEmptyList, "Argument must not be null");
            this.f16175b = listEmptyList;
            Objects.requireNonNull(dVar, "Argument must not be null");
            this.f16176c = dVar;
        }
    }

    a<Data> a(Model model, int i10, int i11, p2.h hVar);

    boolean b(Model model);
}
