package kotlinx.serialization.json;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: compiled from: JsonNames.kt */
/* JADX INFO: loaded from: classes.dex */
@Target({})
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonNames {
    String[] names();
}
