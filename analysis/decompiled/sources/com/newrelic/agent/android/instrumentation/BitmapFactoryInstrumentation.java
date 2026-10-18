package com.newrelic.agent.android.instrumentation;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.util.TypedValue;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.api.v1.Defaults;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.FileDescriptor;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class BitmapFactoryInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList(AnalyticsAttribute.EVENT_CATEGORY_ATTRIBUTE, MetricCategory.class.getName(), "IMAGE"));

    private BitmapFactoryInstrumentation() {
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeByteArray(byte[] bArr, int i10, int i11, BitmapFactory.Options options) {
        TraceMachine.enterMethod("BitmapFactory#decodeByteArray", categoryParams);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, i10, i11, options);
        TraceMachine.exitMethod();
        return bitmapDecodeByteArray;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeFile(String str, BitmapFactory.Options options) {
        TraceMachine.enterMethod("BitmapFactory#decodeFile", categoryParams);
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        TraceMachine.exitMethod();
        return bitmapDecodeFile;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor, Rect rect, BitmapFactory.Options options) {
        TraceMachine.enterMethod("BitmapFactory#decodeFileDescriptor", categoryParams);
        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, rect, options);
        TraceMachine.exitMethod();
        return bitmapDecodeFileDescriptor;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeResource(Resources resources, int i10, BitmapFactory.Options options) {
        TraceMachine.enterMethod("BitmapFactory#decodeResource", categoryParams);
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, i10, options);
        TraceMachine.exitMethod();
        return bitmapDecodeResource;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, Rect rect, BitmapFactory.Options options) {
        TraceMachine.enterMethod("BitmapFactory#decodeResourceStream", categoryParams);
        Bitmap bitmapDecodeResourceStream = BitmapFactory.decodeResourceStream(resources, typedValue, inputStream, rect, options);
        TraceMachine.exitMethod();
        return bitmapDecodeResourceStream;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeStream(InputStream inputStream, Rect rect, BitmapFactory.Options options) {
        TraceMachine.enterMethod("BitmapFactory#decodeStream", categoryParams);
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, rect, options);
        TraceMachine.exitMethod();
        return bitmapDecodeStream;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeByteArray(byte[] bArr, int i10, int i11) {
        TraceMachine.enterMethod("BitmapFactory#decodeByteArray", categoryParams);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, i10, i11);
        TraceMachine.exitMethod();
        return bitmapDecodeByteArray;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeFile(String str) {
        TraceMachine.enterMethod("BitmapFactory#decodeFile", categoryParams);
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        TraceMachine.exitMethod();
        return bitmapDecodeFile;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor) {
        TraceMachine.enterMethod("BitmapFactory#decodeFileDescriptor", categoryParams);
        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor);
        TraceMachine.exitMethod();
        return bitmapDecodeFileDescriptor;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeResource(Resources resources, int i10) {
        TraceMachine.enterMethod("BitmapFactory#decodeResource", categoryParams);
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, i10);
        TraceMachine.exitMethod();
        return bitmapDecodeResource;
    }

    @ReplaceCallSite(isStatic = Defaults.COLLECT_NETWORK_ERRORS, scope = "android.graphics.BitmapFactory")
    public static Bitmap decodeStream(InputStream inputStream) {
        TraceMachine.enterMethod("BitmapFactory#decodeStream", categoryParams);
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
        TraceMachine.exitMethod();
        return bitmapDecodeStream;
    }
}
