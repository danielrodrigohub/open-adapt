.class public final Lj7/a;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# direct methods
.method public static a(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected IllegalAccessException occurred (Gson 2.9.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(I)I
    .locals 1

    const/high16 v0, 0x10000

    rem-int/2addr p0, v0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, v0

    :goto_0
    return p0
.end method
