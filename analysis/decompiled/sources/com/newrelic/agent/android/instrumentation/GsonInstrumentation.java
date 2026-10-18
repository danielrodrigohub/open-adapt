package com.newrelic.agent.android.instrumentation;

import androidx.lifecycle.o;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.tracing.TraceMachine;
import e7.h;
import e7.l;
import e7.m;
import e7.n;
import e7.s;
import h7.f;
import java.io.Reader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class GsonInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList(AnalyticsAttribute.EVENT_CATEGORY_ATTRIBUTE, MetricCategory.class.getName(), "JSON"));

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(h hVar, String str, Class<T> cls) throws s {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t10 = (T) hVar.d(str, cls);
        TraceMachine.exitMethod();
        return t10;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static String toJson(h hVar, Object obj) {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        String strJ = hVar.j(obj);
        TraceMachine.exitMethod();
        return strJ;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(h hVar, String str, Type type) throws s {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t10 = (T) hVar.e(str, type);
        TraceMachine.exitMethod();
        return t10;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static String toJson(h hVar, Object obj, Type type) {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        Objects.requireNonNull(hVar);
        StringWriter stringWriter = new StringWriter();
        toJson(hVar, obj, type, stringWriter);
        String string = stringWriter.toString();
        TraceMachine.exitMethod();
        return string;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(h hVar, Reader reader, Class<T> cls) throws s, m {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        JsonReader jsonReaderH = hVar.h(reader);
        Object objFromJson = fromJson(hVar, jsonReaderH, cls);
        h.a(objFromJson, jsonReaderH);
        T t10 = (T) o.S(cls).cast(objFromJson);
        TraceMachine.exitMethod();
        return t10;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(h hVar, Object obj, Appendable appendable) throws m {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        Objects.requireNonNull(hVar);
        if (obj != null) {
            toJson(hVar, obj, obj.getClass(), appendable);
        } else {
            toJson(hVar, (l) n.f6541a, appendable);
        }
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(h hVar, Reader reader, Type type) throws s, m {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        JsonReader jsonReaderH = hVar.h(reader);
        T t10 = (T) fromJson(hVar, jsonReaderH, type);
        h.a(t10, jsonReaderH);
        TraceMachine.exitMethod();
        return t10;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(h hVar, Object obj, Type type, Appendable appendable) throws m {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        hVar.n(obj, type, appendable);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(h hVar, JsonReader jsonReader, Type type) throws s, m {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t10 = (T) hVar.c(jsonReader, type);
        TraceMachine.exitMethod();
        return t10;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(h hVar, Object obj, Type type, JsonWriter jsonWriter) throws m {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        hVar.m(obj, type, jsonWriter);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(h hVar, l lVar, Class<T> cls) throws s {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        Objects.requireNonNull(hVar);
        T t10 = (T) o.S(cls).cast(fromJson(hVar, lVar, (Type) cls));
        TraceMachine.exitMethod();
        return t10;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static String toJson(h hVar, l lVar) {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        Objects.requireNonNull(hVar);
        StringWriter stringWriter = new StringWriter();
        toJson(hVar, lVar, (Appendable) stringWriter);
        String string = stringWriter.toString();
        TraceMachine.exitMethod();
        return string;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(h hVar, l lVar, Type type) throws s {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        Objects.requireNonNull(hVar);
        T t10 = lVar == null ? null : (T) fromJson(hVar, new f(lVar), type);
        TraceMachine.exitMethod();
        return t10;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(h hVar, l lVar, Appendable appendable) throws m {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        hVar.l(lVar, appendable);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(h hVar, l lVar, JsonWriter jsonWriter) throws m {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        hVar.k(lVar, jsonWriter);
        TraceMachine.exitMethod();
    }
}
