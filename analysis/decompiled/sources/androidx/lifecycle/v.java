package androidx.lifecycle;

/* JADX INFO: compiled from: MutableLiveData.java */
/* JADX INFO: loaded from: classes.dex */
public class v<T> extends LiveData<T> {
    @Override // androidx.lifecycle.LiveData
    public void h(T t10) {
        LiveData.a("setValue");
        this.f2107g++;
        this.f2105e = t10;
        c(null);
    }
}
