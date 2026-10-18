.class public final Lkotlinx/coroutines/internal/FastServiceLoaderKt;
.super Ljava/lang/Object;
.source "FastServiceLoader.kt"


# static fields
.field private static final ANDROID_DETECTED:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v0, v0, Lfd/f$a;

    xor-int/lit8 v0, v0, 0x1

    .line 3
    sput-boolean v0, Lkotlinx/coroutines/internal/FastServiceLoaderKt;->ANDROID_DETECTED:Z

    return-void
.end method

.method public static final getANDROID_DETECTED()Z
    .locals 1

    sget-boolean v0, Lkotlinx/coroutines/internal/FastServiceLoaderKt;->ANDROID_DETECTED:Z

    return v0
.end method
